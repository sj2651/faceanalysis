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
<title>Generic Page - Massively by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="design/css/detail.css" />
<noscript>
	<link rel="stylesheet" href="design/css/noscript.css" />
</noscript>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#modify").click(function() {
			document.frm.action = '<c:url value="requestModify.do" ></c:url>';
			document.frm.submit();
		});
		$("#delete")
				.click(
						function() {
							document.frm.action = '<c:url value="requestDeleteOK.do" ></c:url>';
							document.frm.submit();
						});
		$("#makeCommentButton").click(function() {
			document.frm.action = '<c:url value="CommentOK.do" ></c:url>';
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
				<li><a href="detail1.html">Brand</a></li>
				<li class="active"><a href="detail2.html">Category</a></li>
				<li><a href="detail3.html">Q/A</a></li>
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
					<span class="date">April 25, 2017</span>
					<h1>${RBVo.a_title}</h1>
					<p>${RBVo.m_name}</p>
				</header>

				<p>${RBVo.a_content}</p>

				<form action="" name="frm" method="post">
					<input value="${RBVo.a_no}" name="articleNo" hidden="hidden">
					<div>
						<input type="button" value="변경" id="modify" /> 
						<input type="button" value="삭제" id="delete" />
					</div>
					<br/>
					<div>
						<table>
							<c:forEach items="${commentList}" var="commentVo">
								<tr>
									<td>
										${commentVo.c_content}
									</td>
									<td>
										${commentVo.c_reg}
									</td>
								</tr>
							</c:forEach>
						</table>
					</div>

					<br /> 
					<input type="hidden" name="commentArticleNo" value="${RBVo.a_no}" hidden="hidden" /> 
					<input type="text" name="commentContent" />
					<div id="makeCommentButton">댓글작성</div>
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