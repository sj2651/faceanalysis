package kr.co.faceanalysis.vo;

public class MemberVO {
	private int MNo;
	private String MName;
	private String MId;
	private String MPwd;
	private String MEmail;
	private String MAddr1;
	private String MAddr2;
	private String MType;
	private int MGender;
	private String MReg;
	private int MAuth;
	
	
	// 전부입력
	public MemberVO(int mNo, String mName, String mId, String mPwd, String mEmail, String mAddr1, String mAddr2,
			String mType, int mGender, String mReg, int mAuth) {
		MNo = mNo;
		MName = mName;
		MId = mId;
		MPwd = mPwd;
		MEmail = mEmail;
		MAddr1 = mAddr1;
		MAddr2 = mAddr2;
		MType = mType;
		MGender = mGender;
		MReg = mReg;
		MAuth = mAuth;
	}
	
	
	//get set
	public int getMNo() {
		return MNo;
	}

	public void setMNo(int mNo) {
		MNo = mNo;
	}

	public String getMName() {
		return MName;
	}

	public void setMName(String mName) {
		MName = mName;
	}

	public String getMId() {
		return MId;
	}

	public void setMId(String mId) {
		MId = mId;
	}

	public String getMPwd() {
		return MPwd;
	}

	public void setMPwd(String mPwd) {
		MPwd = mPwd;
	}

	public String getMEmail() {
		return MEmail;
	}

	public void setMEmail(String mEmail) {
		MEmail = mEmail;
	}

	public String getMAddr1() {
		return MAddr1;
	}

	public void setMAddr1(String mAddr1) {
		MAddr1 = mAddr1;
	}

	public String getMAddr2() {
		return MAddr2;
	}

	public void setMAddr2(String mAddr2) {
		MAddr2 = mAddr2;
	}

	public String getMType() {
		return MType;
	}

	public void setMType(String mType) {
		MType = mType;
	}

	public int getMGender() {
		return MGender;
	}

	public void setMGender(int mGender) {
		MGender = mGender;
	}

	public String getMReg() {
		return MReg;
	}

	public void setMReg(String mReg) {
		MReg = mReg;
	}

	public int getMAuth() {
		return MAuth;
	}

	public void setMAuth(int mAuth) {
		MAuth = mAuth;
	}
	
	
	

	

}
