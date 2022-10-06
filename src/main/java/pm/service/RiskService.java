package pm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pm.dao.RiskDao;
import pm.vo.Gantt;
import pm.vo.Risk;
import pm.vo.RiskSch;

@Service
public class RiskService {
	@Autowired(required = false)
	private RiskDao dao;

	public List<Risk> riskList(RiskSch sch) {
		return dao.riskList(sch);
	}

	public void insertRisk(Risk ins) {
		dao.insertRisk(ins);
	}

	public void deleteRisk(int risk_no) {
		dao.deleteRisk(risk_no);
	}

	public void updateRisk(Risk upt) {
		dao.updateRisk(upt);
	}

	public void updateProject(Gantt upt) {
		dao.updateProject(upt);
	}

	public List<Gantt> userProject(Gantt sch) {
		return dao.userProject(sch);
	}
}
