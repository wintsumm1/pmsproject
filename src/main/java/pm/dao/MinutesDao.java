package pm.dao;

import java.util.List;



import org.springframework.stereotype.Repository;

import pm.vo.Minutes;
import pm.vo.MinutesSch;

//pm.dao.MinutesDao
@Repository
public interface MinutesDao {
	
	public int totCnt(MinutesSch sch);
	
	public List<Minutes> minutesList(MinutesSch sch);
	
	public void insertMinutes(Minutes ins);

	public Minutes getMinutesDetail(int no);
	
	public void readCountup(int no);
	
	public void updateMinutes(Minutes upt);		
	
	public void deleteMinutes(String minutesno);
	
}
