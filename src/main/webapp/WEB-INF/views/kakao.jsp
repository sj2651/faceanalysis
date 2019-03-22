<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>Login Demo - Kakao JavaScript SDK</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<a id="kakao-login-btn"></a>
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
	</script>
	
</body>
</html>