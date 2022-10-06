package pm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pm.service.MainService;
import pm.service.NoticeService;
import pm.vo.History;
import pm.vo.Notice;

@Controller
public class NoticeController {
	@Autowired(required = false)
	private NoticeService service;
	@Autowired(required = false)
	private MainService service2;
	
	
	// http://localhost:7080/project06/notice.do
	// http://localhost:7080/project06/noticeAdmin.do
	
	// 일반 사용자 공지사항 페이지
	@RequestMapping("notice.do")
	public String notice(Model d) {
		d.addAttribute("noticelist",service.noticeList());
		return "WEB-INF\\views\\noticeList.jsp";
	}
	
	// 관리자 공지사항 페이지
	@RequestMapping("noticeAdmin.do")
	public String noticeAdmin(Model d) {
		d.addAttribute("noticelist",service.noticeList());
		return "WEB-INF\\views\\noticeAdmin.jsp";
	}
	
	// 공지사항 상세
	@RequestMapping("noticeDetail.do")
	public String detail(@RequestParam("no") int no, Model d) {
		d.addAttribute("notice",service.noticeDetail(no));
		return "WEB-INF\\views\\noticeDetail.jsp";
	}
	
	// 공지사항 등록
	@RequestMapping("noticeInsertForm.do")
	public String insertForm() {
		return "WEB-INF\\views\\noticeInsert.jsp";
	}
	
	@RequestMapping("noticeInsert.do")
	public String insert(Notice ins, Model d) {
		service.insertNotice(ins);
		d.addAttribute("isInsert","Y");
		History history = new History(ins.getTitle(), "공지사항이 등록", "#F4A100");
		service2.insertHistroy(history);
		return "WEB-INF\\views\\noticeInsert.jsp";
	}
	// 공지사항 수정
	@RequestMapping("noticeUpdateForm.do")
	public String updateForm(@RequestParam("no") int no, Model d) {
		d.addAttribute("notice", service.noticeDetail(no));
		return "WEB-INF\\views\\noticeUpdate.jsp";
	}
	@RequestMapping("noticeUpdate.do")
	public String noticeUpdate(Notice upt, Model d) {
		System.out.println("수정:"+upt.getTitle());
		d.addAttribute("notice", service.updateNotice(upt));
		d.addAttribute("proc","upt");
		return "WEB-INF\\views\\noticeUpdate.jsp";
	}
	
	// 공지사항 삭제
	@RequestMapping("deleteNotice.do")
	public String deleteNotice(@RequestParam("no") int no, @RequestParam("title") String title, Model d) {
		System.out.println("삭제:"+no);
		service.deleteNotice(no);
		d.addAttribute("proc","del");
		System.out.println("삭제한 공지사항명: "+title);
		History delhistory = new History(title,"공지사항이 삭제","#E81500");
		service2.insertHistroy(delhistory);
		return "WEB-INF\\views\\noticeAdmin.jsp";
	}
	

}
