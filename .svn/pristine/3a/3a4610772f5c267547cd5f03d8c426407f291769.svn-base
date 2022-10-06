package pm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import pm.service.LoginService;
import pm.service.MailSenderService2;
import pm.vo.Mail;
import pm.vo.Member;

@Controller
public class PasswordController {
	@Autowired(required=false)
	private MailSenderService2 service;
	
	@Autowired(required = false)
	private LoginService loginService;
	
	// http://localhost:7080/project06/mailForm1.do
	@GetMapping("mailForm1.do")
	public String mailForm(Model d) {
		return "WEB-INF\\views\\password.jsp";
	}
	// http://localhost:7080/project06/mailSender1.do
	@PostMapping("mailSender1.do")
	public String mailSender(Mail mail, Member member,Model d) {
		String receiverID = mail.getReceiver();
		if( loginService.getMemberList(receiverID) == 1) {
			/*
			String ranPass = service.getTempPassword();
			loginService.pwUpdate(receiverID, ranPass);
			*/
			service.sendMail2(mail, member);
			d.addAttribute("ckID", "이메일 전송에 성공하였습니다.");
			return "pageJsonReport";
		} else {
			d.addAttribute("ckID", "이메일 전송에 실패하였습니다.");
			return "pageJsonReport";
		}
	}
	
	
	
}