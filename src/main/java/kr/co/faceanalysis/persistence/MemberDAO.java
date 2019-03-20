package kr.co.faceanalysis.persistence;

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
	public int member_check(String m_id, String m_pwd) {
		System.out.println("dao 시작");
		System.out.println("m_id : " + m_id);
		System.out.println("m_pwd : " + m_pwd);
		
		MemberVO vo = new MemberVO();
		vo.setM_id(m_id);
		vo.setM_pwd(m_pwd);		
		
		System.out.println(vo.getM_id());
		
		return ss.selectOne("selectMember", vo);
	}


	
	
}
