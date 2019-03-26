<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
					var starpoint =null;
					 var starpoint=0.5;
					if(name=="aromatica"){
						$('#wrapper #nino-story').css("background-color","#f5f5f5");
						$('#wrapper #nino-services').css("background-color","#f5f5f5");
						$('#footer').css("background-color","#f5f5f5");
						$('#productComment').css("background-color","#f5f5f5");
					}
					
					$('#star span').click(function(){
						 starpoint=$(this).text();
						console.log(starpoint);
					  $(this).parent().children('span').removeClass('on');
					  $(this).addClass('on').prevAll('span').addClass('on'); 
					 return false;
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

									
									
									
							<table class="rwd-table" >
							<c:set var="url" value="1"/>

							<c:forEach var="j" items="${index }">
								
								<c:if test="${j>0 }">
								
							    
							  		<tr>
							    
							  			<th rowspan="${j+1 }" width="150px" style="padding: 0 auto; text-align: center;" >
							  				 <c:if test="${url<=9 }"> <img alt="" src=<c:url value='https://static.ewg.org/skindeep/img/draw_score/score_image${url }__1_.png'/>></c:if>
							   <c:if test="${url==10 }"> <div style="font-size: 20px">미분류등급</div></c:if>
							    		</th>
									
								   	 	<th colspan="3"> ${url } 등급 </th>
								    	
									
							  		</tr>
							 
							
							<c:forEach items="${outputIngredient }" var="Ingredient"> 
						
								<c:if test="${fn:substring(Ingredient.i_grade, 0, 1)==url}">
								<tr>
							
							
									<th style="width: 15%;">  ${Ingredient.i_kname }</th>
									<th>  ${Ingredient.i_ename }</th>
									<th>  ${Ingredient.i_content }</th> 
							
								</tr>
								</c:if>
							 </c:forEach>

							  </c:if>
							  
								
							
						<c:set var="url" value="${url + 1}"/>
					</c:forEach> 
					</table>
					
						</div>
			    	</div>
			    </section><!--/#nino-services-->
								  
					  <!-- 결과 카운트 라인 -->
					  <section id="nino-counting">
				    	<div class="container">
				    		<div layout="row" class="verticalStretch">
				    		<c:set var="noxiousset" value="0"/>
				    		<c:set var="allergyset" value="0"/>
				    		<c:set var="natureset" value="0"/>
				    		<c:set var="nature" value="추출"/>
				    		<c:set var="false" value="-1"/>
				    		<c:forEach items="${outputIngredient }" var="Ingredient">
				    		
					    		<c:if test="${Ingredient.i_noxious==1 }">
					    		<c:set var="noxiousset" value="1"/>
					    		<c:set var="noxiousname" value="${Ingredient.i_ename}"/>
					    		</c:if>
					    		<c:if test="${Ingredient.i_allergy==1 }">
					    		<c:set var="allergyset" value="1"/>
					    		<c:set var="allergyname" value="${Ingredient.i_ename}"/>
					    		</c:if>
					    		
					    		<c:if test="${fn:indexOf(Ingredient.i_kname,nature)!=-1}">
					    		<c:set var="natureset" value="${natureset+1 }"/>
					    		
					    		</c:if>
							</c:forEach> 
				    			
				    		<c:choose>
								<c:when test="${noxiousset==1 }">
									<div class="item1" style="padding: 60px 5px;" >
							    				<div class="text">유해성분</div>
							    				<img style="width: 40%; text-align: center; margin: 5px 0 auto" alt="" src="./images/noxious.png">
												<div>${noxiousname }</div>
							    			</div>
								</c:when>
								<c:otherwise>
									<div class="item1">
							    				<div class="text">유해성분</div>
							    				<div class="number"style="font-size: 40px">없음</div>
			
							    			</div>
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${allergyset==1 }">
								<div class="item1" style="padding: 60px 5px;">
							    				<div class="text">알레르기성분</div>
							    				<img style="width: 40%; text-align: center; margin: 5px 0 auto" alt="" src="./images/allergy.png">
												<div>${allergyname }</div>
							    			</div>
							    			
								</c:when>
								<c:otherwise>
								<div class="item1">
							    				<div class="text">알레르기성분</div>
							    				<div class="number" style="font-size: 40px">없음</div>
			
							    			</div>
								</c:otherwise>
							</c:choose>
						
							<c:choose>
								<c:when test="${natureset<=1 }">
									<div class="item1">
					    				<div class="text">천연성분</div>
					    				<div class="number">D</div>	
					    			</div>
								</c:when>
								<c:when test="${natureset<=5 ||natureset>1 }">
									<div class="item1">
					    				<div class="text">천연성분</div>
					    				<div class="number">C</div>	
					    			</div>
								</c:when>
									<c:when test="${natureset<=7 ||natureset>5 }">
									<div class="item1">
					    				<div class="text">천연성분</div>
					    				<div class="number">B</div>	
					    			</div>
								</c:when>
								<c:when test="${natureset>7 }">
									<div class="item1">
					    				<div class="text">천연성분</div>
					    				<div class="number">A</div>	
					    			</div>
								</c:when>
							</c:choose>
							
				    			
				    			<div class="item1">
				    				<div class="text">리뷰점수</div>
				    				<div class="number" style="font-size: 40px">베타테스트</div>
				    				
				    			</div>
				    		
				    		<c:choose>
								<c:when test="${noxiousset==0&&allergyset==0&&natureset>5 }">
				    			
				    			<div class="item1">
				    				<div class="tex
				    				t finalGrade"  >전체등급</div>
				    				<div class="number finalGrade">A</div>
				    			</div>
				    			</c:when>
				    					    		
				    			<c:when test="${allergyset==1}">
				    			
				    			<div class="item1">
				    				<div class="tex
				    				t finalGrade"  >전체등급</div>
				    				<div class="number finalGrade">C</div>
				    			</div>
				    			</c:when>
				    			<c:when test="${noxiousset==1}">
				    			
				    			<div class="item1">
				    				<div class="tex
				    				t finalGrade"  >전체등급</div>
				    				<div class="number finalGrade">D</div>
				    			</div>
				    			</c:when>
				    			<c:otherwise>
				    				<div class="item1">
				    				<div class="tex
				    				t finalGrade"  >전체등급</div>
				    				<div class="number finalGrade">B</div>
				    			</div>
				    			</c:otherwise>
				    		</c:choose>
				    		</div>
				    	</div>
				    </section><!--/#nino-counting-->
			 <!-- ==================================댓글 별점주기================== -->
			  <section id="productComment" style="padding-top:10px ;margin-top: 10px; ">
			  <div style="background: transparent; border-bottom: solid 2px; width: 140px; font-size: 26px; text-align: center; margin-left: 50px;">사용평</div>
			  </section>
			  
			 <section id="nino-services">
			    	<div class="container" style="margin-left:50px;">
						<div class="starRev" id="star">
						  <span class="starR1 on">0.5</span>
						  <span class="starR2">1</span>
						  <span class="starR1">1.5</span>
						  <span class="starR2">2</span>
						  <span class="starR1">2.5</span>
						  <span class="starR2">3</span>
						  <span class="starR1">3.5</span>
						  <span class="starR2">4</span>
						  <span class="starR1">4.5</span>
						  <span class="starR2">5</span>
						  
						</div>
						<textarea name="demo-message" id="demo-message"  placeholder="Product Use Report" rows="6" style="overflow:hidden;margin-left:20px; width: 572px; height: 40px; float: left;"></textarea>
			    	<input id="send" type="submit" value="Send" class="special" style=" width:150px;   height: 40px; float: left;margin-left:10px; padding: 0 0 0 4px">
			    	</div>
			    	
			    </section><!--/#nino-services-->
						
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
