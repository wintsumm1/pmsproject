package pm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pm.service.MainService;
import pm.vo.Gantt;
import pm.vo.Member;
import pm.vo.RiskSch;

@Controller
public class MainController {
	@Autowired(required = false)
	private MainService service;
	
	//  http://localhost:7080/project06/main.do
	//  http://49.238.206.101:7080/project06/main.do
	@RequestMapping("main.do")
	public String main(Member sch, Gantt gsch, Model d) {
		d.addAttribute("mlist", service.memberlist(sch));
		d.addAttribute("prj", service.getParentGantt(gsch));
		d.addAttribute("history", service.getHistory());
		d.addAttribute("mainprj", service.getMainPrj());
		return "WEB-INF\\views\\main_dashboard.jsp";
	}
	
	@RequestMapping("prjDb.do")
	public String prjDb(Gantt sch, RiskSch rsch, Model d) {
		d.addAttribute("prjlist", service.getParentGantt(sch));
		d.addAttribute("risknum", service.totCnt(rsch));
		d.addAttribute("req", service.countParentReq());
		d.addAttribute("proc", service.countParentProc());
		d.addAttribute("comp", service.countParentComp());
		d.addAttribute("fdback", service.countParentFdback());
		return "WEB-INF\\views\\project_dashboard.jsp";
	}
//  http://localhost:7080/project06/prjAjax.do
	@RequestMapping("prjAjax.do")
	public String prjAjax(RiskSch rsch, Model d) {
		d.addAttribute("request", service.countReqProject());
		d.addAttribute("proceed", service.countProProject());
		d.addAttribute("complete", service.countComProject());
		d.addAttribute("feedback", service.countFeedProject());
		d.addAttribute("huga", service.hugaCnt(rsch));
		d.addAttribute("sick", service.sickCnt(rsch));
		d.addAttribute("personal",service.perCnt(rsch));
		d.addAttribute("etc", service.etcCnt(rsch));
		d.addAttribute("manpower", service.getManpower());
		d.addAttribute("memberCnt", service.getMemberCnt());
		return "pageJsonReport";
	}
	
}
