package kr.co.faceanalysis.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.co.faceanalysis.vo.ProductVO;

public interface Product_impl  {
	List<ProductVO> findAllProduct();
	List<ProductVO> findByBrand(String p_brand);
	List<ProductVO> findByCate(String p_cate);
	List<ProductVO> findByName(String p_name);
	ProductVO findById(int p_no);
}
