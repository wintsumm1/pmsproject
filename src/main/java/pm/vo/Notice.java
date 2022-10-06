package pm.vo;

public class Notice {
	private int no;
	private String title;
	private String preview;
	private String contents;
	private String writer;
	private String name;
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notice(int no, String title, String preview, String contents, String writer, String name) {
		super();
		this.no = no;
		this.title = title;
		this.preview = preview;
		this.contents = contents;
		this.writer = writer;
		this.name = name;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPreview() {
		return preview;
	}
	public void setPreview(String preview) {
		this.preview = preview;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
