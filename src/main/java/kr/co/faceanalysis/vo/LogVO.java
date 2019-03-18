package kr.co.faceanalysis.vo;

public class LogVO {
	private int a_no;
	private String l_date;
	private String l_ip;
	private String l_m_no;
	
	public LogVO() {
		// TODO Auto-generated constructor stub
	}

	public LogVO(int a_no, String l_date, String l_ip, String l_m_no) {
		super();
		this.a_no = a_no;
		this.l_date = l_date;
		this.l_ip = l_ip;
		this.l_m_no = l_m_no;
	}

	public int getA_no() {
		return a_no;
	}

	public void setA_no(int a_no) {
		this.a_no = a_no;
	}

	public String getL_date() {
		return l_date;
	}

	public void setL_date(String l_date) {
		this.l_date = l_date;
	}

	public String getL_ip() {
		return l_ip;
	}

	public void setL_ip(String l_ip) {
		this.l_ip = l_ip;
	}

	public String getL_m_no() {
		return l_m_no;
	}

	public void setL_m_no(String l_m_no) {
		this.l_m_no = l_m_no;
	}
	

}
