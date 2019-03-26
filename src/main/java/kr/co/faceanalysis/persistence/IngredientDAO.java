package kr.co.faceanalysis.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.faceanalysis.vo.IngredientVO;

@Repository
public class IngredientDAO implements Ingredient_imple{
	
	@Autowired
	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	@Override
	public List<IngredientVO> ingredient_selectAll() {
		
		return ss.selectList("selectAllIngredient");
	}
	

}
