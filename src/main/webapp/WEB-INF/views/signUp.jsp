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
            <form class="form-signin">
              <div class="form-label-group">
                <input type="text" id="inputName" class="form-control" placeholder="Name" required autofocus>
                <label for="inputName">Name</label>
              </div>
              <div class="form-label-group">
                <input type="text" id="inputID" class="form-control" placeholder="User ID" required autofocus>
                <label for="inputID">ID</label>
              </div>
              
              <div class="form-label-group">
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <label for="inputPassword">Password</label>
              </div>
              
              <div class="form-label-group">
                <input type="password" id="passwordConfirm" class="form-control" placeholder="Password Confirm" required autofocus>
                <label for="passwordConfirm">Password confirm</label>
              </div>
              
              <!-- <hr class="my-4" style="clear: both;">
              
              <div class="form-label-group" style="height:28px;">
              	<label style="padding-left: 6px;">Phone Number</label>
              </div> -->
              <div class="form-label-group" style="width: 31%; float: left;">
                <input type="text" id="PHONE_first" class="form-control" placeholder="010" required autofocus>
                <label for="PHONE_first">Phone</label>
              </div>
			  
			  <div style="float: left; padding-top: 11px; padding-left: 1px; padding-right: 1px"">-</div>              
              
              <div class="form-label-group" style="width: 31%; float: left;">
                <input type="text" id="PHONE_second" class="form-control" placeholder="1111" required autofocus>
                <label for="PHONE_second"></label>
                
              </div>
              
              <div style="float: left; padding-top: 11px; padding-left: 1px; padding-right: 1px">-</div>
              
              <div class="form-label-group" style="width: 31%; float: left;"> 
                <input type="text" id="PHONE_third" class="form-control" placeholder="2222" required autofocus>
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
				  <input type="text" class="form-control addr" id="sample6_address" style="height: 35px;" placeholder="주소"><br>
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
		  
			  <!-- 
						<div class="fleft" style="float: right; width: 33%;">
							<select id="cd-dropdown" class="cd-select">
								<option value="-1" selected>피부 타입</option>
								<option value="1" class="icon-Desert">건성</option>
								<option value="2" class="icon-facebook">중성</option>
								<option value="3" class="icon-twitter">지성</option>
								<option value="4" class="icon-github">복합성</option>
							</select>
						</div> -->
				
			  <!-- 드롭바 -->
			  <div class="wrapper-demo" style="margin: 26px 0 0 0;">
					<div id="dd" class="wrapper-dropdown-1" tabindex="1">
						<span>Skin Type</span>
					    <ul class="dropdown" tabindex="1">
					        <li value=1><a href="#">건성</a></li>
					        <li value=2><a href="#">중성</a></li>
					        <li value=3><a href="#">지성</a></li>
					        <li value=4><a href="#">복합성</a></li>
					    </ul>
					        <input type="text" name="typevalue" id="typevalue" value="" />
					</div>
				​</div>
			  
			  
		        
			  <!-- 드롭바 end -->
			  
			  <!-- 성별 드롭바 -->
			  <div class="wrapper-demo" style="margin: 26px 0 0 0;">
					<div id="gendd" class="wrapper-dropdown-1" tabindex="2">
						<span>성별</span>
					    <ul class="dropdown" tabindex="2">
					        <li value=1><a href="#">남자</a></li>
					        <li value=2><a href="#">여자</a></li>
					        
					    </ul>
					        <input type="text" name="gender" id="gender" value="" />
					</div>
				​</div>
			  
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
								obj.placeholder.text('타입: ' + obj.val+","+obj.value);
								if($(this) == $('#dd')){
									$('#typevalue').val(obj.value);	
								}else{
									$('#gender').val(obj.value);
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
						var dd = new DropDown( $('#gendd') );
		
						$(document).click(function() {
							// all dropdowns
							$('.wrapper-dropdown-1').removeClass('active');
						});
		
					});
					
				</script>
			  <!-- 성별 드롭바 end -->

              <!-- <div class="custom-control custom-checkbox mb-3">
                <input type="checkbox" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">Remember password</label>
              </div> -->
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign up</button>
            </form>
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