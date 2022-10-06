package pm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import pm.vo.Member;

// pm.dao.MemberDao
@Repository
public interface MemberDao {
	public List<Member> memberlist(Member sch); // 멤버 리스트 및 검색
	
	public Member memberlist2(Member sch); // 멤버 리스트 및 검색
	
	public Member getMemberDetail(int no); // 상세
	
	public void updateMember(Member upt); // 수정
	
	public List<Member> getDept(Member getDept); // 부서명
	
	public void deleteMember(int no); // 삭제
	
	public void insertMember(Member ins); // 등록
	
	public List<Member> orgGroup(Member gro); // 그룹 정보
	
	public List<Member> groupList(Member dept); // 부서 인원수
	
	public void createDept(Member deptins); // 부서 생성
	
	public Member getdetailDept(int deptno); // 부서 상세
	
	public void updateDept(Member uptDept); // 부서 수정
	
	public void deleteDept(int deptno); // 부서 삭제
	
	public int getId(String id); // 아이디 중복 검사 getId

	
	
	
	

}
