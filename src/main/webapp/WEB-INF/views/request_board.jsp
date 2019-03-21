<%@page import="kr.co.faceanalysis.vo.ArticleVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.faceanalysis.vo.MemberVO"%>
<%@page import="kr.co.faceanalysis.persistence.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청게시판</title>
</head>
<body>
<% 
	MemberDAO m_dao = new MemberDAO();

/* 페이지당 10개씩만 나오도록 구현 (예정) 	
	int pageNumber;
	if(request.getParameter("pageNumber") != null){
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
	else{
		pageNumber = 1;
	} 
*/
%>

	<h3>요청게시판</h3>
	<table>
		<tr>
			<th>게시글 번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>날짜</th>
		</tr>

	<c:forEach items="${requestList}" var="requestArticleList" >
		<tr>
			<td>${requestArticleList.a_no}</td>
			<td>${requestArticleList.a_title}</td>
			<td>${requestArticleList.m_name}</td>
			<td>${requestArticleList.a_reg}</td>
		</tr>
	</c:forEach>


	</table>
	<div>
		<a href="<c:url value="/request_add.do"/>">글 작성</a>
	</div>
	게시글 넘기기용 번호(예정)

</body>
</html>