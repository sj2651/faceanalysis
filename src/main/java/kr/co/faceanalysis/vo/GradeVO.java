package kr.co.faceanalysis.vo;

public class GradeVO {
	private String g_name;
	private int g_grade;
	
	public GradeVO() {
		// TODO Auto-generated constructor stub
	}
	//전부
	
	public GradeVO(String g_name, int g_grade) {
		super();
		this.g_name = g_name;
		this.g_grade = g_grade;
	}

	
	//get set
	public String getG_name() {
		return g_name;
	}

	public void setG_name(String g_name) {
		this.g_name = g_name;
	}

	public int getG_grade() {
		return g_grade;
	}

	public void setG_grade(int g_grade) {
		this.g_grade = g_grade;
	}
	


	
	
	
	

}
