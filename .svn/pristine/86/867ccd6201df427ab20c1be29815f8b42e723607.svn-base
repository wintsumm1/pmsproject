package pm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pm.service.GanttService;
import pm.service.MemberService;
import pm.vo.Gantt;
import pm.vo.Member;

@Controller
public class GanttController {
	
	@Autowired(required = false)
	private GanttService service;
	
	@Autowired(required = false)
	private MemberService memberService;
	
	//  http://localhost:7080/project06/gantt.do
	//  http://49.238.206.101:7080/project06/gantt.do
	@RequestMapping("gantt.do")
	public String gantt (Gantt gannt, Member m, Model d) {
		d.addAttribute("member",memberService.memberlist(m));
		d.addAttribute("statuses", service.getStatus());	
		return"WEB-INF\\views\\gantt.jsp";
	}
	
	//  http://localhost:7080/project06/ganttList.do?id=1
	@RequestMapping("ganttList.do")	
	public String ganttList (Gantt gantt,Model d, @RequestParam(value = "id", defaultValue = "0") int id) {
		d.addAttribute("data",service.schGantt(id));
		d.addAttribute("statuses", service.getStatus());
		return"pageJsonReport";
	}
//  http://localhost:7080/project06/insertGantt.do
	@RequestMapping("insertGantt.do")
	public String insertGantt (Gantt ins) {
		service.insertGantt(ins);
		return"pageJsonReport";
	}
	
	@RequestMapping("deleteGantt.do")
	public String deleteGantt (@RequestParam(value = "id", defaultValue = "0") int id) {
		service.deleteGantt(id);
		return"pageJsonReport";
	}
	/*
				text = #{text},
				owner_id = #{owner_id},
				status_no = #{status_no},
				start_date = #{start_date},
				duration = #{duration},
				parent = #{parent},
				contents = #{contents},
				progress = #{progress},
				open1 = #{open},
				display_order = #{display_order}
				
				id
	 */
//  http://localhost:7080/project06/updateGantt.do?
	@RequestMapping("updateGantt.do")
	public String updateGantt (Gantt upt) {
		service.updateGantt(upt);
		return"pageJsonReport";
	}
	
	
	
	}
