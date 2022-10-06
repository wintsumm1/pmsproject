package pm.vo;
// board.vo.BoardSch
public class RiskSch {
	// 페이징 처리 및 검색을 위한 vo
	// 1. 검색
	private String project;
	private String requser;
	// 2. 페이징 처리를 위한 속성
	private int count; // 총데이터 건수
	private int pageSize; // 한번에 보여줄 페이지 크기
	private int pageCount; // 총 페이지 수
	private int curPage; // 클릭한 현재 페이지 번호
	private int start; // 시작번호(현재페이지)
	private int end; // 마지막 번호(현재페이지)
	// 3. 하단에 block속성
	private int blockSize; // 한번에 보여줄 block의 크기
	private int startBlock; // block의 시작번호
	private int endBlock; // block의 마지막번호
	
	private int cnt;
	private int risk_no;
	private String repname;
	private String reqdate;
	private String totdate;
	private String req_cause;
	private String situation;
	private String companion;
	/**
	 * 
	 */
	public RiskSch() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param project
	 * @param requser
	 * @param count
	 * @param pageSize
	 * @param pageCount
	 * @param curPage
	 * @param start
	 * @param end
	 * @param blockSize
	 * @param startBlock
	 * @param endBlock
	 * @param cnt
	 * @param risk_no
	 * @param repname
	 * @param reqdate
	 * @param totdate
	 * @param req_cause
	 * @param situation
	 * @param companion
	 */
	public RiskSch(String project, String requser, int count, int pageSize, int pageCount, int curPage, int start,
			int end, int blockSize, int startBlock, int endBlock, int cnt, int risk_no, String repname, String reqdate,
			String totdate, String req_cause, String situation, String companion) {
		this.project = project;
		this.requser = requser;
		this.count = count;
		this.pageSize = pageSize;
		this.pageCount = pageCount;
		this.curPage = curPage;
		this.start = start;
		this.end = end;
		this.blockSize = blockSize;
		this.startBlock = startBlock;
		this.endBlock = endBlock;
		this.cnt = cnt;
		this.risk_no = risk_no;
		this.repname = repname;
		this.reqdate = reqdate;
		this.totdate = totdate;
		this.req_cause = req_cause;
		this.situation = situation;
		this.companion = companion;
	}
	/**
	 * @param project
	 * @param requser
	 */
	public RiskSch(String project, String requser) {
		this.project = project;
		this.requser = requser;
	}
	public String getProject() {
		return project;
	}
	public void setProject(String project) {
		this.project = project;
	}
	public String getRequser() {
		return requser;
	}
	public void setRequser(String requser) {
		this.requser = requser;
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
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getRisk_no() {
		return risk_no;
	}
	public void setRisk_no(int risk_no) {
		this.risk_no = risk_no;
	}
	public String getRepname() {
		return repname;
	}
	public void setRepname(String repname) {
		this.repname = repname;
	}
	public String getReqdate() {
		return reqdate;
	}
	public void setReqdate(String reqdate) {
		this.reqdate = reqdate;
	}
	public String getTotdate() {
		return totdate;
	}
	public void setTotdate(String totdate) {
		this.totdate = totdate;
	}
	public String getReq_cause() {
		return req_cause;
	}
	public void setReq_cause(String req_cause) {
		this.req_cause = req_cause;
	}
	public String getSituation() {
		return situation;
	}
	public void setSituation(String situation) {
		this.situation = situation;
	}
	public String getCompanion() {
		return companion;
	}
	public void setCompanion(String companion) {
		this.companion = companion;
	}
	
}
