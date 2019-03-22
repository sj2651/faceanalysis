<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table style="border:1px solid black">
		  		<tr>
		  			<td>${product.p_no}</td>
		  			<td>${product.p_brand}</td>
		  			<td>${product.p_cate}</td>
		  			<td>${product.p_name}</td>
		  			<td>${product.p_img}</td>
		  		</tr>
	 </table>
</body>
</html>