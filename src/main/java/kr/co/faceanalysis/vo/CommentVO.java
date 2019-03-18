package kr.co.faceanalysis.vo;

public class CommentVO {
	
	private int c_no;
	private int a_no;
	private int rc_no;
	private String c_content;
	private String c_reg;
	
	public CommentVO() {
		// TODO Auto-generated constructor stub
	}
	
	//전부

	public CommentVO(int c_no, int a_no, int rc_no, String c_content, String c_reg) {
		super();
		this.c_no = c_no;
		this.a_no = a_no;
		this.rc_no = rc_no;
		this.c_content = c_content;
		this.c_reg = c_reg;
	}
	
	//get set

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
	}

	public int getA_no() {
		return a_no;
	}

	public void setA_no(int a_no) {
		this.a_no = a_no;
	}

	public int getRc_no() {
		return rc_no;
	}

	public void setRc_no(int rc_no) {
		this.rc_no = rc_no;
	}

	public String getC_content() {
		return c_content;
	}

	public void setC_content(String c_content) {
		this.c_content = c_content;
	}

	public String getC_reg() {
		return c_reg;
	}

	public void setC_reg(String c_reg) {
		this.c_reg = c_reg;
	}
	

	
	
	
	

}
