package kr.co.faceanalysis.vo;

public class LogVO {
	private int ANo;
	private String LDate;
	private String LIp;
	private String LMNo;
	
	//전부
	public LogVO(int aNo, String lDate, String lIp, String lMNo) {
		super();
		ANo = aNo;
		LDate = lDate;
		LIp = lIp;
		LMNo = lMNo;
	}
	
	// get set
	public int getANo() {
		return ANo;
	}

	public void setANo(int aNo) {
		ANo = aNo;
	}

	public String getLDate() {
		return LDate;
	}

	public void setLDate(String lDate) {
		LDate = lDate;
	}

	public String getLIp() {
		return LIp;
	}

	public void setLIp(String lIp) {
		LIp = lIp;
	}

	public String getLMNo() {
		return LMNo;
	}

	public void setLMNo(String lMNo) {
		LMNo = lMNo;
	}

}
