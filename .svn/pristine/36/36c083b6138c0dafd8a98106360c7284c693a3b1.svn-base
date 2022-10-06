package pm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import pm.vo.Member;


@Repository
public interface LoginDao {
	public List<Member> getLoginList(Member sch); //로그인
	
	public void LoginInsert(Member ins); //회원입력(쓸지안쓸지 고민중)
	
	public Member ck(Member m);	//아이디 비밀번호 입력

	public String pwCheck(String memberId); //비밀번호 체크
	public String pwUpdate(Member member); //이메일 비밀번호 수정
	
	public void pwUpdate2(Member member); //비밀번호 수정
	public int getMemberList(String id); //아이디 중복 비교
	
	public void imgupdate(Member member); //이미지 수정
	
	
	public Member getMemberDetail(int mid);
	public void register(Member ins);
	public int checkEmail(String email);
	public Member memberLogin(Member m);
	public void authorize(Member upt);
	public void deleteMember(int mid);
	public void uptEmpnoAndPassword(Member upt);
	public void recoverPassword(Member upt);
	public String getMemberName(Member sch);
	
	
	
	
}

