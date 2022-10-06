package pm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pm.dao.DashboardDao;
import pm.dao.GanttDao;
import pm.dao.MemberDao;
import pm.dao.RiskDao;
import pm.vo.Gantt;
import pm.vo.History;
import pm.vo.Member;
import pm.vo.RiskSch;

@Service
public class MainService {
	@Autowired(required = false)
	private MemberDao dao;
	@Autowired(required = false)
	private GanttDao dao2;
	@Autowired(required=false)
	private RiskDao rdao;
	@Autowired(required=false)
	DashboardDao dbdao;
	
	// 리스크 개수
	public int totCnt(RiskSch sch) {
		return rdao.totCnt(sch);
	}
	public int hugaCnt(RiskSch sch) {
		return rdao.hugaCnt(sch);
	}
	public int sickCnt(RiskSch sch) {
		return rdao.sickCnt(sch);
	}
	public int etcCnt(RiskSch sch) {
		return rdao.etcCnt(sch);
	}
	public int perCnt(RiskSch sch) {
		return rdao.perCnt(sch);
	}
	
	// 멤버 리스트
	public List<Member> memberlist(Member sch){
		return dao.memberlist(sch);
	}
	
	// 프로젝트 리스트
	public List<Gantt> getParentGantt(Gantt sch) {
		return dao2.getParentGantt(sch);
	};
	
	// 프로젝트 개수
	public int countAllProject() {
		return dao2.countAllProject();
	}
	public int countReqProject() {
		return dao2.countReqProject();
	}
	public int countProProject() {
		return dao2.countProProject();
	}
	public int countComProject() {
		return dao2.countComProject();
	}
	public int countFeedProject() {
		return dao2.countFeedProject();
	}
	
	// 대분류 프로젝트 개수
	public int countParentReq() {
		return dao2.countParentReq();
	}
	public int countParentProc() {
		return dao2.countParentProc();
	}
	public int countParentComp() {
		return dao2.countParentComp();
	}
	public int countParentFdback() {
		return dao2.countParentFdback();
	}
	
	// 인력 배정 수
	public int getManpower() {
		return dbdao.getManpower();
	}
	// 전체 멤버 수
	public int getMemberCnt() {
		return dbdao.getMemberCnt();
	}
	
	// 히스토리
	public List<History> getHistory(){
		return dbdao.getHistory();
	}
	public void insertHistroy(History ins) {
		dbdao.insertHistroy(ins);
	}
	
	// 메인대시보드용 프로젝트
	public List<Gantt> getMainPrj(){
		return dao2.getMainPrj();
	}
}
