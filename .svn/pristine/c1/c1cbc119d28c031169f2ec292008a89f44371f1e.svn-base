package pm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pm.service.MainService;
import pm.service.MemberService;
import pm.service.MinutesService;
import pm.vo.History;
import pm.vo.Member;
import pm.vo.Minutes;
import pm.vo.MinutesSch;

@Controller
public class MinutesController {
	@Autowired(required=false)
	private MinutesService service;
	
	@Autowired(required=false)
	private MemberService MemService;
	@Autowired(required=false)
	private MainService MainService;
	
	
	//  http://localhost:7080/project06/minutesList.do
	//  http://49.238.206.101:7080/project06/minutesList.do
	@RequestMapping("minutesList.do")
	public String minutesList(MinutesSch sch, Model d) {
		// sch로 서비스에 요청값을 넘김과 동시에
		// 최종 결과 List<Minutes> 객체를 mlist라는 이름으로 view단에 모델명으로 넘긴다.
		d.addAttribute("mlist", service.minutesList(sch));
		return "WEB-INF\\views\\minutesList.jsp";
	}
	// 회의록 등록
	//  http://localhost:7080/project06/minutesInsertForm.do	
	@RequestMapping("minutesInsertForm.do")
	public String minutesInsertForm(Member sch,Model d){
		d.addAttribute("member", MemService.memberlist(sch));
		return "WEB-INF\\views\\minutesInsert.jsp";
	}	
	@RequestMapping("minutesInsert.do")
	public String minutesInsert(Minutes ins, Model d){
		service.insertMinutes(ins);
		d.addAttribute("isInsert","Y");
		History history = new History(ins.getTitle(),"회의록이 등록","#00AC69");
		MainService.insertHistroy(history);
		
		return "WEB-INF\\views\\minutesInsert.jsp";
	}	
	// 회의록 상세정보
	//  http://localhost:7080/project06/minutesDetail.do	
	@RequestMapping("minutesDetail.do")
	public String minutesDetail(@RequestParam(value="no", required=false) int no, Model d){
		d.addAttribute("minutes",service.getMinutesDetail(no));
		return "WEB-INF\\views\\minutesDetail.jsp";
	}	
	// 회의록 수정
	@RequestMapping("updateMinutes.do")
	public String updateMinutes(Minutes upt, Model d) {
		System.out.println("수정:"+upt.getTitle());
		d.addAttribute("minutes", service.updateMinutes(upt));
		d.addAttribute("proc", "upt");
		return "WEB-INF\\views\\minutesDetail.jsp";
	}
	// 회의록 삭제
	@RequestMapping("deleteMinutes.do")
	public String deleteMiutes(@RequestParam("minutesno")String minutesno, @RequestParam("title") String title, Model d) {
		service.deleteMinutes(minutesno);
		History delhistory = new History(title,"회의록이 삭제","#E81500");
		MainService.insertHistroy(delhistory);
		d.addAttribute("proc", "del");
		return "WEB-INF\\views\\minutesDetail.jsp";
	}
	// 회의록 선택 삭제
	@RequestMapping("deleteMiutes2.do")
	public String deleteMiutes2(@RequestParam(value="minutesno") List<String> minutesno, Model d) {
		System.out.println("삭제:"+minutesno);	
        for (String c : minutesno) {
        	System.out.println(c);
        	String[] string = c.split("/");
        	System.out.println(string[0]);
        	System.out.println(string[1]);
            service.deleteMinutes(string[0]);
            History delhistory = new History(string[1],"회의록이 삭제","#E81500");
    		MainService.insertHistroy(delhistory);
        }

		return "redirect:minutesList.do";
	}	
}
