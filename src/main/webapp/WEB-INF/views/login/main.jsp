<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <meta name="google-signin-client_id" content="948481018340-dkdp02e8rb5soim2ivitvqftm335nj6b">
 <!--banner-->

 
<div class="banner-top">
	<div class="container">
		<h3 >Login</h3>
		<h4><a href="/index">Home</a><label>/</label>Login</h4>
		<div class="clearfix"> </div>
	</div>
</div>
<!--login-->

	<div class="login">

		<div class="main-agileits">
				<div class="form-w3agile">
					<h3>Login</h3>
					<form method="post" action="/login/loginPost"  id="f1">
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
							<input id="cemail"  type="text" value="Email" name="cemail" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input id="cpw" type="password" value="Password" name="cpw" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
							<div class="clearfix"></div>
						</div>
						
						
                                     <div class="col-lg-12" style="padding-left: 65%">
                                	<label>
                                	<input type="checkbox" name="useCookie" id="useCookie"> Remember Me
                                	</label>
                                </div>
                              
                                <div style="height:20px"></div>
				<input type="submit" value="Login" id="loginBtn">	
				</form>
				<!--SNS 로그인 정보 보냄  -->
				<form id="f2" method="post" action="/login/login2">
				<input type="hidden" id="i1" name="cname">
				<input type="hidden" id="i2" name="cemail">
				
				</form>
					
<!-- <!--facebook -->
			<div id="fb-root"></div>


<!--google Login start  -->
<!-- Include the API client and Google+ client. -->
  <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
  <script src="https://apis.google.com/js/client:platform.js?onload=renderButton" async defer></script>


  <script>
  function onSuccess(googleUser) {
	    var profile = googleUser.getBasicProfile();
	    gapi.client.load('plus', 'v1', function () {
	        var request = gapi.client.plus.people.get({
	            'userId': 'me'
	        });
	        //Display the user details
	        request.execute(function (resp) {
	        	$("#i1").val(resp.name.givenName)
	     		$("#i2").val(resp.emails[0].value)	     		
	     		$("#f2").submit();
	         
	        });
	    });
	}
	function onFailure(error) {
	   
	}
	function renderButton() {
	    gapi.signin2.render('gSignIn' ,{
	       
	       
	    	'width': 20,
	        'height': 20,
	        'longtitle': false,
	       
	        'onsuccess': onSuccess,
	        'onfailure': onFailure,
	    
	    });
	}
	
  </script>

	<!--google Login end  -->
	
	

  <!--kakao Login start  -->
  <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<script

  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.

    // 카카오 로그인 버튼을 생성합니다.
     function loginWithKakao() {
      // 로그인 창을 띄웁니다.
      Kakao.Auth.login({
    	  success: function(authObj) {
    	        // 로그인 성공시, API를 호출합니다.
    	        Kakao.API.request({
    	          url: '/v1/user/me',
    	          success: function(res) {
    	            /* alert(JSON.stringify(res)); */
    	        	  
    	            
    	            
    	            $("#i1").val(res.properties.nickname)
    	    		$("#i2").val(res.kaccount_email)
    	    		
    	       
    	    		$("#f2").submit();
    	                       
    	            
    	          },
    	          fail: function(error) {
    	         
    	          }
    	        });
    	      },
        fail: function(err) {
         
        }
      });
    };
   
    
   
    
    
    
  //]]>
</script>

<!--kakao Login end  -->
<!--SNS 버튼  start -->
			<div class="header-ri">
				<ul class="social-top">
					<li style="float: left; margin-top: 5px" id="facebook"><a onclick="FB.login();" class="icon facebook" ><i class="fa fa-facebook" aria-hidden="true"></i><span></span></a></li>
					<li id="naver_id_login" style="float: left; margin: 10px"></li>
					<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
					<script type="text/javascript">
				  	var naver_id_login = new naver_id_login("VGj7n1FTUga3PmTRQzjP", "https://5am.zz.am/login/callback");
				  	var state = naver_id_login.getUniqState();
				  	naver_id_login.setButton("white", 1,22);
				  	naver_id_login.setDomain("https://5am.zz.am/login/main");
				  	naver_id_login.setState(state);
				  	naver_id_login.setPopup();
				  	naver_id_login.init_naver_id_login();
				  </script>		
				  <a id="custom-login-btn" href="javascript:loginWithKakao()" style="float: left; margin: 10px" ><img src="/resources/kakao.png" width="20"/></a>			
					<div id='gSignIn' class="customGPlusSignIn" style="float: left; margin: 10px"><span class="icon"></span></div>
				</ul>	
			</div>
				</div>
				<!--SNS 버튼  end -->
				<div style="height: 50px"></div>
				<div class="forg" >
					<a href="/login/forgotid" class="forg-left">Forgot ID</a><a href="/login/forgotpw" class="forg-left">/PW</a>
					<a href="/register/main" class="forg-right">Register</a>
				<div class="clearfix" ></div>
				</div>
			</div>
		</div>

<%@ include file="/WEB-INF/views/footer.jsp" %>

<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working -->
		<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->



<script>  
$(document).ready(function(e){
	/* facebook login start */
	function statusChangeCallback(response) { 
		console.log('statusChangeCallback'); 
		console.log(response);

	if (response.status === 'connected') {
		testAPI(); 
		} 


	}

	function checkLoginState() { 
		FB.getLoginStatus(function(response) {
			statusChangeCallback(response); 
			}); 
		} 
		

	window.fbAsyncInit = function() { 
		FB.init({ appId : '1600320570002277', 
			      cookie : true,
			      xfbml  : true,
			      version: 'v2.1'
		})

	FB.getLoginStatus(function(response) { 
		statusChangeCallback(response);
			}); 
		
		FB.Event.subscribe("auth.login", function(response) {
			   window.location.reload();
			});
			
		}; 
		

	(function(d, s, id) { 
		var js, fjs = d.getElementsByTagName(s)[0]; 
		if (d.getElementById(id)) return; 
		js = d.createElement(s); 
		js.id = id; js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.9&appId=1600320570002277"; 
		fjs.parentNode.insertBefore(js, fjs); 
		}(document, 'script', 'facebook-jssdk')); 
	// 로그인이 성공한 다음에는 간단한 그래프API를 호출한다. 
	// 이 호출은 statusChangeCallback()에서 이루어진다.  -->

		
	function testAPI() { 
		FB.api('/me',{fields: 'name,email,gender'},function(response) {
		
		
			$("#i1").val(response.name)
			$("#i2").val(response.email)
			
			$("#f2").submit();
	           		 
	        
			

		
	});
		
	} 
	/* facebook login end */
	
	
	$("#loginBtn").on("click",function(e){
	  e.preventDefault();
	  if($("#cemail").val()=="Email" || $("#cpw").val()=="Password"){
		  swal("아이디 또는 비밀번호를 입력해주세요","","warning")
	  }else{
			swal({
	    		  title: "로그인하시겠습니까?",
	    		 
	    		  type: "info",
	    		  showCancelButton: true,
	    		  closeOnConfirm: false,
	    		  showLoaderOnConfirm: true,
	    		},
	    		function(){
	    		  
	    		  swal("로그인중입니다.","","success");
	    		  setTimeout(function(){
	    			  $("#f1").submit();
	    		  }, 2000);
	    		 
	    		});
		    
	  }
	  
	 /*  $.ajax({
			url: '/loginPost',
			method: 'post',
		    dataType: 'text',		    
		    data: {
		    	
		    	'cemail': $("#cemail").val(),
		    	'cpw': $("#cpw").val(),
		    	'useCookie':$("#useCookie").val()
		    	
		    } ,
		    success: function(re) {
		  		console.log(re)
		    	self.location = "/index"
		        
		    },
		}); */
	  
  })
  
     var result = '${fail}';
	if (result == 'fail') {
		
		swal("아이디와 비밀번호를 확인해주세요","","warning")
		history.pushState(null, null);
		
		window.onpopstate = function(e) {
			history.go(1);
		};
	}
	
	var result3 = '${sendId}';
	if (result3 == "success") {
		history.pushState(null, null);
		swal("메일이 발송 되었습니다. 확인 후 로그인 하세요.","","success");
		window.onpopstate = function(e) {
			history.go(1);
		};
	}
	var result3 = '${sendPw}';
	if (result3 == "success") {
		history.pushState(null, null);
		swal("메일이 발송 되었습니다. 확인 후 로그인 하세요.","","success");
		window.onpopstate = function(e) {
			history.go(1);
		};
	}
  
})
  

  </script>

</body>
</html>