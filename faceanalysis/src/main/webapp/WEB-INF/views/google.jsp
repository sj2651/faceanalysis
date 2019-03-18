<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
  <head>
  <!-- 클라이언트 인증 ID등등 -->
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="672124517955-l62u4c3sa69me3sl4cocb0m1eephbpdu.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    
  </head>
  <body>

	<!-- 버튼 -->
    <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
    <!-- 버튼을 누르면 실행되는 스크립트 -->
    <script>
      function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        console.log('Full Name: ' + profile.getName());
        console.log('Given Name: ' + profile.getGivenName());
        console.log('Family Name: ' + profile.getFamilyName());
        console.log("Image URL: " + profile.getImageUrl());
        console.log("Email: " + profile.getEmail());

        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        console.log("ID Token: " + id_token);
      }
    </script>
    
  </body>
</html>