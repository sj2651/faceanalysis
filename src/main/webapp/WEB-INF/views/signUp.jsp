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
  
  <!-- 드롭바 -->
  <meta name="description" content="Custom Drop-Down List Styling with CSS3" />
  <meta name="author" content="Codrops" />
  <link rel="shortcut icon" href="../favicon.ico"> 
  <link rel="stylesheet" type="text/css" href="./design/dropselect/css/style.css" />
  <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css' />
  <script type="text/javascript" src="./design/dropselect/js/modernizr.custom.79639.js"></script> 
  <noscript><link rel="stylesheet" type="text/css" href="./design/dropselect/css/noJS.css" /></noscript>
  
  <!-- 드롭바 end -->

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
  <!-- 클릭 스크립트 -->
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
  <script type="text/javascript">
  	$(function(){
  		$("#inputID").keyup(function(){
  			var id = $("#inputID").val();
  			console.log(id);
  			idDuplication(id);
  		});
  		
		$("#inputPassword").keyup(function(){
  	   		
  	   		var pass = $("#inputPassword").val();
  	   		var confirm = $("#passwordConfirm").val();
  	   		//console.log($("#passwordConfirm").val().length);
  	   		/* console.log(pass);
  	   		console.log(confirm); */
  	   		var div = $("#checkPass");
  	   		if($("#inputPassword").val().length > 0){
	  	   		if(pass == confirm){
	  	   			div.html("TRUE");
	  	   			div.css("color","blue");
	  	   			
	  	   		}else{
	  	   			
	  	   			div.html("FALSE");
	  	   			div.css("color","red");
	  	   			
	  	   			
	  	   		}	
  	   		}
  	   		
  	   		
  	   	});	
  		
  		$("#passwordConfirm").keyup(function(){
  	   		
  	   		var pass = $("#inputPassword").val();
  	   		var confirm = $("#passwordConfirm").val();
  	   		/* console.log(pass);
  	   		console.log(confirm); */
  	   		var div = $("#checkPass");
  	   		if($("#passwordConfirm").val().length > 0){
	  	   		if(pass == confirm){
	  	   			div.html("TRUE");
	  	   			div.css("color","blue");
	  	   			
	  	   		}else{
	  	   			
	  	   			div.html("FALSE");
	  	   			div.css("color","red");
	  	   			
	  	   			
	  	   		}
  	   		}
  	   	});
  		
  		function idDuplication(id){
	  		$.ajax({
	  			type:'get',
	  			url: "idDuple.do",
	  			data:{"m_id": id},
	  			success: function(data){
	  				/* console.log("??"); */
	  				console.log("리턴된 결과값 : "+data);
	  				if($("#inputID").val().length > 3){
		  				if(data == 'true'){
		  					$("#checkID").html("already using ID");
		  					$("#checkID").css("color","red").css("left","65%");
		  				}else if($("#inputID").val().length == 0){
		  					$("#checkID").html("");
		  				}else{
		  					$("#checkID").html("possible ID");
		  					$("#checkID").css("color","blue").css("left","75%");		  					
		  				}
	  				}
	  			},
	  			fail: function(){
	  				console.log("ajax 실패.");
	  			}
	  		});
  			
  		}
  		
  		
  		
  	});
   	
   
   
   </script>
  
   <script type="text/javascript">
   function signupFunction(){
	   
	   var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
	   var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	   // 이메일이 적합한지 검사할 정규식
	   
	   var inputName = document.getElementById('inputName');
	   var m_name = inputName.value;
	   var inputID = document.getElementById('inputID');
	   var m_id = inputID.value;
	   var inputPassword = document.getElementById('inputPassword');
	   var m_pwd = inputPassword.value;
	   var passwordConfirm = document.getElementById('passwordConfirm');
	   var pwd_confirm = passwordConfirm.value;
	   var inputEmail = document.getElementById('inputEmail');
	   var m_email = inputEmail.value;
	   var PHONE_first = document.getElementById('PHONE_first');
	   var first = PHONE_first.value;
	   var PHONE_second = document.getElementById('PHONE_second');
	   var second = PHONE_second.value;
	   var PHONE_third = document.getElementById('PHONE_third');
	   var third = PHONE_third.value;
	   var sample6_address = document.getElementById('sample6_address');
	   var address = sample6_address.value; 
	   var sample6_detailAddress = document.getElementById('sample6_detailAddress');
	   var detailAddress = sample6_detailAddress.value;
	   var typevalue = document.getElementById('typevalue');
	   var typeval = typevalue.value;
	   var gender = document.getElementById('gender');
	   var gen = gender.value;
	   
	   
	   
	   function idDuplication(id){
		   console.log('ajax 실행');
	  		$.ajax({
	  			type:'get',
	  			url: "idDuple.do",
	  			data:{"m_id": id},
	  			success: function(data){
	  				console.log("ajax data : " + data);
		  				if(data == 'true'){
		  					idTFcheck();
		  				}else{
		  					if(!m_name){
		  					   alert("이름을 입력하세요");
		  					   inputName.focus();
		  					   return false;
		  				   }
		  				   
		  				   if(!check(re,inputID,"아이디는 4~12자의 영문 대소문자와 숫자로만 입력")) {
		  					   
		  			           return false;
		  			       }
		  				 if(!m_pwd){
		  				   alert('비밀번호를 입력하세요');
		  				   inputPassword.focus();
		  				   return false;
		  			   }
		  			   
		  			   if(!check(re,inputPassword,"패스워드는 4~12자의 영문 대소문자와 숫자로만 입력")) {
		  		           return false;
		  		       }

		  		       if(m_pwd != pwd_confirm) {
		  		           alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
		  		           /* inputPassword = "";
		  		           passwordConfirm = ""; */
		  		           m_pwd = "";
		  		           pwd_confirm = "";
		  		           inputPassword.focus();
		  		           return false;
		  		       }

		  		       if(m_email=="") {
		  		           alert("이메일을 입력해 주세요");
		  		           inputEmail.focus();
		  		           return false;
		  		       }

		  		       if(!check(re2, inputEmail, "적합하지 않은 이메일 형식입니다.")) {
		  		           return false;
		  		       }

		  		       if(!first || !second || !third){
		  		    	   alert("전화번호를 입력하세요");
		  		    	   PHONE_first.focus();
		  		    	   return false;
		  		       }
		  		       
		  		       if(!address){
		  		    	   alert("주소를 등록해주세요.");
		  		    	   return false;
		  		       }
		  		       
		  		       if(!detailAddress){
		  		    	   alert("상세 주소를 입력해주세요.");
		  		    	   sample6_detailAddress.focus();
		  		    	   return false;
		  		       }
		  		       
		  		       if(!typeval){
		  		    	   alert("피부 타입을 선택해주세요.");
		  		    	   return false;
		  		       }
		  		       
		  		       if(!gen){
		  		    	   alert("성별을 선택해주세요.")
		  		    	   return false;
		  		       }
		  					
		  					sucessSignup();
		  				}
	  			},
	  			fail: function(){
	  				console.log("ajax 실패.");
	  			}
	  		});
 			
 		}
	 	   
	   idDuplication(m_id);
	   	   
	   function idTFcheck(){
		   alert("이미 존재하는 아이디 입니다.")
		   
		   inputID.focus();
		   return false;
	   }
	 	
	   function sucessSignup(){
		   var form = document.createElement("form");

	       form.setAttribute("charset", "UTF-8");
	       form.setAttribute("method", "Post");  //Post 방식
	       form.setAttribute("action", "signupOk.do"); //요청 보낼 주소

	       var hiddenField = document.createElement("input");
	       hiddenField.setAttribute("type", "hidden");
	       hiddenField.setAttribute("name", "m_name");
	       hiddenField.setAttribute("value", m_name);
	       form.appendChild(hiddenField);

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
	       
		   hiddenField = document.createElement("input");
	       hiddenField.setAttribute("type", "hidden");
	       hiddenField.setAttribute("name", "m_email");
	       hiddenField.setAttribute("value", m_email);
	       form.appendChild(hiddenField);
	       
	       hiddenField = document.createElement("input");
	       hiddenField.setAttribute("type", "hidden");
	       hiddenField.setAttribute("name", "m_tel");
	       hiddenField.setAttribute("value", first+second+third);
	       form.appendChild(hiddenField);
	       
	       hiddenField = document.createElement("input");
	       hiddenField.setAttribute("type", "hidden");
	       hiddenField.setAttribute("name", "m_addr1");
	       hiddenField.setAttribute("value", address);
	       form.appendChild(hiddenField);
	       
	       hiddenField = document.createElement("input");
	       hiddenField.setAttribute("type", "hidden");
	       hiddenField.setAttribute("name", "m_addr2");
	       hiddenField.setAttribute("value", detailAddress);
	       form.appendChild(hiddenField);
	       
	       hiddenField = document.createElement("input");
	       hiddenField.setAttribute("type", "hidden");
	       hiddenField.setAttribute("name", "m_type");
	       hiddenField.setAttribute("value", typeval);
	       form.appendChild(hiddenField);
	       
	       hiddenField = document.createElement("input");
	       hiddenField.setAttribute("type", "hidden");
	       hiddenField.setAttribute("name", "m_gender");
	       hiddenField.setAttribute("value", gen);
	       form.appendChild(hiddenField);



	       document.body.appendChild(form);
	       form.submit();   
	   }
	  
	   
   } 	
   
   function check(re, what, message) {
       if(re.test(what.value)) {
           return true;
       }
       alert(message);
       what.value = "";
       what.focus();
       //return false;
   }
   
  </script>
  <!-- 클릭 스크립트 end -->
  <!-- 다음 카카오 로그인 정보 받기 -->
  <script type="text/javascript">
  
  	$(function(){
 	  		
  		  	//var nickname = encodeURIComponent(nick);
  		  	/* var nickname = window.location.search.split('?')[1].split['='] */
  		  	
  		  	console.log(window.location.search);
  		  	if(window.location.search != ""){
	  		  	var nickname = decodeURIComponent(window.location.search.split('?')[1].split('=')[1]);
	  		  	$("#inputName").val(nickname);
	  		  	$("#inputID").focus();	
  		  	}
  			
  	  		
  	  		//var nickname = encodeURIComponent(nick);
  	  		/* var nickname = window.location.search.split('?')[1].split['='] */
/*   	  		$("#inputName").val(nickname);
  	  		$("#inputID").focus(); */	
  		
  		
  		//console.log(nickname);
  	});
  	
  </script>
  <!-- 다음 카카오 로그인 end -->
  
  <!-- 네이버 로그인 정보 받기 -->
  <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
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
				
				inputName = document.getElementById("inputName");
				inputName.value = name;
				
				inputEmail = document.getElementById("inputEmail");
				inputEmail.value = email;
				
				getID = inputEmail.value.split('@')[0];
				console.log(getID);
				
				inputID = document.getElementById("inputID");
				inputID.value = getID;
				
				
				/* console.log("email : " + email);
				console.log("name : " + name);
				console.log("profileImage : " + profileImage);
				console.log("birthday : " + birthday);
				console.log("uniqId : " + uniqId);
				console.log("age : " + age) */
				
				document.getElementById("inputPassword").focus();
			} else {
				console.log("AccessToken이 올바르지 않습니다.");
			}
		});
	
	
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
            <hr class="my-4">
            <h5 class="card-title text-center">Sign Up</h5>
            <!-- <form class="form-signin"> -->
            <div class="form-signin">
              <div class="form-label-group">
                <input type="text" id="inputName" class="form-control" placeholder="Name" required autofocus>
                <label for="inputName">Name</label>
              </div>
              <div class="form-label-group">
                <input type="text" id="inputID" class="form-control" placeholder="User ID" required autofocus>
                <label for="inputID">ID</label>
                <div id="checkID" style="position: absolute; top: 27%; font-weight: bold;"></div>
              </div>
              
              <div class="form-label-group">
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <label for="inputPassword">Password</label>
              </div>
              
              <div class="form-label-group">
                <input type="password" id="passwordConfirm" class="form-control" placeholder="Password Confirm" required autofocus>
                <label for="passwordConfirm">Password confirm</label>
                <div id="checkPass" style="position: absolute; left: 80%; top: 27%; font-weight: bold;"></div>
              </div>
              
              
              <div class="form-label-group">
                <input type="email" id="inputEmail" class="form-control" placeholder="ex@example.com" required>
                <label for="inputEmail">Email</label>
              </div>
              
              <!-- <hr class="my-4" style="clear: both;">
              
              <div class="form-label-group" style="height:28px;">
              	<label style="padding-left: 6px;">Phone Number</label>
              </div> -->
              <div class="form-label-group" style="width: 31%; float: left;"> 
                <input type="text" id="PHONE_first" class="form-control" placeholder="010" maxlength="3" required autofocus>
                <label for="PHONE_first">Phone</label>
              </div>
			  
			  <div style="float: left; padding-top: 11px; padding-left: 1px; padding-right: 1px"">-</div>              
              
              <div class="form-label-group" style="width: 31%; float: left;">
                <input type="text" id="PHONE_second" class="form-control" placeholder="1111" maxlength="4" required autofocus>
                <label for="PHONE_second"></label>
                
              </div>
              
              <div style="float: left; padding-top: 11px; padding-left: 1px; padding-right: 1px">-</div>
              
              <div class="form-label-group" style="width: 31%; float: left;"> 
                <input type="text" id="PHONE_third" class="form-control" placeholder="2222" maxlength="4" required autofocus>
                <label for="PHONE_third"></label>
              </div>
              
			  <hr class="my-4" style="clear: both;">
			  
              <!-- 주소 js -->
              <div class="form-label-group" style="width: 50%; height: auto; float: left;">
	              <input type="text" class="form-control addrmain" id="sample6_postcode" style="height: 42px;" placeholder="우편번호">
	              <label for="sample6_postcode" style="padding-top: 7px;">Address</label>
	              
	          </div> 
	          <div style="padding: var(--input-padding-y) var(--input-padding-x); margin-left: 140px; padding-top: 8px;">
	          	  <input type="button" onclick="sample6_execDaumPostcode()" style="font-size: 14px; width: inherit;" value="우편번호 찾기"><br>
	          </div>
			  <div class="form-label-group addr" style="height: 35px; padding: 0; margin-top: 17px">
				  <input type="text" class="form-control addr" id="sample6_address" style="height: 35px;" required placeholder="주소"><br>
			  </div>
			  <div class="form-label-group">
				  <input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소">
				  <label for="sample6_detailAddress" >Detail Address</label>
			  </div>
		      <div class="form-label-group addr" style="padding: 0;">
				  <input type="text" class="form-control addr" id="sample6_extraAddress" style="height: 35px;" placeholder="참고항목">
              </div>
  			  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
  			  <script>
			    function sample6_execDaumPostcode() {
			        new daum.Postcode({
			            oncomplete: function(data) {
			                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			
			                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
			                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			                var addr = ''; // 주소 변수
			                var extraAddr = ''; // 참고항목 변수
			
			                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
			                    addr = data.roadAddress;
			                } else { // 사용자가 지번 주소를 선택했을 경우(J)
			                    addr = data.jibunAddress;
			                }
			
			                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
			                if(data.userSelectedType === 'R'){
			                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
			                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
			                        extraAddr += data.bname;
			                    }
			                    // 건물명이 있고, 공동주택일 경우 추가한다.
			                    if(data.buildingName !== '' && data.apartment === 'Y'){
			                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			                    }
			                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			                    if(extraAddr !== ''){
			                        extraAddr = ' (' + extraAddr + ')';
			                    }
			                    // 조합된 참고항목을 해당 필드에 넣는다.
			                    document.getElementById("sample6_extraAddress").value = extraAddr;
			                
			                } else {
			                    document.getElementById("sample6_extraAddress").value = '';
			                }
			
			                // 우편번호와 주소 정보를 해당 필드에 넣는다.
			                document.getElementById('sample6_postcode').value = data.zonecode;
			                document.getElementById("sample6_address").value = addr;
			                // 커서를 상세주소 필드로 이동한다.
			                document.getElementById("sample6_detailAddress").focus();
			            }
			        }).open();
			    }
			    
			    
			    
			    
		      </script>
  			  <!-- 주소 js  끝-->
				
			  <!-- 피부 타입 드롭바 -->
			  <div class="wrapper-demo" style="margin: 26px 0 0 0;     margin-bottom: 1rem;">
					<div id="dd" class="wrapper-dropdown-1" tabindex="1" style="background: #abc; width: 40%; margin-left:5%; float: left">
						<span>Skin Type</span>
					    <ul class="dropdown" tabindex="1">
					        <li value=1><a href="#">건성</a></li>
					        <li value=2><a href="#">중성</a></li>
					        <li value=3><a href="#">지성</a></li>
					        <li value=4><a href="#">복합성</a></li>
					    </ul>
					        <input type="hidden" name="typevalue" id="typevalue" value="" />
					</div>
					<div id="gendd" class="wrapper-dropdown-1" tabindex="2" style="background: #abc; width: 40%; margin-left:10%; float: left;">
						<span>성별</span>
					    <ul class="dropdown" tabindex="2">
					        <li value=1><a href="#">남자</a></li>
					        <li value=2><a href="#">여자</a></li>
					        
					    </ul>
					        <input type="hidden" name="gender" id="gender" value="" />
					</div>
				​</div>
			    
			  <!-- 피부 타입 드롭바 end -->
			  
			  <!-- 성별 드롭바 -->
			 <!--  <div class="wrapper-demo" style="margin: 26px 0 0 0;">
					<div id="gendd" class="wrapper-dropdown-1" tabindex="2">
						<span>성별</span>
					    <ul class="dropdown" tabindex="2">
					        <li value=1><a href="#">남자</a></li>
					        <li value=2><a href="#">여자</a></li>
					        
					    </ul>
					        <input type="hidden" name="gender" id="gender" value="" />
					</div>
			  ​</div> -->
			  <!-- 성별 드롭바 end -->
			  <!-- 드롭바 스크립트 -->
			  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
			  <script type="text/javascript">
					
					function DropDown(el) {
						this.dd = el;
						this.placeholder = this.dd.children('span');
						this.opts = this.dd.find('ul.dropdown > li');
						this.val = '';
						this.index = -1;
						this.initEvents();
					}
					DropDown.prototype = {
						initEvents : function() {
							var obj = this;
		
							obj.dd.on('click', function(event){
								$(this).toggleClass('active');
								return false;
							});
		
							obj.opts.on('click',function(){
								var opt = $(this);
								obj.val = opt.text();
								obj.value = opt.val();
								obj.index = opt.index();
								console.log(obj.dd.selector);
								/* obj.placeholder.text('타입: ' + obj.val); */
								/* obj.placeholder.text('타입: ' + obj.val+","+obj.value); */
								if(obj.dd.selector == '#dd'){
									$('#typevalue').val(obj.value);	
									obj.placeholder.text('타입: ' + obj.val);
								}else{
									$('#gender').val(obj.value);
									obj.placeholder.text('성별: ' + obj.val);
								}
								 
							});
						},
						getValue : function() {
							return this.val;
						},
						getIndex : function() {
							return this.index;
						}
					}
		
					$(function() {
		
						var dd = new DropDown( $('#dd') );
						var gendd = new DropDown( $('#gendd') );
		
						$(document).click(function() {
							// all dropdowns
							$('.wrapper-dropdown-1').removeClass('active');
						});
		
					});
					
				</script>
			  <!-- 드롭바 스크립트 end -->

              <!-- <div class="custom-control custom-checkbox mb-3">
                <input type="checkbox" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">Remember password</label>
              </div> -->
              <!-- <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign up</button> -->
              <div id="confirmSign"></div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" id="signclick" onclick="signupFunction()">Sign up</button>
            <!-- </form> -->
            </div>
              <hr class="my-4">
            <div class="form-signin" style="text-align: center;">
             
			 
				
				
			  
            
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