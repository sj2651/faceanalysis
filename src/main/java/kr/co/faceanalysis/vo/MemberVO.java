package kr.co.faceanalysis.vo;

public class MemberVO {
	private int m_no;
	private String m_name;
	private String m_id;
	private String m_pwd;
	private String m_email;
	private String m_tel;
	private String m_addr1;
	private String m_addr2;
	private int m_type;
	private int m_gender;
	private String m_reg;
	private int m_auth;
	
	public MemberVO() {
		// TODO Auto-generated constructor stub
	}

	public MemberVO(int m_no, String m_name, String m_id, String m_pwd, String m_email, String m_tel, String m_addr1,
			String m_addr2, int m_type, int m_gender, String m_reg, int m_auth) {
		super();
		this.m_no = m_no;
		this.m_name = m_name;
		this.m_id = m_id;
		this.m_pwd = m_pwd;
		this.m_email = m_email;
		this.m_tel = m_tel;
		this.m_addr1 = m_addr1;
		this.m_addr2 = m_addr2;
		this.m_type = m_type;
		this.m_gender = m_gender;
		this.m_reg = m_reg;
		this.m_auth = m_auth;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_pwd() {
		return m_pwd;
	}

	public void setM_pwd(String m_pwd) {
		this.m_pwd = m_pwd;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_tel() {
		return m_tel;
	}

	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}

	public String getM_addr1() {
		return m_addr1;
	}

	public void setM_addr1(String m_addr1) {
		this.m_addr1 = m_addr1;
	}

	public String getM_addr2() {
		return m_addr2;
	}

	public void setM_addr2(String m_addr2) {
		this.m_addr2 = m_addr2;
	}

	public int getM_type() {
		return m_type;
	}

	public void setM_type(int m_type) {
		this.m_type = m_type;
	}

	public int getM_gender() {
		return m_gender;
	}

	public void setM_gender(int m_gender) {
		this.m_gender = m_gender;
	}

	public String getM_reg() {
		return m_reg;
	}

	public void setM_reg(String m_reg) {
		this.m_reg = m_reg;
	}

	public int getM_auth() {
		return m_auth;
	}

	public void setM_auth(int m_auth) {
		this.m_auth = m_auth;
	}
	
	
	
	
	

	

}
