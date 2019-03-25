<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my"%>
<!DOCTYPE html>
<html>
<head>
<title>Epilogue by TEMPLATED</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="design/css/list.css" />
<!--<link rel="stylesheet" href="design/css/detail.css" />-->
</head>
<body class="is-loading">
	<!-- Wrapper -->
<<<<<<< HEAD
<div id ="box">
	<div id="container">
		<div id="wrapper">
	
			<!-- Items -->
			<section class="main items"">
				<c:forEach var="product" items="${ products }">
					<article class="item">
						<header>
							<a href="AromaDetail.do?p_no=${product.p_no}"><img
								src="${product.p_img}" alt="" width=100%; height=100%; /></a>
							<h3 style="margin: 10%;">${product.p_name}</h3>
						</header>
						<h4 style="margin-right: 23%; font-weight: bold; color: #0000CC;">Brand
							Name</h4>
						<h4 style="margin-right: 23%;">${product.p_brand}</h4>
						<h4 style="margin-right: 23%; font-weight: bold; color: #0000CC;">Category</h4>
						<h4 style="margin-right: 25%;">${product.p_cate}</h4>
						<ul class="actions">
							<li style="margin-right: 25%;"><a href="#" class="button">More</a></li>
						</ul>
					</article>
				</c:forEach>
			</section>
			<!-- CTA -->
	
			<section id="cta" class="main special">
				<h2>Etiam veroeros lorem</h2>
				<p>
					Phasellus ac augue ac magna auctor tempus proin<br /> accumsan
					lacus a nibh commodo in pellentesque dui<br /> in hac habitasse
					platea dictumst.
				</p>
				<ul class="actions">
					<li><a href="#" class="button big">Get Started</a></li>
				</ul>
			</section>
			-->
			<!-- Main -->
			<!--
						<section id="main" class="main">
							<header>
								<h2>Lorem ipsum dolor</h2>
							</header>
							<p>Fusce malesuada efficitur venenatis. Pellentesque tempor leo sed massa hendrerit hendrerit. In sed feugiat est, eu congue elit. Ut porta magna vel felis sodales vulputate. Donec faucibus dapibus lacus non ornare. Etiam eget neque id metus gravida tristique ac quis erat. Aenean quis aliquet sem. Ut ut elementum sem. Suspendisse eleifend ut est non dapibus. Nulla porta, neque quis pretium sagittis, tortor lacus elementum metus, in imperdiet ante lorem vitae ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam eget neque id metus gravida tristique ac quis erat. Aenean quis aliquet sem. Ut ut elementum sem. Suspendisse eleifend ut est non dapibus. Nulla porta, neque quis pretium sagittis, tortor lacus elementum metus, in imperdiet ante lorem vitae ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
						</section>
					-->
	
			<!-- Footer -->
			<footer id="footer">
				<ul class="icons">
					<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon fa-facebook"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon fa-linkedin"><span
							class="label">LinkedIn</span></a></li>
					<li><a href="#" class="icon fa-envelope"><span
							class="label">Email</span></a></li>
				</ul>
				<p class="copyright">
					&copy; Untitled. Design: <a href="https://templated.co">TEMPLATED</a>.
					Images: <a href="https://unsplash.com">Unsplash</a>.
				</p>
			</footer>
	
=======
	<div id="wrapper" class="fade-in">
		<header id="header">
			<div class="inner">
				<!--  <h1>Epilogue</h1>
					<p>A free responsive site template by <a href="https://templated.co">TEMPLATED</a></p>-->
				<img class="logo" src="./images/mainlogo.png"
					style="max-width: 100%; height: auto;">
			</div>
		</header>
		<!-- Nav -->
		<nav id="nav">
			<ul class="links">
				<li><a href="detail1.do">Brand</a></li>
				<li><a href="detail2.do">Category</a></li>
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
			<!-- Items -->
			<section class="main items">
				<form:form method="get" modelAttribute="pagination">
					<form:hidden path="pg" value="1" />
				</form:form>
				<c:forEach var="product" items="${ products }">
					<article class="item">
						<header>
							<a href="detail.do?p_no=${product.p_no}"><img
								src="${product.p_img}" alt="" width=100%; height=100%; /></a>
							<h3 style="margin: 10%;">${product.p_name}</h3>
						</header>
						<h4 style="margin-right: 23%; font-weight: bold; color: #0000CC;">Brand
							Name</h4>
						<h4 style="margin-right: 23%;">${product.p_brand}</h4>
						<h4 style="margin-right: 23%; font-weight: bold; color: #0000CC;">Category</h4>
						<h4 style="margin-right: 25%;">${product.p_cate}</h4>
						<ul class="actions">
							<li style="margin-right: 25%;"><a href="#" class="button">More</a></li>
						</ul>
					</article>
				</c:forEach>
			</section>
			<my:pagination pageSize="${ pagination.sz }"
				recordCount="${ pagination.recordCount }" />

			<!-- CTA -->

			<section id="cta" class="main special">
				<h2>Etiam veroeros lorem</h2>
				<p>
					Phasellus ac augue ac magna auctor tempus proin<br /> accumsan
					lacus a nibh commodo in pellentesque dui<br /> in hac habitasse
					platea dictumst.
				</p>
				<ul class="actions">
					<li><a href="#" class="button big">Get Started</a></li>
				</ul>
			</section>

			<!-- Footer -->
			<footer id="footer">
				<ul class="icons">
					<li><a href="#" class="icon fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon fa-facebook"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon fa-linkedin"><span
							class="label">LinkedIn</span></a></li>
					<li><a href="#" class="icon fa-envelope"><span
							class="label">Email</span></a></li>
				</ul>
				<p class="copyright">
					&copy; Untitled. Design: <a href="https://templated.co">TEMPLATED</a>.
					Images: <a href="https://unsplash.com">Unsplash</a>.
				</p>
			</footer>
>>>>>>> branch 'master' of https://github.com/sj2651/faceanalysis.git
		</div>
	</div>
<<<<<<< HEAD
</div>
=======
>>>>>>> branch 'master' of https://github.com/sj2651/faceanalysis.git
	<!-- Scripts -->
	<script src="design/js/jquery.min.js"></script>
	<script src="design/js/skel.min.js"></script>
	<script src="design/js/util.js"></script>
	<script src="design/js/main.js"></script>

</body>
</html>