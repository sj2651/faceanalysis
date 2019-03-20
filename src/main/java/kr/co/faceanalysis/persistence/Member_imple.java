package kr.co.faceanalysis.persistence;

import java.util.List;

import kr.co.faceanalysis.vo.MemberVO;

public interface Member_imple {
	public List<MemberVO> member_selectAll();
	int member_check(String m_id, String m_pwd);
	
	
}
