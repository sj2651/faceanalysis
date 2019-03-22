package kr.co.faceanalysis.vo;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class RequestBoardVO {
	
	private int a_no;
	private String a_title;
	private String m_name;
	private String a_reg;
	private String a_content; 
	
	
	public RequestBoardVO(int a_no, String a_title, String m_name, Timestamp a_reg, String a_content) {
		super();
		this.a_no = a_no;
		this.a_title = a_title;
		this.m_name = m_name;
		this.a_reg = new SimpleDateFormat("yyyy-MM-dd").format(a_reg);
		this.a_content = a_content;
	}
	
	
	public int getA_no() {
		return a_no;
	}
	public void setA_no(int a_no) {
		this.a_no = a_no;
	}
	public String getA_title() {
		return a_title;
	}
	public void setA_title(String a_title) {
		this.a_title = a_title;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getA_reg() {
		return a_reg;
	}
	public void setA_reg(Timestamp a_reg) {
		this.a_reg = new SimpleDateFormat("yyyy-MM-dd").format(a_reg);
	}


	public String getA_content() {
		return a_content;
	}


	public void setA_content(String a_content) {
		this.a_content = a_content;
	}
	
	

}
