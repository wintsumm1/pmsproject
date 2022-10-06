package pm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pm.service.GanttService;
import pm.service.MemberService;
import pm.service.RiskService;
import pm.vo.Gantt;
import pm.vo.Member;
import pm.vo.Risk;
import pm.vo.RiskSch;

@Controller
public class RiskController {
	@Autowired(required = false)
	private RiskService service;

	@Autowired(required = false)
	private GanttService ganttService;

	@Autowired(required = false)
	private MemberService memberService;

	// http://localhost:7080/project06/riskSub.do
	@RequestMapping("riskSub.do")
	public String riskSub(RiskSch sch, Gantt gantt,Member member, Model d) {
		d.addAttribute("rlist", service.riskList(sch));
		d.addAttribute("userPro", service.userProject(gantt));
		d.addAttribute("member", memberService.memberlist(member));
		
		return "WEB-INF\\views\\riskSub.jsp";
	}

	@RequestMapping("insertRisk.do")
	public String insertRisk(Risk ins, Model d) {
		d.addAttribute("isInsert", "Y");
		service.insertRisk(ins);
		return "WEB-INF\\views\\riskSub.jsp";
	}

	@RequestMapping("updateRisk.do")
	public String updateRisk(Risk upt, Model d) {
		d.addAttribute("isUpdate", "Y");
		service.updateRisk(upt);
		return "WEB-INF\\views\\riskSub.jsp";
	}

	@RequestMapping("updateProject.do")
	public String updateProject(Gantt upt,Risk rupt, Model d) {
		d.addAttribute("isProject", "Y");
		service.updateProject(upt);
		service.updateRisk(rupt);
		return "WEB-INF\\views\\riskSub.jsp";
	}
}
