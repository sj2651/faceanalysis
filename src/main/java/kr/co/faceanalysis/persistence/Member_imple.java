package kr.co.faceanalysis.persistence;

import java.util.List;

import kr.co.faceanalysis.vo.MemberVO;

public interface Member_imple {
	public List<MemberVO> member_selectAll();
	public boolean member_check(MemberVO mvo);
	public void insertMember(MemberVO mvo);
	public boolean idDuple(String m_id);
	
}
