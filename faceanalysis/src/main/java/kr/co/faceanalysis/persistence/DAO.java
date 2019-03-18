package kr.co.faceanalysis.persistence;

import java.util.List;

import kr.co.faceanalysis.dto.MemberDTO;

public interface DAO {
	public List<MemberDTO> member_selectAll();
	 

}
