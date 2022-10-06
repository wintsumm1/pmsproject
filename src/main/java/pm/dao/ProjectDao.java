package pm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import pm.vo.Gantt;

@Repository
public interface ProjectDao {
	public List<Gantt> getParentGantt(Gantt sch);
	public void insertProject(Gantt ins);
	public void deleteProject(int id);

}
