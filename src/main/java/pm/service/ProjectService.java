package pm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pm.dao.DashboardDao;
import pm.dao.GanttDao;
import pm.dao.MemberDao;
import pm.vo.Gantt;
import pm.vo.Member;

@Service
public class ProjectService {
	@Autowired(required=false)
	private GanttDao dao;
	@Autowired(required=false)
	private MemberDao mdao;
	@Autowired(required=false)
	private DashboardDao dbdao;
	
	public List<Gantt> getParentGantt(Gantt sch) {
		return dao.getParentGantt(sch);
	};
	
	public Gantt getProject(int id) {
		return dao.getProject(id);
	}
	
	// 프로젝트 등록
	public void insertProject(Gantt ins) {
		dao.insertProject(ins);
	}
	
	// 프로젝트 수정
	public void updateParentGantt(Gantt sch) {
		dao.updateParentGantt(sch);
	}
	
	// 프로젝트 삭제
	public void deleteProject(int id) {
		dao.deleteGantt(id);
	}
	
	// 프로젝트 프로그레스
	public List<Gantt> getProgress(int id) {
		return dao.getProgress(id);
	}
	
	
	// 멤버 리스트 
	public List<Member> memberlist(Member sch){
		return mdao.memberlist(sch);
	}
	
	// 프로젝트 개수
	public int countAllProject() {
		return dao.countAllProject();
	}
	public int countReqProject() {
		return dao.countReqProject();
	}
	public int countProProject() {
		return dao.countProProject();
	}
	public int countComProject() {
		return dao.countComProject();
	}
	public int countFeedProject() {
		return dao.countFeedProject();
	}
	

}
