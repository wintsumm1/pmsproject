package pm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pm.service.MainService;
import pm.service.ProjectService;
import pm.vo.Gantt;
import pm.vo.History;
import pm.vo.Member;

@Controller
public class ProjectController {
	@Autowired(required = false)
	private ProjectService service;
	@Autowired(required=false)
	private MainService service2;
	
	
	//  http://localhost:7080/project06/projectList.do
	//  http://localhost:7080/project06/projectAdmin.do
	//  http://49.238.206.101:7080/project06/main.do
	
	// 프로젝트 리스트 일반 사용자 페이지
	@RequestMapping("projectList.do")
	public String main(Gantt sch, Model d) {
		d.addAttribute("prjlist", service.getParentGantt(sch));
		return "WEB-INF\\views\\projectList.jsp";
	}
	
	@RequestMapping("acceptId.do")
	public String acceptId(@RequestParam(value="id") List<Integer> idlist, Model d) {
		for(int a : idlist) {
			d.addAttribute("progress", service.getProgress(a));
		}
		return "WEB-INF\\views\\projectList.jsp";
	}
	
	// 프로젝트 리스트 관리자 페이지
	@RequestMapping("projectAdmin.do")
	public String adminList(Gantt sch, Model d) {
		d.addAttribute("prjlist", service.getParentGantt(sch));
		return "WEB-INF\\views\\projectAdmin.jsp";
	}
	
	// 프로젝트 생성
	@RequestMapping("projectCreateForm.do")
	public String createForm(Member sch, Model d) {
		d.addAttribute("mlist", service.memberlist(sch));
		return "WEB-INF\\views\\projectCreate.jsp";
	}
	
	@RequestMapping("projectCreate.do")
	public String create(Gantt ins, Model d) {
		service.insertProject(ins);
		d.addAttribute("isInsert","Y");
		History history = new History(ins.getText(),"프로젝트가 등록","#0061F2");
		System.out.println(history.getHname()+history.getHtype());
		service2.insertHistroy(history);
		System.out.println("등록 성공");
		return "WEB-INF\\views\\projectCreate.jsp";
	}
	
	// 프로젝트 수정
	@RequestMapping("projectEditForm.do")
	public String updateForm(@RequestParam("id") int id, Member sch, Model d) {
		d.addAttribute("mlist", service.memberlist(sch));
		d.addAttribute("prj", service.getProject(id));
		return "WEB-INF\\views\\projectEdit.jsp";
	}
	@RequestMapping("projectEdit.do")
	public String noticeUpdate(Gantt upt, Model d) {
		System.out.println("수정:"+upt.getText());
		service.updateParentGantt(upt);
		d.addAttribute("proc", "upt");
		return "WEB-INF\\views\\projectEdit.jsp";
	}
	
	
	// 프로젝트 삭제
	@RequestMapping("projectDelete.do")
	public String delete(@RequestParam("id") int id,@RequestParam("text") String text, Model d) {
		System.out.println("삭제:"+id);
		service.deleteProject(id);
		History delhistory = new History(text, "프로젝트가 삭제", "#E81500");
		service2.insertHistroy(delhistory);
		d.addAttribute("prj","del");
		return "WEB-INF\\views\\projectAdmin.jsp";
	}
	
	// 프로젝트 프로그레스
	@RequestMapping("projectProgress.do")
	public String progress(@RequestParam("id") int id, Model d) {
		d.addAttribute("progressBar", service.getProgress(id));
		return "WEB-INF\\views\\projectList.jsp";
	}
}
