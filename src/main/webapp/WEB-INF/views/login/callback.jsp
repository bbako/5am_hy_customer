<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<!--네이버 콜백 페이지  -->
				<form id="f2" method="post" action="/login/login2">
				<input type="hidden" id="i1" name="cname">
				<input type="hidden" id="i2" name="cemail">
				<input type="hidden" id="i3" name="token">
				</form> 
로그인!
<script type="text/javascript">
  var naver_id_login = new naver_id_login("VGj7n1FTUga3PmTRQzjP", "https://5am.zz.am/login/callback");
  // 접근 토큰 값 출력
 /*  alert(naver_id_login.oauthParams.access_token); */
naver_id_login.setPopup();
  
  // 네이버 사용자 프로필 조회
	naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
    /*  alert(naver_id_login.getProfileData('email'));
    alert(naver_id_login.getProfileData('gender'));
    alert(naver_id_login.getProfileData('name'));  */
    
    $("#i1").val(naver_id_login.getProfileData('name'))
	$("#i2").val(naver_id_login.getProfileData('email'))
	$("#i3").val(naver_id_login.getAccessToken())
	
	
	$("#f2").submit();
    
    
  }
</script>
</body>
</html>