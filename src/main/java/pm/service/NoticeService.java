package pm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pm.dao.NoticeDao;
import pm.vo.Notice;

@Service
public class NoticeService {
	@Autowired(required=false)
	private NoticeDao dao;
	
	public List<Notice> noticeList(){
		return dao.noticeList();
	}
	
	public void insertNotice(Notice ins) {
		dao.insertNotice(ins);
	}
	public void deleteNotice(int no) {
		dao.deleteNotice(no);
	}
	
	public Notice noticeDetail(int no){
		return dao.noticeDetail(no);
	}
	
	public Notice updateNotice(Notice upt) {
		dao.updateNotice(upt);
		return dao.noticeDetail(upt.getNo());
	}

}
