package kr.co.faceanalysis.persistence;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import kr.co.faceanalysis.vo.RequestBoardVO;

@Repository
public class RequestBoardDAO {
	
	@Autowired
	SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
/*	//요청 게시판 번호 = 5(임시)
	public List<RequestBoardVO> selectAll(int pageNo){
		return ss.selectList("selectRequstBoardAll",pageNo);
	}
	
	public RequestBoardVO selectOne(int ano){
		return ss.selectOne("selectRequstBoardOne",ano);
	}*/

}
