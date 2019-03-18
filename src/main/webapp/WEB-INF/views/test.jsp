<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 
JavaScript용 Facebook SDK에는 다운로드하거나 설치해야 하는 독립실행형 파일이 없습니다.
대신 SDK를 페이지에 비동기식으로 읽어들일 HTML에 간단한 JavaScript 정규식을 포함하기만 하면 됩니다.
비동기식으로 읽어들이면 페이지의 다른 요소를 읽어들이는 것을 차단하지 않습니다.
다음 픽셀 코드는 옵션이 가장 일반적인 기본값으로 설정되는 기본 JavaScript용 Facebook SDK 버전을 제공합니다.

Facebook 분석을 사용할 각 페이지에 <body> 태그를 연 후 다음 픽셀 코드를 삽입합니다. {your-app-id}를 앱 ID로 바꾸고 {api-version}을 타게팅하는 API 버전으로
바꿉니다. 현재 버전은v3.2입니다.
 -->

<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '{your-app-id}',
      cookie     : true,
      xfbml      : true,
      version    : '{api-version}'
    });
      
    FB.AppEvents.logPageView();   
      
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
  
  
  FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
  });
  

  {
      status: 'connected',
      authResponse: {
          accessToken: '...',
          expiresIn:'...',
          signedRequest:'...',
          userID:'...'
      }
  }
  

  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }
  
  
</script>
<body>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v3.2&appId=2267935876809068&autoLogAppEvents=1"></script>

<!-- <fb:login-button 
  scope="public_profile,email"
  onlogin="checkLoginState();">
</fb:login-button> -->

<div class="fb-login-button" data-size="large" data-button-type="login_with" data-auto-logout-link="false" data-use-continue-as="false"></div>

<div></div>

</body>
</html>