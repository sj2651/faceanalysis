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
<title>Massively by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="design/css/detail.css" />

</head>
<body class="is-loading">

	<!-- Wrapper -->
	<div id="wrapper" class="fade-in">

		<!-- Intro -->
		<div id="intro">
			<img src="./images/mainlogo2.png">
			<!--<ul class="actions">
							<li><a href="#header" class="button icon solo fa-arrow-down scrolly">Continue</a></li>
						</ul> -->
		</div>

		<!-- Header -->
		<header id="header">
			<img class="logo" src="./images/mainlogo.png"
				style="max-width: 100%; height: auto;">
		</header>

		<!-- Nav -->
		<nav id="nav">
			<ul class="links">
				<li class="active"><a href="detail1.do">Brand</a></li>
				<li><a href="detail2.do">Category</a></li>
				<li><a href="requestBoard.do">Q/A</a></li>
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
			<div>
				<a href="admin/ProductCreate.do">화장품 추가 등록 </a>
				<a href="admin/ProductAllList.do" style="margin-left:10%">관리자용 화장품정보 </a>
			</div>
			<!-- Featured Post -->
			<article class="post featured">
				<header class="major">
					<span class="date">Brand name</span>
				</header>
					<!--<h2><a href="#">And this is a<br />
									massive headline</a></h2>
									<p>Aenean ornare velit lacus varius enim ullamcorper proin aliquam<br />
									facilisis ante sed etiam magna interdum congue. Lorem ipsum dolor<br />
									amet nullam sed etiam veroeros.</p>
								</header>
								<a href="#" class="image main"><img src="images/pic01.jpg" alt="" /></a>
								<ul class="actions">
									<li><a href="#" class="button big">Full Story</a></li>
								</ul>-->

					<ul class="actions">
						<li><a href="./AromaList.do?${ paginationQuery }"><img
								src="./images/aroma.png" style="width: 280px; height: 200px;"></a></li>
						<li><a href="./AprilList.do?${ paginationQuery }"><img
								src="./images/april.png" style="width: 280px; height: 200px;"></a></li>
						<li><a href="./MiliList.do?${ paginationQuery }"><img src="./images/mili.png"
								style="width: 280px; height: 200px;"></a></li>
						<li><a href="./BbiaList.do?${ paginationQuery }"><img src="./images/bbia.png"
								style="width: 280px; height: 200px;"></a></li>
					</ul>
			</article>
		</div>

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