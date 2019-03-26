package kr.co.faceanalysis.persistence;

import java.util.List;

import kr.co.faceanalysis.vo.Option;
import kr.co.faceanalysis.vo.Pagination;
//import kr.co.faceanalysis.vo.Option;
import kr.co.faceanalysis.vo.ProductVO;

public interface Product_impl {

	List<ProductVO> findAllProduct(Pagination pagination);

	List<ProductVO> findByAroma(Pagination pagination);

	List<ProductVO> findByApril(Pagination pagination);

	List<ProductVO> findByBbia(Pagination pagination);

	List<ProductVO> findByMili(Pagination pagination);

	List<ProductVO> findByBase(Pagination pagination);

	List<ProductVO> findByMakeup(Pagination pagination);

	List<ProductVO> findByHairbody(Pagination pagination);

	ProductVO findByName(String p_name);

	ProductVO findById(int p_no);

	void insert(ProductVO productVO);

	void update(ProductVO productVO);

	void delete(int p_no);


	List<ProductVO> findBySkincare(Pagination pagination);

	Option[] searchBy = { new Option(0, "검색 없음"), new Option(1, "브랜드명"), new Option(2, "카테고리명"), new Option(3, "제품명") };
	Option[] searchByBrand = { new Option(0, "검색 없음"), new Option(1, "브랜드명"), new Option(3, "제품명") };
	Option[] searchByCate = { new Option(0, "검색 없음"), new Option(2, "카테고리명"), new Option(3, "제품명") };
	Option[] orderBy = { new Option(0, "최근 글"), new Option(1, "오래된 글") };
}
