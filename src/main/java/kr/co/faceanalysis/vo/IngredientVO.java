package kr.co.faceanalysis.vo;

public class IngredientVO {
	private String i_kname;
	private String i_ename;
	private String i_content;
	private String i_grade;
	private int i_noxious;
	private int i_allergy;
	public IngredientVO(String i_kname, String i_ename, String i_content, String i_grade, int i_noxious,
			int i_allergy) {
		super();
		this.i_kname = i_kname;
		this.i_ename = i_ename;
		this.i_content = i_content;
		this.i_grade = i_grade;
		this.i_noxious = i_noxious;
		this.i_allergy = i_allergy;
	}
	
	public IngredientVO(String i_kname) {
		super();
		this.i_kname = i_kname;
	}

	public String getI_kname() {
		return i_kname;
	}
	public String getI_ename() {
		return i_ename;
	}
	public String getI_content() {
		return i_content;
	}
	public String getI_grade() {
		return i_grade;
	}
	public int getI_noxious() {
		return i_noxious;
	}
	public int getI_allergy() {
		return i_allergy;
	}
	public void setI_kname(String i_kname) {
		this.i_kname = i_kname;
	}
	public void setI_ename(String i_ename) {
		this.i_ename = i_ename;
	}
	public void setI_content(String i_content) {
		this.i_content = i_content;
	}
	public void setI_grade(String i_grade) {
		this.i_grade = i_grade;
	}
	public void setI_noxious(int i_noxious) {
		this.i_noxious = i_noxious;
	}
	public void setI_allergy(int i_allergy) {
		this.i_allergy = i_allergy;
	}
	
	
}
