<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<!--
	Massively by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>요청글추가</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="design/css/detail.css" />
<noscript>
	<link rel="stylesheet" href="design/css/noscript.css" />
</noscript>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#submitbtn").click(function(){
			document.frm.action = '<c:url value="requestModifyOK.do" ></c:url>';
			document.frm.submit();
		});
	});
</script>
</head>
<body class="is-loading">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<img class="logo" src="./images/mainlogo.png"
				style="max-width: 100%; height: auto;">
		</header>

		<!-- Nav -->
		<nav id="nav">
			<ul class="links">
				<li><a href="detail1.do">Brand</a></li>
				<li class="active"><a href="detail2.do">Category</a></li>
				<li><a href="detail3.do">Q/A</a></li>
			</ul>
			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Post -->
			<section class="post">
				<header class="major">
					<span class="date">요청글변경</span>
				</header>
				<!-- http://localhost:9090/faceanalysis/requestAddOK.do -->
			<form action="" method="post" name="frm"  >
			<input type="hidden" name="articleNo" value ="${requestBoardVo.a_no}"/>
				<table>
					<tr>
						<th>제목</th>
						<td> <input type="text" id="title" name="title" value="${requestBoardVo.a_title}"/> </td>
					</tr>
					<tr>
						<th>작성자</th>
						<td> ${requestBoardVo.m_name} </td>
					</tr>
					<tr>
						<th>내용</th>
						<td> <textarea rows="20" cols="50" id="content" name="content" >${requestBoardVo.a_content}</textarea> </td>
					</tr>
				</table>
				
				<input type="button" value="글 수정" id="submitbtn"  style="margin: 0 auto"/>
			</form>
				
			</section>
						
			

		</div>

		<!-- Footer -->
		<footer id="footer">
			<section>
				<form method="post" action="#">
					<div class="field">
						<label for="name">Name</label> <input type="text" name="name"
							id="name" />
					</div>
					<div class="field">
						<label for="email">Email</label> <input type="text" name="email"
							id="email" />
					</div>
					<div class="field">
						<label for="message">Message</label>
						<textarea name="message" id="message" rows="3"></textarea>
					</div>
					<ul class="actions">
						<li><input type="submit" value="Send Message" /></li>
					</ul>
				</form>
			</section>
			<section class="split contact">
				<section class="alt">
					<h3>Address</h3>
					<p>
						1234 Somewhere Road #87257<br /> Nashville, TN 00000-0000
					</p>
				</section>
				<section>
					<h3>Phone</h3>
					<p>
						<a href="#">(000) 000-0000</a>
					</p>
				</section>
				<section>
					<h3>Email</h3>
					<p>
						<a href="#">info@untitled.tld</a>
					</p>
				</section>
				<section>
					<h3>Social</h3>
					<ul class="icons alt">
						<li><a href="#" class="icon alt fa-twitter"><span
								class="label">Twitter</span></a></li>
						<li><a href="#" class="icon alt fa-facebook"><span
								class="label">Facebook</span></a></li>
						<li><a href="#" class="icon alt fa-instagram"><span
								class="label">Instagram</span></a></li>
						<li><a href="#" class="icon alt fa-github"><span
								class="label">GitHub</span></a></li>
					</ul>
				</section>
			</section>
		</footer>

		<!-- Copyright -->
		<div id="copyright">
			<ul>
				<li>&copy; Untitled</li>
				<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>

	</div>

	<!-- Scripts -->
	<script src="design/js/jquery.min.js"></script>
	<script src="design/js/jquery.scrollex.min.js"></script>
	<script src="design/js/jquery.scrolly.min.js"></script>
	<script src="design/js/skel.min.js"></script>
	<script src="design/js/util.js"></script>
	<script src="design/js/detailmain.js"></script>

</body>
</html>