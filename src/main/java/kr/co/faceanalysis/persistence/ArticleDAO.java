package kr.co.faceanalysis.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.faceanalysis.vo.ArticleVO;

@Repository
public class ArticleDAO implements Ariticle_imple{
	
	@Autowired
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<ArticleVO> article_selectAll() {
		// TODO Auto-generated method stub
		return ss.selectList("selectAllArticle");
	}
	
	public ArticleVO article_selectOne(int a_no) {
		return ss.selectOne("selectOneArticle",a_no);
	}
	
	//insertOneArticle
	public void article_insertOne(ArticleVO vo) {
		ss.insert("insertOneArticle",vo);
		
	}
		
}
