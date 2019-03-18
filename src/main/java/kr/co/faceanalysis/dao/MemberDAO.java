package kr.co.faceanalysis.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.faceanalysis.dto.MemberDTO;

@Repository
public class MemberDAO implements DAO{
	
	@Inject
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	@Override
	public List<MemberDTO> member_selectAll() {
		
		return ss.selectList("selectAllMember");
	}
	
}
