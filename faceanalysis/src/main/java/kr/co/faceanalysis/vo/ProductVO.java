package kr.co.faceanalysis.vo;

public class ProductVO {
	private int PNo;
	private int MNo;	
	private String PBrand;
	private String PName;
	private String PImg;
	private String PDetail;
	private String PIngredient;
	private String PGrade;
	private String PRed;
	
	//전부입력
	public ProductVO(int pNo, int mNo, String pBrand, String pName, String pImg, String pDetail, String pIngredient,
			String pGrade, String pRed) {
		PNo = pNo;
		MNo = mNo;
		PBrand = pBrand;
		PName = pName;
		PImg = pImg;
		PDetail = pDetail;
		PIngredient = pIngredient;
		PGrade = pGrade;
		PRed = pRed;
	}

	//get, setter
	public int getPNo() {
		return PNo;
	}

	public void setPNo(int pNo) {
		PNo = pNo;
	}

	public int getMNo() {
		return MNo;
	}

	public void setMNo(int mNo) {
		MNo = mNo;
	}

	public String getPBrand() {
		return PBrand;
	}

	public void setPBrand(String pBrand) {
		PBrand = pBrand;
	}

	public String getPName() {
		return PName;
	}

	public void setPName(String pName) {
		PName = pName;
	}

	public String getPImg() {
		return PImg;
	}

	public void setPImg(String pImg) {
		PImg = pImg;
	}

	public String getPDetail() {
		return PDetail;
	}

	public void setPDetail(String pDetail) {
		PDetail = pDetail;
	}

	public String getPIngredient() {
		return PIngredient;
	}

	public void setPIngredient(String pIngredient) {
		PIngredient = pIngredient;
	}

	public String getPGrade() {
		return PGrade;
	}

	public void setPGrade(String pGrade) {
		PGrade = pGrade;
	}

	public String getPRed() {
		return PRed;
	}

	public void setPRed(String pRed) {
		PRed = pRed;
	}
	

	

}
