package pm.vo;

//pm.vo.MinutesSch
public class MinutesSch {
	// 페이징 처리 및 검색을 위한 vo
	// 1. 검색
	private String title;
	private String writer;
	// 2. 페이징 처리를 위한 속성
	private int count; // 총 데이터 건수
	private int pageSize; // 한 번에 보여줄 페이지 크기
	private int pageCount; // 총 페이지 수
	private int curPage; // 클릭한 현재 페이지 번호
	private int start; // 시작번호(현재페이지)
	private int end; // 마지막번호(현재페이지)
	// 3. 하단에 block 속성
	private int blockSize;   // 한번에 보여줄 block 크기
	private int startBlock;  // block의 시작 번호
	private int endBlock;	 // block의 마지막 번호
	
	public MinutesSch(String title, String writer) {
		super();
		this.title = title;
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getBlockSize() {
		return blockSize;
	}
	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}
	public int getStartBlock() {
		return startBlock;
	}
	public void setStartBlock(int startBlock) {
		this.startBlock = startBlock;
	}
	public int getEndBlock() {
		return endBlock;
	}
	public void setEndBlock(int endBlock) {
		this.endBlock = endBlock;
	}
	
}
