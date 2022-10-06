package pm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pm.dao.MemberDao;
import pm.vo.Member;

@Service
public class MemberService {
	@Autowired(required = false)
	private MemberDao dao;
	public List<Member> memberlist(Member sch){
		return dao.memberlist(sch);
	}
	public Member memberlist2(Member sch){
		return dao.memberlist2(sch);
	}
	// 사원 상세
	public Member getMemberDetail(int no) {
		return dao.getMemberDetail(no);
	}

	// 사원 수정
	public Member updateMember(Member upt) {
		dao.updateMember(upt);
		return dao.getMemberDetail(upt.getNo());
	}
	// 멤버 삭제
	public void deleteMember(int no) {
		dao.deleteMember(no);
	}
	// 멤버 추가
	public void insertMember(Member ins) {
		dao.insertMember(ins);
	}
	// 부서명 가져오기
	public List<Member> getDept(Member getDept){
		return dao.getDept(getDept);
	}
	// admin 가져오기
	public List<Member> orgGroup(Member gro){
		return dao.orgGroup(gro);
	}
	// 그룹 리스트
	public List<Member> groupList(Member dept){
		return dao.groupList(dept);
	}
	// 부서 생성
	public void createDept(Member deptins) {
		dao.createDept(deptins);
	}
	// 부서 상세
	public Member getdetailDept(int deptno) {
		return dao.getdetailDept(deptno);
	}
	//부서 수정
	public Member updateDept(Member uptDept) {
		dao.updateDept(uptDept);
		return dao.getdetailDept(uptDept.getDeptno());
	}
	// 부서 삭제
	public void deleteDept(int deptno) {
		dao.deleteDept(deptno);
	}
	// 아이디 중복 검사 getId
	public int getId(String id) {
		return dao.getId(id);
	}



}
