package pm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pm.service.GanttService;
import pm.vo.Calendar;

@Controller
public class CalendarController {
	@Autowired(required = false)
	private GanttService service;

//  http://localhost:7080/project06/calendar.do
	@RequestMapping("calendar.do")
	public String calendar(Model d) {
		return "WEB-INF\\views\\calendar.jsp";
	}
//  http://localhost:7080/project06/calList.do?member_no=1000
	@RequestMapping("calList.do")
	public String calList(Model d, Calendar sch) {
		d.addAttribute("callist", service.getCalList(sch));
		return "pageJsonReport";	
	}
	@RequestMapping("calInsert.do")
	public String calInsert(Model d, Calendar sch) {
		service.insertCalendar(sch);
		return "redirect:calendar.do";	
	}
	@RequestMapping("calUpdate.do")
	public String calUpdate(Model d, Calendar upt) {
		service.updateCalendar(upt);
		return "pageJsonReport";	
	}
	@RequestMapping("calDelete.do")
	public String calDelete(@RequestParam(value = "id", defaultValue = "0") int id) {
		service.deleteCalendar(id);
		return "redirect:calendar.do";	
	}
}
