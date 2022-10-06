package pm.vo;

import java.util.Date;

//pm.vo.Gantt
public class Gantt {
	private int id;
	private int owner_id;
	private String ownerName;
	private int status_no;
	private String statusName;
	private String color;
	private String text;
	private String start_date;
	private String end_date;
	private int duration;
	private int parent;
	private double progress;
	private boolean open;
	private String contents;
	private Date createdAt;
	private int display_order;
	private int priority;
	private String pname;
	private String pcolor;
	private String search;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getOwner_id() {
		return owner_id;
	}
	public void setOwner_id(int owner_id) {
		this.owner_id = owner_id;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public int getParent() {
		return parent;
	}
	public void setParent(int parent) {
		this.parent = parent;
	}
	public double getProgress() {
		return progress;
	}
	public void setProgress(double progress) {
		this.progress = progress;
	}
	public boolean isOpen() {
		return open;
	}
	public void setOpen(boolean open) {
		this.open = open;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public int getDisplay_order() {
		return display_order;
	}
	public void setDisplay_order(int display_order) {
		this.display_order = display_order;
	}
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPcolor() {
		return pcolor;
	}
	public void setPcolor(String pcolor) {
		this.pcolor = pcolor;
	}
	public int getStatus_no() {
		return status_no;
	}
	public void setStatus_no(int status_no) {
		this.status_no = status_no;
	}
	public String getStatusName() {
		return statusName;
	}
	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	
	
	
	
}
