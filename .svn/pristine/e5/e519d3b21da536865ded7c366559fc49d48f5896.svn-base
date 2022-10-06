package pm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pm.service.MemberService;
import pm.service.SideBarService;
import pm.vo.Analystics;
import pm.vo.Member;

@Controller
public class SideBarController {
	@Autowired(required = false)
	private SideBarService service;
	
	@RequestMapping("menuCountUp.do")
	public String menuCountUp (@RequestParam(value = "no", defaultValue = "0") int no) {
		service.menuCountUp(no);
		return "pageJsonReport";
	}
	//  http://localhost:7080/project06/menuDuration.do?no=13&duration=20
	@RequestMapping("menuDuration.do")
	public String menuDuration (Analystics upt) {
		service.menuDuration(upt);
		return "pageJsonReport";
	}
	
}
