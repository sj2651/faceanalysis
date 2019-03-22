<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청글 추가</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#submitbtn").click(function(){
			document.frm.action = '<c:url value="requestAddOK.do" ></c:url>';
			document.frm.submit();
		});
	});
</script>
</head>
<body>

<!-- 확인 후 method post로 변경 -->
<!-- http://localhost:9090/faceanalysis/requestAddOK.do -->
<form action="" method="get" name="frm"  >
	<table>
		<tr>
			<th>제목</th>
			<td> <input type="text" id="title" name="title"/> </td>
		</tr>
		<tr>
			<th>작성자</th>
			<td> <!-- 로그인한 사람의 이름 --> </td>
		</tr>
		<tr>
			<th>내용</th>
			<td> <textarea rows="20" cols="50" id="content" name="content" ></textarea> </td>
		</tr>
	</table>
	
	<input type="button" value="글작성" id="submitbtn"/>
</form>

</body>
</html>