package pm.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import pm.dao.IssueDao;
import pm.vo.Gantt;
import pm.vo.Issue;
import pm.vo.IssueFile;
import pm.vo.IssueSch;

@Service
public class IssueService {
	@Autowired(required = false)
	private IssueDao dao;

	public List<Issue> issueList(Issue sch) {
		return dao.issueList(sch);
	}

	// 파일서버 정보(공통정보)
	@Value("${upload}")
	private String path;

	public void insertIssue(Issue ins) {
		MultipartFile mpf = ins.getReport();
		String fname = mpf.getOriginalFilename();

		File f = new File(path + fname);
		try {
			mpf.transferTo(f);
			System.out.println("파일업로드 완성");
			// IO(input/output)일어나는 경우에는 일반적으로 필수예외처리(compile예외처리)
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		dao.insertIssue(ins); // 기본정보가 등록 key(no)
		dao.insertFile(new IssueFile(path, fname)); // 위 게시물의 key를 가져와서 파일정보에 등록

		// insert into boardfile values(board_seq.currval,
		// #{path}, #{fname}, sysdate, sysdate, '')

	}

	public Issue getIssueDetail(int no) {

		// 조회 카운트업
		dao.readCountup(no);

		// 상세 내용을 VO로 가져오기..
		return dao.getIssueDetail(no);
	}

	public Issue updateIssue(Issue upt) {
		dao.updateIssue(upt); // 수정과 함께 수정된 상세 데이터
		return dao.getIssueDetail(upt.getIssue_no());
	}

	public void deleteIssue(int no) {
		dao.deleteIssue(no);
	}

	public List<Gantt> userProject(Gantt sch) {
		return dao.userProject(sch);
	}
}
