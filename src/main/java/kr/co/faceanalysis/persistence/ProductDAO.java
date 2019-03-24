package kr.co.faceanalysis.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.faceanalysis.vo.ProductVO;

@Repository
public class ProductDAO implements Product_impl{

	@Autowired
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<ProductVO> findAllProduct() {
		// TODO Auto-generated method stub
		return ss.selectList("findAllProduct");
	}

	@Override
	public List<ProductVO> findByBrand(String p_brand) {
		// TODO Auto-generated method stub
		return ss.selectList("findByBrand", p_brand);
	}

	@Override
	public List<ProductVO> findByCate(String p_cate) {
		// TODO Auto-generated method stub
		return ss.selectList("findByCate", p_cate);
	}

	@Override
	public List<ProductVO> findByName(String p_name) {
		// TODO Auto-generated method stub
		return ss.selectList("findByName", p_name);
	}

	@Override
	public ProductVO findById(int p_no) {
		// TODO Auto-generated method stub
		return ss.selectOne("findById", p_no);
	}

	@Override
	public void insert(ProductVO productVO) {
		ss.insert("insert", productVO);
	}

	@Override
	public void update(ProductVO productVO) {
		ss.update("update", productVO);
	}

	@Override
	public void delete(int p_no) {
		ss.delete("delete", p_no);
	}

}
