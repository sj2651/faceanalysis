<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta content="IE=edge" http-equiv="X-UA-Compatible">
  <meta content="width=device-width,initial-scale=1" name="viewport">
  <meta content="description" name="description">
  <meta name="google" content="notranslate" />
  <meta content="Mashup templates have been developped by Orson.io team" name="author">


  <!-- Main Action -->
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
  <meta name="viewport" content="width=device-width, initial-scale=1"> 
  <title>Border Animation Effect with SVG</title>
  <meta name="description" content="Border Animation Effect: Recreating the effect seen on carlphilippebrenner.com with SVG" />
  <meta name="keywords" content="svg, border effect, animated border, line, grid item, hover, css" />
  <meta name="author" content="Codrops" />
  <link rel="shortcut icon" href="../favicon.ico">
  <link rel="stylesheet" type="text/css" href="./design/css/normalize.css" />
  <link rel="stylesheet" type="text/css" href="./design/css/demo.css" />
  <link rel="stylesheet" type="text/css" href="./design/css/component.css" />
  
  
  <!-- 상단 드롭바 -->
  <link rel="shortcut icon" href="../favicon.ico"> 
  <link rel="stylesheet" type="text/css" href="./design/dropbar/css/style2.css" />
  <link rel="stylesheet" type="text/css" href="./design/dropbar/css/style.css" />
  <script src="./design/dropbar/js/modernizr.custom.63321.js"></script>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script type="text/javascript" src="./design/dropbar/js/jquery.dropdown.js"></script>
		<script type="text/javascript">
			
			$( function() {
				
				$( '#cd-dropdown' ).dropdown( {
					gutter : 5,
					delay : 100,
					random : true
				} );

			});

  </script>
  
  <!-- Main Action -->
  <script type="text/javascript">
	$(function(){
		$("#brand").click(function(){
			document.location.href="detail1.do"
		});
	});
  </script>

  <!-- Disable tap highlight on IE -->
  <meta name="msapplication-tap-highlight" content="no">
  
  <link rel="apple-touch-icon" sizes="180x180" href="./design/apple-icon-180x180.png">
  <link href="./design/favicon.ico" rel="icon">

  <title>Title page</title>  

<link href="./design/css/main.css" rel="stylesheet">
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
</head>
<!-- 네이버 로그인 API -->
<script type="text/javascript">
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "tWNkNBFwqs68ASroV6HO",
			callbackUrl: "http://localhost:8080/faceanalysis/main.do",
			isPopup: false,
			callbackHandle: false
		}
	);

	naverLogin.init();
	
	naverLogin.getLoginStatus(function (status) {
		if (status) {
			var name = naverLogin.user.getName();
			var email = naverLogin.user.getEmail();
			var profileImage = naverLogin.user.getProfileImage();
			var birthday = naverLogin.user.getBirthday();			var uniqId = naverLogin.user.getId();
			var age = naverLogin.user.getAge();
			
			console.log("email : " + email);
			console.log("name : " + name);
			console.log("profileImage : " + profileImage);
			console.log("birthday : " + birthday);
			console.log("uniqId : " + uniqId);
			console.log("age : " + age)
		} else {
			console.log("AccessToken이 올바르지 않습니다.");
		}
	});


</script>
<!-- 네이버 로그인 API 끝 -->
<body class="">

<!-- Add your content of header -->
<div class="background-color-layer" style="max-width:100%; height:auto; background-image: url('images/img-01.jpg') "></div>
<main class="content-wrapper">
  <header class="white-text-container section-container">
	  <header class="clearfix">
	  		<section class="main clearfix">
				<div class="fleft" style="float: right; width: 33%;">
					<select id="cd-dropdown" class="cd-select">
						<option value="-1" selected>a</option>
						<option value="1" class="icon-Desert">bb</option>
						<option value="2" class="icon-facebook">cc</option>
						<option value="3" class="icon-twitter">dd</option>
						<option value="4" class="icon-github">ee</option>
					</select>
				</div>
			</section>
	  </header>
    <div class="text-center">
      <img src="./images/mainlogo2.png" style="max-width:100%; height:auto;">
      
      <p>
        <a class="fa-icon fa-icon-2x" href="https://facebook.com/" title="">
          <i class="fa fa-facebook"></i>
        </a>
        <a class="fa-icon fa-icon-2x" href="https://twitter.com/" title="">
          <i class="fa fa-twitter"></i>
        </a>
        <a class="fa-icon fa-icon-2x" href="https://dribbble.com/" title="">
          <i class="fa fa-dribbble"></i>
        </a>
        <a class="fa-icon fa-icon-2x" href="https://www.linkedin.com/" title="">
          <i class="fa fa-linkedin"></i>
        </a>
        <a class="fa-icon fa-icon-2x" href="https://vimeo.com/" title="">
          <i class="fa fa-vimeo"></i>
        </a>
      </p>
    </div>
  </header>



<!-- Add your site or app content here -->
 
 <div class="container">
   <div class="row">
     <div class="col-xs-12">

        <div class="card">
          <section class="demo-2">
       <!--  <h2>Color animation</h2> -->
        <div class="grid">
          <div class="box">
            <svg id="brand" xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
              <line class="top" x1="0" y1="0" x2="900" y2="0"/>
              <line class="left" x1="0" y1="460" x2="0" y2="-920"/>
              <line class="bottom" x1="300" y1="460" x2="-600" y2="460"/>
              <line class="right" x1="300" y1="0" x2="300" y2="1380"/>
            </svg>
            <h3>J</h3>
            <span>2012</span>
            <span>Walnut, Pineapple</span>
          </div>
          <div class="box">
            <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
              <line class="top" x1="0" y1="0" x2="900" y2="0"/>
              <line class="left" x1="0" y1="460" x2="0" y2="-920"/>
              <line class="bottom" x1="300" y1="460" x2="-600" y2="460"/>
              <line class="right" x1="300" y1="0" x2="300" y2="1380"/>
            </svg>
            <h3>I</h3>
            <span>2013</span>
            <span>Curry, Beancurd</span>
          </div>
          <div class="box">
            <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
              <line class="top" x1="0" y1="0" x2="900" y2="0"/>
              <line class="left" x1="0" y1="460" x2="0" y2="-920"/>
              <line class="bottom" x1="300" y1="460" x2="-600" y2="460"/>
              <line class="right" x1="300" y1="0" x2="300" y2="1380"/>
            </svg>
            <h3>C</h3>
            <span>2014</span>
            <span>Lettuce, Asparagus</span>
          </div>
        </div><!-- /grid -->
      </section>
      <!-- =================================================================================================== -->
      
</main>
<footer class="footer-container white-text-container text-center">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <p><img src="./images/mashup-icon.svg" alt=""></p>
        
        <p>©All right reserved. Design <a href="http://www.mashup-template.com/" title="Create website with free html template">Mashup Template</a>/<a href="https://unsplash.com/" title="Beautiful Free Images">Unsplash</a></p>
        <p>
          <a class="fa-icon fa-icon-2x" href="https://facebook.com/" title="">
            <i class="fa fa-facebook"></i>
          </a>
          <a class="fa-icon fa-icon-2x" href="https://twitter.com/" title="">
            <i class="fa fa-twitter"></i>
          </a>
          <a class="fa-icon fa-icon-2x" href="https://dribbble.com/" title="">
            <i class="fa fa-dribbble"></i>
          </a>
          <a class="fa-icon fa-icon-2x" href="https://www.linkedin.com/" title="">
            <i class="fa fa-linkedin"></i>
          </a>
          <a class="fa-icon fa-icon-2x" href="https://vimeo.com/" title="">
            <i class="fa fa-vimeo"></i>
          </a>
        </p>
      </div>
    </div>
  </div>
</footer>

<script>
  document.addEventListener("DOMContentLoaded", function (event) {
     scrollRevelation('.card');
  });
</script>
<!-- Google Analytics: change UA-XXXXX-X to be your site's ID 

<script>
  (function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
      (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date(); a = s.createElement(o),
      m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
  })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
  ga('create', 'UA-XXXXX-X', 'auto');
  ga('send', 'pageview');
</script>

--><script type="text/javascript" src="./design/js/main.js"></script></body>

</html>