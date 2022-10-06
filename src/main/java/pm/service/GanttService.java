package pm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pm.dao.GanttDao;
import pm.vo.Calendar;
import pm.vo.Gantt;
import pm.vo.Status;
import pm.vo.TestMember;

@Service
public class GanttService {
	@Autowired(required = false)
	private GanttDao dao;
	
	public List<Gantt> getGantt(Gantt sch) {
		return dao.getGantt(sch);
	}
	
	public List<Gantt> getParentGantt(Gantt sch) {
		return dao.getGantt(sch);
	}
	
	public List<Gantt> schGantt(int id) {
		return dao.schGantt(id);
	}
	
	public List<Status> getStatus() {
		return dao.getStatus();
	}
	
	public void insertGantt(Gantt ins) {
		dao.insertGantt(ins);
	}
	
	public void insertProject(Gantt ins) {
		dao.insertGantt(ins);
	}
	
	public void updateParentGantt(Gantt upt) {
		dao.updateParentGantt(upt);
	}
	
	public void updateGantt(Gantt upt) {
		dao.updateGantt(upt);
	}
	
	public void deleteGantt(int id) {
		dao.deleteGantt(id);
	}
	
	public List<Calendar> getCalList(Calendar sch) {
		return dao.getCalList(sch);
	}
	
	public void insertCalendar(Calendar ins) {
		dao.insertCalendar(ins);
	}
	
	public void deleteCalendar(int no) {
		dao.deleteCalendar(no);
	}
	
	public void updateCalendar(Calendar upt) {
		dao.updateCalendar(upt);
	}
	
	public int countAllProject() {
		return dao.countAllProject();
	}
	
	public int countReqProject() {
		return dao.countReqProject();
	}
	public int countProProject() {
		return dao.countProProject();
	}
	public int countComProject() {
		return dao.countComProject();
	}
	public int countFeedProject() {
		return dao.countFeedProject();
	}
}
