<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta content="IE=edge" http-equiv="X-UA-Compatible">
  <meta content="width=device-width,initial-scale=1" name="viewport">
  <meta content="description" name="description">
  <meta name="google" content="notranslate" />
  <meta content="Mashup templates have been developped by Orson.io team" name="author">

  <!-- 카카오 로그인 API -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
  <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
  <!-- 카카오 로그인 API END -->

  <!-- Main Action -->
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
  <meta name="viewport" content="width=device-width, initial-scale=1"> 
  <title>Border Animation Effect with SVG</title>
  <meta name="description" content="Border Animation Effect: Recreating the effect seen on carlphilippebrenner.com with SVG" />
  <meta name="keywords" content="svg, border effect, animated border, line, grid item, hover, css" />
  <meta name="author" content="Codrops" />
  <link rel="shortcut icon" href="../favicon.ico">
  <!-- <link rel="stylesheet" type="text/css" href="./design/css/normalize.css" />
  <link rel="stylesheet" type="text/css" href="./design/css/demo.css" />
  <link rel="stylesheet" type="text/css" href="./design/css/component.css" /> -->
  
  <!-- 로그인 폼 링크 -->
  <link rel="stylesheet" type="text/css" href="./design/loginform/css/Logincss.css" />
  <link rel="stylesheet" type="text/css" href="./design/loginform/css/bootstrap.min.css" />
  
  <script src="<c:url value='/design/loginform/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/design/loginform/js/bootstrap.bundle.min.js'/>"></script>
  
  <!-- Main Action -->


  <!-- Disable tap highlight on IE -->
  <meta name="msapplication-tap-highlight" content="no">
  
  <link rel="apple-touch-icon" sizes="180x180" href="./design/apple-icon-180x180.png">
  <link href="./design/favicon.ico" rel="icon">
  
  <!-- <link href="./design/css/main.css" rel="stylesheet"> -->
  

  <title>Title page</title>  
  
  <!-- 네이버 로그인 -->
  <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
  <script type="text/javascript">
  	$(function(){
  		$("#naverIdLogin #naverIdLogin_loginButton img").addClass("btn btn-lg btn-facebook btn-block text-uppercase");	
  		$("#naverIdLogin #naverIdLogin_loginButton img").css({'width':'100%', 'padding-top':'4px', 'padding-bottom':'4px', 'padding-left':'0', 'padding-right':'0'});
  	    /* width: 100%;
  	    padding-top: 4px;
  	    padding-bottom: 4px;
  	    padding-left: 0;
  	    padding-right: 0px; */
  	    
  	    
  	    
  	    
  	});
  </script>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
  <script type="text/javascript">
  	function login(){
  		var id = document.getElementById("inputID").value;
  		var pass = document.getElementById("inputPassword").value;
  		console.log(id);
  		console.log(pass);
  		member_check(id, pass);
  		function member_check(id, pass){
	  		$.ajax({
	  			type:'get',
	  			url: "ajaxMember_check.do",
	  			data:{"m_id": id, "m_pwd":pass},
	  			success: function(data){
	  				
	  				
	  				/* console.log("??"); */
	  				console.log("리턴된 결과값 : "+data);
	  				if(data == 'true'){
	  					m_id = id;
	  			  		m_pwd = pass;
	  			  		
	  			  		var form = document.createElement("form");

	  			        form.setAttribute("charset", "UTF-8");
	  			        form.setAttribute("method", "Post");  //Post 방식
	  			        form.setAttribute("action", "signin.do"); //요청 보낼 주소
	  			 
	  			        hiddenField = document.createElement("input");
	  			        hiddenField.setAttribute("type", "hidden");
	  			        hiddenField.setAttribute("name", "m_id");
	  			        hiddenField.setAttribute("value", m_id);
	  			        form.appendChild(hiddenField);
	  			        
	  			        hiddenField = document.createElement("input");
	  			        hiddenField.setAttribute("type", "hidden");
	  			        hiddenField.setAttribute("name", "m_pwd");
	  			        hiddenField.setAttribute("value", m_pwd);
	  			        form.appendChild(hiddenField);
	  			 
	  			        document.body.appendChild(form);
	  			        form.submit();   
	  				}else{
	  					check_false();
	  				}
	  				
	  				
	  			},
	  			fail: function(){
	  				console.log("ajax 실패.");
	  			}
	  		});
  			
  		}
  		
  		function check_false(){
  			alert("아이디와 패스워드를 다시 확인하세요.");
  			document.getElementById("inputID").focus();
  			document.getElementById("inputPassword").value = "";
  		}
  		
  		
  		/* m_id = id.value;
  		m_pwd = pass.value;
  		
  		var form = document.createElement("form");

        form.setAttribute("charset", "UTF-8");
        form.setAttribute("method", "Post");  //Post 방식
        form.setAttribute("action", "signin.do"); //요청 보낼 주소
 
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "m_id");
        hiddenField.setAttribute("value", m_id);
        form.appendChild(hiddenField);
        
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", "m_pwd");
        hiddenField.setAttribute("value", m_pwd);
        form.appendChild(hiddenField);
 
        document.body.appendChild(form);
        form.submit();    */
 		
  	}
  </script>
  
  
  <!-- 네이버 로그인 end -->
</head>

 
<body>

<!-- Add your content of header -->
<div class="background-color-layer" style="max-width:100%; height:auto;background-image: url('images/img-01.jpg') "></div>
<main class="content-wrapper">
  <header style="padding: 60px 0 0px;">
    <div class="text-center">
      <img src="./images/mainlogo2.png" style="max-width:100%; height:auto;">
    </div>
  </header>



<!-- Add your site or app content here -->
 
<!-- 컨테이너 시작 -->
 <div class="container2">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Sign In</h5>
            <!-- <form class="form-signin"> -->
            <div class="form-signin">
              <div class="form-label-group">
                <input type="email" id="inputID" class="form-control" placeholder="User ID" required autofocus>
                <label for="inputEmail">User ID</label>
              </div>

              <div class="form-label-group">
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <label for="inputPassword">Password</label>
              </div>

              <div class="custom-control custom-checkbox mb-3">
                <input type="checkbox" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">Remember password</label>
              </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" onclick="login()">Sign in</button>
            <!-- </form> -->
            </div>
              <hr class="my-4">
            <div class="form-signin" style="text-align: center;">
             
			  <!-- <div class="fb-login-button" data-width="50px" data-size="large" data-button-type="login_with" data-auto-logout-link="false" data-use-continue-as="false"></div> -->
			  <!-- 카카오 로그인 API FORM -->
			   <!--  <a id="kakao-login-btn" style="width: 80%;"></a>
				<a href="http://developers.kakao.com/logout"></a>
				<script type='text/javascript'>
				  //<![CDATA[
				    // 사용할 앱의 JavaScript 키를 설정해 주세요.
				    /* f58e5c718cc13ad6285c75a9d6ecc84c */
				    
				    Kakao.init('f58e5c718cc13ad6285c75a9d6ecc84c');
				    // 카카오 로그인 버튼을 생성합니다.
				    Kakao.Auth.createLoginButton({
				      container: '#kakao-login-btn',
				      success: function(authObj) {
				    	//alert(authObj.access_token);
				        //alert(JSON.stringify(authObj));
				        
				     		// 로그인 성공시, API를 호출합니다.
					        Kakao.API.request({
					          url: '/v2/user/me',
					          success: function(res) {
					            alert(JSON.stringify(res));
					            alert(res.properties.nickname);
					            alert(res.kakao_account.email);
					          },
					          fail: function(error) {
					            alert(JSON.stringify(error));
					          }
					        });
				      },
				      fail: function(err) {
				         alert(JSON.stringify(err));
				      }
				    });
				  //]]>
				</script> -->
				
				
				<!-- -------------------------------------------- -->
				<a id="custom-login-btn" href="javascript:loginWithKakao()">
					<img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" class="btn btn-lg btn-facebook btn-block text-uppercase" style="color: white; background-color: #FFEB00; padding: 0rem; border-color: inherit;"/>
				</a>
					<script type='text/javascript'>
					  //<![CDATA[
					    // 사용할 앱의 JavaScript 키를 설정해 주세요.
					    Kakao.init('f58e5c718cc13ad6285c75a9d6ecc84c');
					    function loginWithKakao() {
					      // 로그인 창을 띄웁니다.
					      Kakao.Auth.login({
					        success: function(authObj) {
					    	    // alert(JSON.stringify(authObj));
					 	        // alert(authObj.access_token);
						        //alert(JSON.stringify(authObj));
						        
						     		// 로그인 성공시, API를 호출합니다.
							        Kakao.API.request({
							          url: '/v2/user/me',
							          success: function(res) {
							            var nick = res.properties.nickname;
							            /* location.href="signup.do?nickname="+nickname; */
							            /* var nickname = URLEncoder.encode(nick,'UTF-8'); */
							            var nickname = encodeURIComponent(nick);
							            location.href="signup.do?nickname="+nickname; 
							        	/* alert(JSON.stringify(res));
							            alert(res.properties.nickname); */
							            //alert(res.kakao_account.email);
							          },
							          fail: function(error) {
							            alert(JSON.stringify(error));
							          }
							        });
					        },
					        fail: function(err) {
					          alert(JSON.stringify(err));
					        }
					      });
					    };
					  //]]>
					</script>
			  <!-- 카카오 로그인 API END -->
			  <div id="naverIdLogin"></div>
			  <!-- 네이버아디디로로그인 초기화 Script -->
			  <script type="text/javascript">
					var naverLogin = new naver.LoginWithNaverId(
						{
							clientId: "tWNkNBFwqs68ASroV6HO",
							callbackUrl: "http://localhost:8080/faceanalysis/naver_ok.do",
							isPopup: false, /* 팝업을 통한 연동처리 여부 */
							loginButton: {color: "green", type: 3, height: 60} /* 로그인 버튼의 타입을 지정 */
						}
					);
					naverLogin.init();
					
					
		      </script>
			  <!-- // 네이버아이디로로그인 초기화 Script -->
              <!-- <button class="btn btn-lg btn-facebook btn-block text-uppercase" style="color: white; background-color: #3b5998; border-color: inherit;" type="submit"><i class="fab fa-facebook-f mr-2"></i> Sign in with Facebook</button> -->
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<!-- 컨테이너 끝 -->

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

<!-- <script>
  document.addEventListener("DOMContentLoaded", function (event) {
     scrollRevelation('.card');
  });
</script> -->
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

-->

<script type="text/javascript" src="./design/js/main.js"></script>

</body>

</html>