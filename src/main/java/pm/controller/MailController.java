	package pm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import pm.service.LoginService;
import pm.service.MailSenderService;
import pm.service.MailSenderService2;
import pm.vo.Mail;
import pm.vo.Member;

@Controller
public class MailController {

	@Autowired(required=false)
	private MailSenderService service;
	
	@Autowired(required = false)
	private LoginService loginService;
	
	@Autowired(required=false)
	private MailSenderService2 mservice;
	
	//회원가입 메일
	// http://localhost:7080/project06/mailForm.do
	@GetMapping("mailForm.do")
	public String mailForm() {
		return "WEB-INF\\views\\register.jsp";
	}
	@PostMapping("mailSender.do")
	public String mailSender(Mail mail, Model d) {
		d.addAttribute("msg",service.sendMail(mail));
		return "WEB-INF\\views\\register.jsp";
	}
		
	
		//멤버 메일
		// http://localhost:7080/project06/memberForm.do
		@GetMapping("memberForm.do")
		public String memberForm(Model d) {
			return "WEB-INF\\views\\m03_addMember.jsp";
		}
		// http://localhost:7080/project06/memberSender.do
		@PostMapping("memberSender.do")
		public String mailSender(Mail mail, Member member,Model d) {
			String receiverID = mail.getReceiver();
			if( loginService.getMemberList(receiverID) == 1) {
				/*
				String ranPass = service.getTempPassword();
				loginService.pwUpdate(receiverID, ranPass);
				*/
				mservice.sendMail2(mail, member);
				d.addAttribute("ckID", "이메일 전송에 성공하였습니다.");
				return "pageJsonReport";
			} else {
				d.addAttribute("ckID", "이메일 전송에 실패하였습니다.");
				return "pageJsonReport";
			}
		}
		// http://localhost:7080/project06/memberSender3.do?id=isaac233@naver.com&pass=1111&&dept=front-end&auth=admin&tel=000&mrg=부장&companyName=쌍용감남&memberimg=project06/asset/images/profile-1.png
		@RequestMapping("memberSender3.do")
		public String mailSender3(Member member,Model d) {
			String receiverID = member.getId();
			if( loginService.getMemberList(receiverID) == 0) {
				/*
				String ranPass = service.getTempPassword();
				loginService.pwUpdate(receiverID, ranPass);
				*/
				mservice.sendMail3(member);
				System.out.println("성공");
				d.addAttribute("ckID", "이메일 전송에 성공하였습니다.");
				return "pageJsonReport";
			} else {
				System.out.println("실패");
				d.addAttribute("ckID", "이메일 전송에 실패하였습니다.");
				return "pageJsonReport";
			}
		}
		
		
		
	}
		
		
	