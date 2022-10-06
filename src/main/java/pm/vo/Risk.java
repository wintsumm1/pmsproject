package pm.vo;

public class Risk {
	private int risk_no;
	private int cnt;
	private int no;
	private int id;
	private int proid;
	private int reqmemno;
	private int repmemno;
	private int refno;
	private String project ;
	private String requser;
	private String repname;
	private String reqdate;
	private String totdate;
	private String req_cause;
	private String situation;
	private String companion;
	/**
	 * 
	 */
	public Risk() {
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param risk_no
	 * @param cnt
	 * @param no
	 * @param id
	 * @param proid
	 * @param reqmemno
	 * @param repmemno
	 * @param refno
	 * @param project
	 * @param requser
	 * @param repname
	 * @param reqdate
	 * @param totdate
	 * @param req_cause
	 * @param situation
	 * @param companion
	 */
	public Risk(int risk_no, int cnt, int no, int id, int proid, int reqmemno, int repmemno, int refno, String project,
			String requser, String repname, String reqdate, String totdate, String req_cause, String situation,
			String companion) {
		this.risk_no = risk_no;
		this.cnt = cnt;
		this.no = no;
		this.id = id;
		this.proid = proid;
		this.reqmemno = reqmemno;
		this.repmemno = repmemno;
		this.refno = refno;
		this.project = project;
		this.requser = requser;
		this.repname = repname;
		this.reqdate = reqdate;
		this.totdate = totdate;
		this.req_cause = req_cause;
		this.situation = situation;
		this.companion = companion;
	}
	public int getRisk_no() {
		return risk_no;
	}
	public void setRisk_no(int risk_no) {
		this.risk_no = risk_no;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProid() {
		return proid;
	}
	public void setProid(int proid) {
		this.proid = proid;
	}
	public int getReqmemno() {
		return reqmemno;
	}
	public void setReqmemno(int reqmemno) {
		this.reqmemno = reqmemno;
	}
	public int getRepmemno() {
		return repmemno;
	}
	public void setRepmemno(int repmemno) {
		this.repmemno = repmemno;
	}
	public int getRefno() {
		return refno;
	}
	public void setRefno(int refno) {
		this.refno = refno;
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
