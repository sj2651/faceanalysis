package kr.co.faceanalysis.persistence;

import java.io.Console;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.faceanalysis.vo.MemberVO;

@Repository
public class MemberDAO implements Member_imple{
	
	@Autowired
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<MemberVO> member_selectAll() {
		return ss.selectList("selectAllMember");
	}

	@Override
	public boolean member_check(MemberVO mvo) {
		
		System.out.println(mvo.getM_id());
		System.out.println(mvo.getM_pwd());
		
		if(ss.selectOne("selectMember", mvo) != null) {
			return true;
			
		}else {
			return false;
		}
		
	}

	@Override
	public void insertMember(MemberVO mvo) {
		ss.insert("insertMember", mvo);
		
	}

	@Override
	public boolean idDuple(String m_id) {
		
		boolean result = false;
		
		if(ss.selectOne("idDuple", m_id) != null) {
			result = true;
		}
			
		return result;
	}


	
	
}
