package kr.co.faceanalysis.vo;

public class CommentVO {
	
	private int CNo;
	private int ANo;
	private int RCNo;
	private String CContent;
	private String CReg;
	
	//전부
	public CommentVO(int cNo, int aNo, int rCNo, String cContent, String cReg) {
		super();
		CNo = cNo;
		ANo = aNo;
		RCNo = rCNo;
		CContent = cContent;
		CReg = cReg;
	}

	//get set
	public int getCNo() {
		return CNo;
	}

	public void setCNo(int cNo) {
		CNo = cNo;
	}

	public int getANo() {
		return ANo;
	}

	public void setANo(int aNo) {
		ANo = aNo;
	}

	public int getRCNo() {
		return RCNo;
	}

	public void setRCNo(int rCNo) {
		RCNo = rCNo;
	}

	public String getCContent() {
		return CContent;
	}

	public void setCContent(String cContent) {
		CContent = cContent;
	}

	public String getCReg() {
		return CReg;
	}

	public void setCReg(String cReg) {
		CReg = cReg;
	}
	
	

}
