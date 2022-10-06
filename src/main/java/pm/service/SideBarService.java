package pm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pm.dao.SideBarDao;
import pm.vo.Analystics;

@Service
public class SideBarService {
	@Autowired(required = false)
	private SideBarDao dao;
	
	public void menuCountUp(int no) {
		dao.menuCountUp(no);
	}
	
	public void menuDuration(Analystics upt) {
		dao.menuDuration(upt);
	}
	
	public List<Analystics> getClickMenu() {
		return dao.getClickMenu();
	}
	
	public List<Analystics> getDayData() {
		return dao.getDayData();
	}
	
	public int getCountUser() {
		return dao.getCountUser();
	}
	
	public void upCountUser() {
		dao.upCountUser();
	}
}