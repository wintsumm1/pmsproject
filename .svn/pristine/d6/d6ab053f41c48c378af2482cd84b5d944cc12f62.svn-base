package pm.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pm.service.LoginService;
import pm.service.MemberService;
import pm.vo.Member;
@Controller
public class accountController {
	@Autowired(required = false)
	private LoginService service;
	@Autowired(required=false)
	private MemberService memservice;
	// http://localhost:7080/project06/account.do
	@RequestMapping("account.do")
	public String memberlist(Member sch, Model d) {
		return "WEB-INF\\views\\account.jsp";
	}
	// http://localhost:7080/project06/updateaccount.do?id=abc123@naver.com&pass=1111
	@RequestMapping("updateaccount.do")
	public String updateaccount(Member m, HttpServletRequest request) {
		service.imgupdate(m);
		service.pwUpdate2(m);
		return "redirect:main.do";
	}
	
	

}
