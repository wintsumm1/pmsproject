package pm.vo;

// pm.vo.Member
public class Member {
	private int no;
	private int deptno;
	private String id;
	private String pass;
	private String name;
	private String auth;
	private String tel;
	private String mrg;
	private String dept;
	private String comno;
	private String companyName;
	private String companyTel;
	private String companyName1;
	private String deptCount;
	private String countGroup;
	private String memberimg;
	public Member() {
		// TODO Auto-generated constructor stub
	}
	public Member(int no, int deptno, String id, String pass, String name, String auth, String tel, String mrg,
			String dept, String comno, String companyName, String companyTel, String companyName1, String deptCount,
			String countGroup, String memberimg) {
		this.no = no;
		this.deptno = deptno;
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.auth = auth;
		this.tel = tel;
		this.mrg = mrg;
		this.dept = dept;
		this.comno = comno;
		this.companyName = companyName;
		this.companyTel = companyTel;
		this.companyName1 = companyName1;
		this.deptCount = deptCount;
		this.countGroup = countGroup;
		this.memberimg = memberimg;
	}


	public String getMemberimg() {
		return memberimg;
	}
	public void setMemberimg(String memberimg) {
		this.memberimg = memberimg;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getMrg() {
		return mrg;
	}
	public void setMrg(String mrg) {
		this.mrg = mrg;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getComno() {
		return comno;
	}
	public void setComno(String comno) {
		this.comno = comno;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCompanyTel() {
		return companyTel;
	}
	public void setCompanyTel(String companyTel) {
		this.companyTel = companyTel;
	}
	public String getCompanyName1() {
		return companyName1;
	}
	public void setCompanyName1(String companyName1) {
		this.companyName1 = companyName1;
	}
	public String getDeptCount() {
		return deptCount;
	}
	public void setDeptCount(String deptCount) {
		this.deptCount = deptCount;
	}
	public String getCountGroup() {
		return countGroup;
	}
	public void setCountGroup(String countGroup) {
		this.countGroup = countGroup;
	}
	
	public static class LoginInfo {
		private String id;
		private String pass;
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getPass() {
			return pass;
		}
		public void setPass(String pass) {
			this.pass = pass;
		}
		
	}
	
}
