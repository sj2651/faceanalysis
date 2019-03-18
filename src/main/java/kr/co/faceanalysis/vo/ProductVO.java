package kr.co.faceanalysis.vo;

public class ProductVO {
	private int p_no;
	private int m_no;	
	private String p_brand;
	private String p_cate;
	private String p_name;
	private String p_img;
	private String p_detail;
	private String p_ingredient;
	private String p_grade;
	private String p_reg;
	
	public ProductVO() {
		// TODO Auto-generated constructor stub
	}

	public ProductVO(int p_no, int m_no, String p_brand, String p_cate, String p_name, String p_img, String p_detail,
			String p_ingredient, String p_grade, String p_reg) {
		super();
		this.p_no = p_no;
		this.m_no = m_no;
		this.p_brand = p_brand;
		this.p_cate = p_cate;
		this.p_name = p_name;
		this.p_img = p_img;
		this.p_detail = p_detail;
		this.p_ingredient = p_ingredient;
		this.p_grade = p_grade;
		this.p_reg = p_reg;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getP_brand() {
		return p_brand;
	}

	public void setP_brand(String p_brand) {
		this.p_brand = p_brand;
	}

	public String getP_cate() {
		return p_cate;
	}

	public void setP_cate(String p_cate) {
		this.p_cate = p_cate;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public String getP_detail() {
		return p_detail;
	}

	public void setP_detail(String p_detail) {
		this.p_detail = p_detail;
	}

	public String getP_ingredient() {
		return p_ingredient;
	}

	public void setP_ingredient(String p_ingredient) {
		this.p_ingredient = p_ingredient;
	}

	public String getP_grade() {
		return p_grade;
	}

	public void setP_grade(String p_grade) {
		this.p_grade = p_grade;
	}

	public String getP_reg() {
		return p_reg;
	}

	public void setP_reg(String p_reg) {
		this.p_reg = p_reg;
	}
	
	

}
