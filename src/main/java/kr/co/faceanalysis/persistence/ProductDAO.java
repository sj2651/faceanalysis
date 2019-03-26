package kr.co.faceanalysis.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.faceanalysis.vo.Option;
import kr.co.faceanalysis.vo.Pagination;
import kr.co.faceanalysis.vo.ProductVO;

@Repository
public class ProductDAO implements Product_impl{

	@Autowired
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}

	@Override
	public List<ProductVO> findAllProduct(Pagination pagination) {
		int count = ss.selectOne("count", pagination);
		pagination.setRecordCount(count);
		return ss.selectList("findAllProduct", pagination);
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

	@Override
	public List<ProductVO> findByAroma(Pagination pagination) {
		int count = ss.selectOne("count", pagination);
		pagination.setRecordCount(count);
		return ss.selectList("findByAroma", pagination);
	}

	@Override
	public List<ProductVO> findByApril(Pagination pagination) {
		int count = ss.selectOne("count", pagination);
		pagination.setRecordCount(count);
		return ss.selectList("findByApril", pagination);
	}

	@Override
	public List<ProductVO> findByBbia(Pagination pagination) {
		int count = ss.selectOne("count", pagination);
		pagination.setRecordCount(count);
		return ss.selectList("findByBbia", pagination);
	}

	@Override
	public List<ProductVO> findByMili(Pagination pagination) {
		int count = ss.selectOne("count", pagination);
		pagination.setRecordCount(count);
		return ss.selectList("findByMili", pagination);
	}

	@Override
	public List<ProductVO> findByBase(Pagination pagination) {
		int count = ss.selectOne("count", pagination);
		pagination.setRecordCount(count);
		return ss.selectList("findByBase", pagination);
	}

	@Override
	public List<ProductVO> findByMakeup(Pagination pagination) {
		int count = ss.selectOne("count", pagination);
		pagination.setRecordCount(count);
		return ss.selectList("findByMakeup", pagination);
	}

	@Override
	public List<ProductVO> findByHairbody(Pagination pagination) {
		int count = ss.selectOne("count", pagination);
		pagination.setRecordCount(count);
		return ss.selectList("findByHairbody", pagination);
	}

	@Override
	public List<ProductVO> findBySkincare(Pagination pagination) {
		int count = ss.selectOne("count", pagination);
		pagination.setRecordCount(count);
		return ss.selectList("findBySkincare", pagination);
	}

	@Override
	public ProductVO findByName(String p_name) {
		// TODO Auto-generated method stub
		return ss.selectOne("findByName", p_name);
	}

	@Override
	public ProductVO findById(int p_no) {
		// TODO Auto-generated method stub
		return ss.selectOne("findById", p_no);
	}
	
	public Option[] getOrderByOptions() {
		return orderBy;
	}
	
	public Option[] getSearchByOptions() {
		return searchBy;
	}

}
