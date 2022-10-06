package pm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import pm.vo.Notice;

@Repository
public interface NoticeDao {
	public List<Notice> noticeList();
	public void insertNotice(Notice ins);
	public void deleteNotice(int no);
	public Notice noticeDetail(int no);
	public void updateNotice(Notice upt);
}
