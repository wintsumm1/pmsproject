package pm.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pm.dao.LoginDao;
import pm.vo.Member;



@Service
public class LoginService {
	@Autowired(required=false) 
	private  LoginDao dao;
	
	public List<Member> getLoginList(Member sch){
		return dao.getLoginList(sch);
	}
	
	public void LoginInsert(Member ins) {
		dao.LoginInsert(ins);
	}
	
	public Member ck(Member sch) {
		
		return dao.ck(sch);
	}
	
	public String pwCheck(String memberId) {
		return dao.pwCheck(memberId);
	}
	
	//메일 비밀번호 수정
	public void pwUpdate(Member member) {
		dao.pwUpdate(member);
	}
	
	//이미지 수정
		public void imgupdate(Member member) {
			dao.imgupdate(member);
		}
	//비밀번호 수정
	public void pwUpdate2(Member member) {
		dao.pwUpdate2(member);
	}
	
	//아이디 비교
	public int getMemberList(String id) {
		return dao.getMemberList(id);
	}
	/*
	
	/*
public void register(Member ins) {
		
		dao.register(ins);
	}
	
	public int checkEmail(String email) {
		return dao.checkEmail(email);
	}
	
	public Member memberLogin(Member m){
		return dao.memberLogin(m);
	}
	*/

	public Member getMemberDetail(int mid) {
		return dao.getMemberDetail(mid);
	}
	
	public void authorize(Member upt) {
		dao.authorize(upt);
	}
	
	public void deleteMember(int mid) {
		dao.deleteMember(mid);
	}
	
	public String getMemberName(Member sch) {
		return dao.getMemberName(sch);
	}
	



}

	

