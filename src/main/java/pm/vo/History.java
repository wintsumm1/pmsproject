package pm.vo;

import java.util.Date;

public class History {
	private int hid;
	private String hname;
	private String htype;
	private Date htime;
	private String hcolor;
	public History() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public History(String hname, String htype, String hcolor) {
		super();
		this.hname = hname;
		this.htype = htype;
		this.hcolor = hcolor;
	}

	public History(int hid, String hname, String htype, Date htime, String hcolor) {
		super();
		this.hid = hid;
		this.hname = hname;
		this.htype = htype;
		this.htime = htime;
		this.hcolor = hcolor;
	}

	public int getHid() {
		return hid;
	}

	public void setHid(int hid) {
		this.hid = hid;
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getHtype() {
		return htype;
	}

	public void setHtype(String htype) {
		this.htype = htype;
	}

	public Date getHtime() {
		return htime;
	}

	public void setHtime(Date htime) {
		this.htime = htime;
	}

	public String getHcolor() {
		return hcolor;
	}

	public void setHcolor(String hcolor) {
		this.hcolor = hcolor;
	}
	
	
	
}
