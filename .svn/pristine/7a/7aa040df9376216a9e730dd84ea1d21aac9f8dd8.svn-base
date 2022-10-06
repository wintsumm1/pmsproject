package pm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pm.service.GanttService;
import pm.service.IssueService;
import pm.vo.Gantt;
import pm.vo.Issue;
import pm.vo.IssueSch;

@Controller
public class IssueController {
	@Autowired(required = false)
	private GanttService ganttService;
	@Autowired(required = false)
	private IssueService service;

	// http://localhost:7080/project06/issueList.do
	@RequestMapping("issueList.do")
	public String issueList(Issue sch, Gantt gantt,Model d) {
		d.addAttribute("project", service.userProject(gantt));
		d.addAttribute("ilist", service.issueList(sch));

		return "WEB-INF\\views\\issue.jsp";
	}

	@RequestMapping("issueInsertForm.do")
	public String issueInsertForm() {
		return "WEB-INF\\views\\issueInsert.jsp";
	}

	@RequestMapping("issueInsert.do")
	public String issueInsert(Issue ins, Model d) {
		service.insertIssue(ins);
		d.addAttribute("isInsert", "Y");

		return "WEB-INF\\views\\issue.jsp";
	}

	@RequestMapping("issueDetail.do")
	public String issueDetail(@RequestParam("issue_no") int no, Model d) {
		d.addAttribute("idetail", service.getIssueDetail(no));

		return "WEB-INF\\views\\issue.jsp";
	}

	@RequestMapping("updateIssue.do")
	public String updateIssue(Issue upt, Model d) {
		System.out.println("수정:" + upt.getSubject());
		d.addAttribute("issue", service.updateIssue(upt));
		d.addAttribute("upt","Y");
		return "WEB-INF\\views\\issue.jsp";
	}

	@RequestMapping("deleteIssue.do")
	public String deleteIssue(@RequestParam("Issue_no") int no, Model d) {
		System.out.println("삭제:" + no);
		service.deleteIssue(no);
		return "WEB-INF\\views\\issue.jsp";
	}

}
