package pm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import pm.service.MemMailSenderService;
import pm.vo.Mail;
import pm.vo.Member;


@Controller
public class MemMailController {

	@Autowired(required=false)
	private MemMailSenderService service;
	// http://localhost:7080/project06/mailForm2.do
	@GetMapping("mailForm2.do")
	public String mailForm() {
		return "WEB-INF\\views\\m03_addMember.jsp";
	}
	@PostMapping("mailSender2.do")
	public String mailSender(Mail mail, Model d,Member member) {
		d.addAttribute("msg",service.sendMail(mail,member));
		return "WEB-INF\\views\\m03_addMember.jsp";
	}
	
	
	
}
