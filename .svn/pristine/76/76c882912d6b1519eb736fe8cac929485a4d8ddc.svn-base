package pm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import pm.vo.Gantt;
import pm.vo.Risk;
import pm.vo.RiskSch;



@Repository
public interface RiskDao {
	public int totCnt(RiskSch sch);
	public int hugaCnt(RiskSch sch);
	public int sickCnt(RiskSch sch);
	public int etcCnt(RiskSch sch);
	public int perCnt(RiskSch sch);
	public List<Risk> riskList(RiskSch sch);
	public void insertRisk(Risk ins);
	public void updateRisk(Risk upt);
	public void deleteRisk(int risk_no);
	public void updateProject(Gantt upt);
	public List<Gantt> userProject(Gantt sch);
}
