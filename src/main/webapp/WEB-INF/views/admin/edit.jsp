<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="design/css/detail.css" />
</head>
<body>
	<section>
	<h1>화장품 정보 ${ product.p_no > 0 ? "수정" : "등록" }</h1>
	<form method="POST" modelAttribute="ProductVO" id="frm">
		<div class="field">
			<label for="brand">Brand</label> <select name="p_brand">
				<option value="">브랜드를 선택하세요</option>
				<option value="aromatica">아로마티카</option>
				<option value="aprilskin">에이프릴스킨</option>
				<option value="bbia">삐아</option>
				<option value="milimage">밀리마쥬</option>
			</select>
		</div>

		<div class="field">
			<label for="category">Category</label> <select name="p_cate">
				<option value="">카테고리를 선택하세요</option>
				<option value="base">베이스</option>
				<option value="makeup">메이크업</option>
				<option value="hairbody">헤어/바디</option>
				<option value="skincare">스킨케어</option>

			</select>
		</div>
		<div class="field">
			<label for="name">NAME</label> <input type="text" name="p_name" />
		</div>
		<div class="field">
			<label for="img">IMG</label> <input type="text" name="p_img" />
		</div>
		<div class="field">
			<label for="detail">Detail</label>
			<textarea name="p_detail" rows="3"></textarea>
		</div>
		<div class="field">
			<label for="ingredient">INGREDIENT</label>
			<textarea name="p_ingredient" rows="3"></textarea>
		</div>

		<div class="field">
			<label for="grade">GRADE</label> <input type="text" name="p_grade" />
		</div>
	</form>
	<ul class="actions">
		<a href="#" onclick="document.getElementById('frm').submit();" value="저장 ">저장</a> 
		<c:if test="${ product.p_no > 0 }">
				<a href="ProductDelete.do?p_no=${ product.p_no }">삭제</a>
			</c:if>
	</ul>
	</section>
</body>
</html>