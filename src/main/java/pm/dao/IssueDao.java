package pm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import pm.vo.Gantt;
import pm.vo.Issue;
import pm.vo.IssueFile;
import pm.vo.IssueSch;

@Repository
public interface IssueDao {
	public int totCnt(IssueSch sch);

	public List<Issue> issueList(Issue sch);

	public void insertIssue(Issue ins);

	public Issue getIssueDetail(int no);

	public void readCountup(int no);

	public void updateIssue(Issue upt);

	public void deleteIssue(int no);
	
	public void insertFile(IssueFile file);
	
	public List<Gantt> userProject(Gantt sch);
}
