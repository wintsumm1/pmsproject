package pm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pm.service.SideBarService;


@Controller
public class AnalisticsController {
	@Autowired(required = false)
	private SideBarService service;
	
	//  http://localhost:7080/project06/analistics.do
	@RequestMapping("analistics.do")
	public String analistics() {
		return "WEB-INF\\views\\analistics.jsp"; 
	}
	
	@RequestMapping("getClickMenu.do")
	public String getClickMenu(Model d) {
		d.addAttribute("clickMenuData", service.getClickMenu()); 
		return "pageJsonReport"; 
	}
//  http://localhost:7080/project06/getDayData.do
	@RequestMapping("getDayData.do")
	public String getDayData(Model d) {
		d.addAttribute("dayData", service.getDayData()); 
		return "pageJsonReport"; 
	}
	
	@RequestMapping("getCountUser.do")
	public String getCountUser(Model d) {
		d.addAttribute("countUser", service.getCountUser());
		return "pageJsonReport";
	}
	
}
