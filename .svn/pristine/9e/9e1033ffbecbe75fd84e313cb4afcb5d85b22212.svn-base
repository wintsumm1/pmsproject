package pm.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pm.service.MainService;
import pm.service.MemberService;
import pm.vo.History;
import pm.vo.Mail;
import pm.vo.Member;

@Controller
public class MemberController {
	@Autowired(required=false)
	private MemberService service;
	@Autowired(required=false)
	private MainService MainService;
	// http://localhost:7080/project06/memberlist.do
	// 조회
	@RequestMapping("memberlist.do")
	public String memberlist(Member sch, Model d) {
		
		d.addAttribute("mlist", service.memberlist(sch));
		return "WEB-INF\\views\\m01_memberlist.jsp";
	}
	// http://localhost:7080/project06/memberDetail.do
	// 상세 페이지
	@RequestMapping("memberDetail.do")
	public String memberDetail(@RequestParam("no")int no,HttpSession session, Member getDept, 
			Model d) {
		Member m = (Member) session.getAttribute("login");
		String companyName = m.getCompanyName();
		getDept.setCompanyName(companyName);
		d.addAttribute("dlist",service.getDept(getDept));
		
		d.addAttribute("member",service.getMemberDetail(no));
		return "WEB-INF\\views\\m02_memberDetail.jsp";
	}
	// 수정
	@RequestMapping("updateMember.do")
	public String updateMember(HttpSession session, Member getDept, Member upt, Model d) {
		Member m = (Member) session.getAttribute("login");
		String companyName = m.getCompanyName();
		getDept.setCompanyName(companyName);
		d.addAttribute("dlist",service.getDept(getDept));
		
		d.addAttribute("member",service.updateMember(upt));
		d.addAttribute("proc","upt");
		return "WEB-INF\\views\\m02_memberDetail.jsp";
	}
	// 삭제
	@RequestMapping("deleteMember.do")
	public String deleteMember(@RequestParam("no")int no,@RequestParam("name")String name, Model d) {
		service.deleteMember(no);
		d.addAttribute("proc","del");
		History delhistory = new History(name,"멤버가 삭제","#E81500");
		MainService.insertHistroy(delhistory);
		return "WEB-INF\\views\\m01_memberlist.jsp";
	}
	
	// 등록
	@RequestMapping("insertMemberForm.do")
	public String insertMemberForm(HttpSession session, Member getDept, Model d) {
		Member m = (Member) session.getAttribute("login");
		String companyName = m.getCompanyName();
		getDept.setCompanyName(companyName);
		d.addAttribute("dlist",service.getDept(getDept));
		return "WEB-INF\\views\\m03_addMember.jsp";
	}
	@RequestMapping("insertMember.do")
	public String insertMember(HttpSession session, Member getDept, Member ins, Model d) {
		Member m = (Member) session.getAttribute("login");
		String companyName = m.getCompanyName();
		getDept.setCompanyName(companyName);
		d.addAttribute("dlist",service.getDept(getDept));
		service.insertMember(ins);
		d.addAttribute("isInsert","Y");
		History history = new History(ins.getName(),"멤버가 등록","#6900C7");
		MainService.insertHistroy(history);
		return "WEB-INF\\views\\m03_addMember.jsp";
	}
	// 아이디 중복 검사
	@RequestMapping("idcheck.do")
	public String idcheck(Member member,Model d) {
		String id = member.getId();
		if(id !=null) {
			if(service.getId(id) == 0) {
				d.addAttribute("ckID", "사용 가능한 아이디 입니다.");
				return "pageJsonReport";
			} else {
				d.addAttribute("ckID", "같은 아이디가 있습니다.");
				return "pageJsonReport";
			}
		}else {
			d.addAttribute("ckID", "아이디를 입력하세요.");
			return "pageJsonReport";
		}

	}
	
	
	
	
	// 그룹 페이지
	// http://localhost:7080/project06/orgGroup.do
	@RequestMapping("orgGroup.do")
	public String orgGroup(Member gro, Model d) {
		d.addAttribute("orgGrouplist", service.orgGroup(gro));
		return "WEB-INF\\views\\m04_orgGroup.jsp";
	}
	
	// 부서 인원수 및 부서 정보 변경
	// http://localhost:7080/project06/groupList.do
	@RequestMapping("groupList.do")
	public String groupList(HttpSession session, Member dept, Model d) {
		Member m = (Member) session.getAttribute("login");
		String companyName = m.getCompanyName(); //
		dept.setCompanyName(companyName);
		d.addAttribute("grouplist", service.groupList(dept));
		return "WEB-INF\\views\\m05_groupList.jsp";
	}
	// 부서 상세
	@RequestMapping("detailDept.do")
	public String getdetailDept(@RequestParam("deptno")int deptno, Model d) {
		d.addAttribute("detailDept", service.getdetailDept(deptno));
		return "redirect:groupList.do";
	}
	// 부서 수정
	@RequestMapping("updateDept.do")
	public String updateDept(Member uptDept, Model d) {
		d.addAttribute("uptDept", service.updateDept(uptDept));
		d.addAttribute("proc", "upt");
		return "redirect:groupList.do";
	}
	// 부서 생성
	@RequestMapping("createDept.do")
	public String createDept(Member deptins, Model d) {
		service.createDept(deptins);
		d.addAttribute("isInsert", "Y");
		return "WEB-INF\\views\\m05_groupList.jsp";
	}
	// 부서 삭제
	@RequestMapping("deleteDept.do")
	public String deleteDept(@RequestParam("deptno")int deptno, Model d) {
		service.deleteDept(deptno);
		d.addAttribute("proc", "del");
		return "redirect:groupList.do";
	}
	
	
	
}
