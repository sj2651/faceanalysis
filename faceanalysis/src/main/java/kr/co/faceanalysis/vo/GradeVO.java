package kr.co.faceanalysis.vo;

public class GradeVO {
	private String GName;
	private String GGrade;
	
	//전부
	public GradeVO(String gName, String gGrade) {
		super();
		GName = gName;
		GGrade = gGrade;
	}

	//get set
	public String getGName() {
		return GName;
	}

	public void setGName(String gName) {
		GName = gName;
	}

	public String getGGrade() {
		return GGrade;
	}

	public void setGGrade(String gGrade) {
		GGrade = gGrade;
	}
	
	
	

}
