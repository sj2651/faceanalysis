<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!DOCTYPE HTML>
<!--
	Epilogue by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<jsp:include page="./naviindex.jsp"></jsp:include>
<head>
<title>Epilogue by TEMPLATED</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="design/css/list.css" />
	<link rel="stylesheet" href="design/css/template.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<script>
			
			$(document).ready(function(){
					var name = '<c:out value="${product.p_brand }"/>';
					console.log(name);

					if(name=="aromatica"){
						$('#wrapper #nino-story').css("background-color","#f5f5f5");
						$('#wrapper #nino-services').css("background-color","#f5f5f5");
					}
				 });
				
			</script>
</head>
<body>

	<!-- Header -->

	<header id="header" class="alt">
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
			<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
			<li><a href="#" class="icon fa-instagram"><span
					class="label">Instagram</span></a></li>
			<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
		</ul>
	</nav>
	<!-- Wrapper -->

		<div id="wrapper">
	<!-- Main -->
				
						
							<!-- Story About Us
						    ================================================== -->
				<section id="nino-story">
							<div class="container">
								<h2 class="nino-sectionHeading">
									<span class="nino-subHeading">${product.p_brand }</span>
									${product.p_name }
								</h2>
								
								<div class="sectionContent">

									<div class="row nino-hoverEffect">
									<img alt="" src="${product.p_img }">
										
										
											
											
												
											
									
									</div>
								</div>
							</div>		
						</section><!--/#nino-story-->
					  
					  
			    <!-- Services
			    ================================================== -->
			    <section id="nino-services">
			    	<div class="container">
			    		<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">Ingredient</span>
							상세성분
						</h2>

						<div class="sectionContent">		
					<%-- 	<c:forEach items=${outputIngredient } var="i">
							<c:out value="${outputIngredient }"></c:out>
							
							
							</c:forEach>   --%>
							
							<table class="rwd-table">
							  <tr>
							    <th rowspan="" ><img alt="" src="https://static.ewg.org/skindeep/img/draw_score/score_image1__1_.png"></th>
							    <th>Genre</th>
							    <th>Year</th>
							    <th>Gross</th>
							  </tr>
							 
							 
							  <tr>
							    <td data-th="Movie Title">Star Wars</td>
							    <td data-th="Genre">Adventure, Sci-fi</td>
							    <td data-th="Year">1977</td>
							    <td data-th="Gross">$460,935,665</td>
							  </tr>
							  <tr>
							    <td data-th="Movie Title">Howard The Duck</td>
							    <td data-th="Genre">"Comedy"</td>
							    <td data-th="Year">1986</td>
							    <td data-th="Gross">$16,295,774</td>
							  </tr>
							
							</table>
						</div>
			    	</div>
			    </section><!--/#nino-services-->
								  
					  
					  <section id="nino-counting">
				    	<div class="container">
				    		<div layout="row" class="verticalStretch">
				    			<div class="item1">
				    				<div class="text">유해성분</div>
				    				<div class="number">A</div>

				    			</div>
				    			<div class="item1">
				    				<div class="text">알레르기성분</div>
				    				<div class="number">B</div>

				    			</div>
				    			<div class="item1">
				    				<div class="text">천연성분</div>
				    				<div class="number">C</div>
				    				
				    			</div>
				    			<div class="item1">
				    				<div class="text">리뷰점수</div>
				    				<div class="number">3.5</div>
				    				
				    			</div>
				    			<div class="item1">
				    				<div class="tex
				    				t finalGrade"  >전체등급</div>
				    				<div class="number finalGrade">C</div>
				    				
				    			</div>
				    		</div>
				    	</div>
				    </section><!--/#nino-counting-->
			
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
	
		</div>
 
	<!-- Scripts -->
	<script src="design/js/jquery.min.js"></script>
	<script src="design/js/skel.min.js"></script>
	<script src="design/js/util.js"></script>
	<script src="design/js/main.js"></script>

</body>
</html>
