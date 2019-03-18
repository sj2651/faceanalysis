package kr.co.faceanalysis.vo;

public class ArticleVO {
	
	private int a_no; 
	private int m_no;
	private int a_cate;
	private String a_title;
	private String a_content;
	private String a_reg;
	
	public ArticleVO() {
		// TODO Auto-generated constructor stub
	}
	//전부

	public ArticleVO(int a_no, int m_no, int a_cate, String a_title, String a_content, String a_reg) {
		super();
		this.a_no = a_no;
		this.m_no = m_no;
		this.a_cate = a_cate;
		this.a_title = a_title;
		this.a_content = a_content;
		this.a_reg = a_reg;
	}
	
	// get setter

	public int getA_no() {
		return a_no;
	}

	public void setA_no(int a_no) {
		this.a_no = a_no;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public int getA_cate() {
		return a_cate;
	}

	public void setA_cate(int a_cate) {
		this.a_cate = a_cate;
	}

	public String getA_title() {
		return a_title;
	}

	public void setA_title(String a_title) {
		this.a_title = a_title;
	}

	public String getA_content() {
		return a_content;
	}

	public void setA_content(String a_content) {
		this.a_content = a_content;
	}

	public String getA_reg() {
		return a_reg;
	}

	public void setA_reg(String a_reg) {
		this.a_reg = a_reg;
	}
	
	

	
	

}
