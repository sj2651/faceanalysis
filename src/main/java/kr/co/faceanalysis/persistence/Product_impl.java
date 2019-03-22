package kr.co.faceanalysis.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.co.faceanalysis.vo.Option;
import kr.co.faceanalysis.vo.ProductVO;

public interface Product_impl {
	List<ProductVO> findAllProduct();

	List<ProductVO> findByBrand(String p_brand);

	List<ProductVO> findByCate(String p_cate);

	List<ProductVO> findByName(String p_name);
<<<<<<< HEAD
	ProductVO findById(int p_no);
=======

	ProductVO findById(int p_no);

	Option[] searchBy = { new Option(0, "검색 없음"), new Option(1, "브랜드명"), new Option(2, "카테고리명")};
	Option[] orderBy = { new Option(0, "최근 글"), new Option(1, "오래된 글"), new Option(2, "글쓴이") };

>>>>>>> branch 'master' of https://github.com/sj2651/faceanalysis.git
}
