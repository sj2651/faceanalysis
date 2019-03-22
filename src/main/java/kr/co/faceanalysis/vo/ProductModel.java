package kr.co.faceanalysis.vo;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class ProductModel {
	int p_no;

	@NotEmpty(message = "카테고리를 입력하세요")
	String p_cate;

	@Size(min = 13, message = "브랜드명을 입력하세요")
	String p_brand;
}
