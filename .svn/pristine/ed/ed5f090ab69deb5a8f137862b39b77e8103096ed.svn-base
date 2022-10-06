package pm.controller;




import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pm.service.LoginService;
import pm.service.MemberService;
import pm.service.SideBarService;
import pm.vo.Member;

@Controller
public class LoginController {
		@Autowired(required=false) 
		private LoginService service;
		@Autowired(required=false)
		private MemberService memservice;
		
		@Autowired(required = false)
		private SideBarService cntserivce;
		
		private final Logger logger = LoggerFactory.getLogger(this.getClass());
		
		//http://49.238.206.101:7080/project06/login.do
		// http://localhost:7080/project06/login.do
		@RequestMapping("login.do")
		public String login77(Model d) {
			return "WEB-INF\\views\\login.jsp";
		}
		//abc123@naver.com//1111
		//kkk6@naver.com//8888
		
		
		// http://localhost:7080/project06/login88.do
		@RequestMapping(value = "/login88.do", method = RequestMethod.POST)
		public String login88(Member m, Model d,HttpServletRequest request) {
			Member member = memservice.memberlist2(m);
			if (member != null) {
				HttpSession session = request.getSession();
				session.setAttribute("login", member);
				cntserivce.upCountUser();
				d.addAttribute("proc","1");
				d.addAttribute("msg","로그인 성공");
				return "pageJsonReport";
			}else {
				d.addAttribute("proc","0");
				d.addAttribute("msg","아이디 비밀번호를 확인해 주세요");
				return "pageJsonReport";
			}
		}
		
		//로그아웃
		@RequestMapping(value = "/logout", method = RequestMethod.GET)
		public String logout(HttpSession session) {
			session.invalidate();
			logger.info("ByeBye Logout success");
			return "redirect:login.do";
		}

		@RequestMapping("register.do")
		public String register() {
			return"WEB-INF\\views\\register.jsp";
		}
		
		
		
		
		
		/*
		  @ResponseBody
		  @RequestMapping(value = "/login88.do", method= RequestMethod.GET)
		  public String getUserById(@RequestParam String id) {
		  	logger.info(id);
		  	return Integer.toString(service.checkId(id));
		  }
		  
//			로그인(POST)	
			@RequestMapping(value = "/login88.do", method = RequestMethod.POST)
			public String postlogin(HttpSession session, Member.LoginInfo user, Model model) {
				if(session.getAttribute("login") != null) {
					session.removeAttribute("login");
				}
				User loginuser = service.loginCheck(user);
				
				if(loginuser!=null) {				//	성공
					session.setAttribute("login",loginuser);
					logger.info("success login");
					return "redirect:/main.do";
				}							//	실패
				logger.info("fail login");
				return "redirect:/login.do";	
			}
//			로그아웃	
			@RequestMapping(value = "/logout", method = RequestMethod.GET)
			public String logout(HttpSession session) {
				session.invalidate();
				logger.info("ByeBye Logout success");
				return "redirect:main.do";
			}
//			메인화면
			@RequestMapping(value = "/main", method = RequestMethod.GET)
			public String main() {
				return "main";
			}
			/*
			// http://localhost:7080/project06/Insert.do
			  @RequestMapping("Insert.do")
				public String LoginInsert(@ModelAttribute("insert") Member ins, Model d){
				  service.LoginInsert(ins);
				  String page = "login.jsp";
				  if(ins!=null && ins.getId() !=null && ins.getPass()!=null) {
					d.addAttribute("insertMsg","회원가입성공");
				}else {
					d.addAttribute("insertMsg","로그인실패");
					page = "register.jsp";
				}
					d.addAttribute(new Member());
					return "WEB-INF\\views\\"+page;
				}
			  */
		  
}
