package kr.co.faceanalysis.vo;

public class ArticleVO {
	
	private int ANo; 
	private int MNo;
	private int ACate;
	private String ATitle;
	private String AContent;
	private String AReg;
	
	//전부
	public ArticleVO(int aNo, int mNo, int aCate, String aTitle, String aContent, String aReg) {
		super();
		ANo = aNo;
		MNo = mNo;
		ACate = aCate;
		ATitle = aTitle;
		AContent = aContent;
		AReg = aReg;
	}
	
	//get setter
	public int getANo() {
		return ANo;
	}

	public void setANo(int aNo) {
		ANo = aNo;
	}

	public int getMNo() {
		return MNo;
	}

	public void setMNo(int mNo) {
		MNo = mNo;
	}

	public int getACate() {
		return ACate;
	}

	public void setACate(int aCate) {
		ACate = aCate;
	}

	public String getATitle() {
		return ATitle;
	}

	public void setATitle(String aTitle) {
		ATitle = aTitle;
	}

	public String getAContent() {
		return AContent;
	}

	public void setAContent(String aContent) {
		AContent = aContent;
	}

	public String getAReg() {
		return AReg;
	}

	public void setAReg(String aReg) {
		AReg = aReg;
	}
	
	

}
