<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>

로그인!
<script type="text/javascript">
  var naver_id_login = new naver_id_login("VGj7n1FTUga3PmTRQzjP", "http://127.0.0.1:8080/callback");
  // 접근 토큰 값 출력
 /*  alert(naver_id_login.oauthParams.access_token); */

  
  // 네이버 사용자 프로필 조회
	naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
/*     alert(naver_id_login.getProfileData('email'));
    alert(naver_id_login.getProfileData('gender'));
    alert(naver_id_login.getProfileData('name')); */
    
    $.ajax({
        url:'/login',
        type:'POST',
        dataType : 'json',
        data : { "email" : naver_id_login.getProfileData('email'), 
        	"name" : naver_id_login.getProfileData('name'),
        	"gender" : naver_id_login.getProfileData('gender'),
        },
        success : function(result){
        	alert("성공!!");
			console.log(result);

        }
        
    })
    
    
    
  }
</script>
</body>
</html>