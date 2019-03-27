<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!-- 


  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

   -->

  <!-- Bootstrap core CSS -->
  <link href="./design/topnavi/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="./design/topnavi/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Plugin CSS -->
  <link href="./design/topnavi/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="./design/topnavi/css/freelancer.min.css" rel="stylesheet">
   <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
   <script type="text/javascript">
   window.onload = function(){
	   
  		top.document.frm.reload(); 
	   
   }
	   function logoutFunction(){
		   console.log(window.location.href);
		   var url = window.location.href;
		   $.ajax({
	  			type:'get',
	  			url: "logout.do",
	  			success: function(data){
	  				
	  				console.log("리턴된 결과값 : "+data);
	  				/* redirect:"/main.do"; */
	  				if(data == 'true'){
	  					//location.reload();
	  					location.replace(url);
	  					
	  				}
	  			},
	  			fail: function(){
	  				console.log("ajax 실패.");
	  			}
	  	});   
	   }
	   
	   function login(){
		   var url = window.location.href;
		   
		   
	   }
		
	   
   
	</script>
<!-- <body id="page-top"> -->
<div id="page-top">
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav">
    <div class="container">
      <div class="collapse navbar-collapse" id="navbarResponsive" name="frm" style="width:900px; height:45px;">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item mx-0 mx-lg-1">
          <c:if test="${m_id != null }">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#portfolio" style="text-transform: none; margin: 0 auto;">${m_id }</a>
          </c:if>
          <c:if test="${m_id == null }">
          	<a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="login.do" style="text-transform: none; margin: 0 auto;">LogIn</a>
          </c:if>
          </li>
          <li class="nav-item mx-0 mx-lg-1">
          <c:if test="${m_id != null }">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#" onclick="logoutFunction()">LogOut</a>
          </c:if>
          </li>
          <c:if test="${m_id == null }">
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="signup.do" style="width: 100%;">Sign Up</a>
          </li>
          </c:if>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Bootstrap core JavaScript -->
  <script src="./design/topnavi/vendor/jquery/jquery.min.js"></script>
  <script src="./design/topnavi/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="./design/topnavi/vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="./design/topnavi/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

  <!-- Contact Form JavaScript -->
  <script src="./design/topnavi/js/jqBootstrapValidation.js"></script>
  <script src="./design/topnavi/js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="./design/topnavi/js/freelancer.min.js"></script>

<!-- </body> -->
</div>

