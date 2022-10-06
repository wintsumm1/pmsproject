package pm.dao;

import java.util.List;


import org.springframework.stereotype.Repository;

import pm.vo.Calendar;
import pm.vo.Gantt;
import pm.vo.Status;

@Repository
public interface GanttDao {
	public List<Gantt> getGantt(Gantt sch);
	public List<Calendar> getCalList(Calendar sch);
	public List<Status> getStatus();
	
	public List<Gantt> getParentGantt(Gantt sch);
	public Gantt getProject(int id);
	
	public List<Gantt> schGantt(int id);
	
	public void insertGantt(Gantt ins);
	public void insertProject(Gantt ins);
	public void updateParentGantt(Gantt upt);
	
	
	public void updateGantt(Gantt upt);
	public void deleteGantt(int id);
	
	public void insertCalendar(Calendar ins);
	public void updateCalendar(Calendar upt);
	public void deleteCalendar(int no);
	
	public int countAllProject();
	public int countReqProject();
	public int countProProject();
	public int countComProject();
	public int countFeedProject();
	
	public int countParentReq();
	public int countParentProc();
	public int countParentComp();
	public int countParentFdback();
	
	public List<Gantt> getProgress(int id);
	public List<Gantt> getMainPrj();
}
