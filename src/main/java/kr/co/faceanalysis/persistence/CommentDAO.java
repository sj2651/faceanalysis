package kr.co.faceanalysis.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.faceanalysis.vo.CommentVO;

@Repository
public class CommentDAO {

	@Autowired
	SqlSession ss;
	
	public List<CommentVO> selectAllFromA_No(int articleNo){
		return ss.selectList("selectAllOfThisArticlesComment", articleNo);
	}
	
	public void insertOne(CommentVO vo){
		ss.insert("insertOneComment", vo);
	}
	public void insertOneRecomment(CommentVO vo){
		ss.insert("insertOneRecomment", vo);
	}
}
