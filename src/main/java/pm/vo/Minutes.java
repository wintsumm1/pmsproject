package pm.vo;
// pm.vo.Minutes
import java.util.Date;

public class Minutes {
	private int minutesno;
	private int no;
	private int refno;
	private String title;
	private String contents;
	private String writer;
	private int readcnt;
	private Date regdte;
	private Date uptdte;
	private String minutesMember;
	public Minutes() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Minutes(int minutesno, int no, int refno, String title, String contents, String writer, int readcnt,
			Date regdte, Date uptdte) {
		super();
		this.minutesno = minutesno;
		this.no = no;
		this.refno = refno;
		this.title = title;
		this.contents = contents;
		this.writer = writer;
		this.readcnt = readcnt;
		this.regdte = regdte;
		this.uptdte = uptdte;
	}
	public int getMinutesno() {
		return minutesno;
	}
	public void setMinutesno(int minutesno) {
		this.minutesno = minutesno;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getRefno() {
		return refno;
	}
	public void setRefno(int refno) {
		this.refno = refno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}
	public Date getRegdte() {
		return regdte;
	}
	public void setRegdte(Date regdte) {
		this.regdte = regdte;
	}
	public Date getUptdte() {
		return uptdte;
	}
	public void setUptdte(Date uptdte) {
		this.uptdte = uptdte;
	}
	public String getMinutesMember() {
		return minutesMember;
	}
	public void setMinutesMember(String minutesMember) {
		this.minutesMember = minutesMember;
	}

	
}