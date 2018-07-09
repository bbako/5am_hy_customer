<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<base href="/resources/">
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<head>
<title>5AM입니다</title>
<!-- for-mobile-apps -->
 <meta name="google-signin-client_id" content="948481018340-dkdp02e8rb5soim2ivitvqftm335nj6b">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:title" content="Vide" />
<meta name="keywords" content="Big store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- alret -->
<link rel="stylesheet" type="text/css" href="dist/sweetalert.css">
<!-- js -->
   <script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script src="dist/sweetalert.min.js"></script>
<script type="text/javascript">

	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Noto+Sans:400,700' rel='stylesheet' type='text/css'>
<!--- start-rate---->
<script src="js/jstarbox.js"></script>
	<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
<!---//End-rate---->

</head>
<body class="fade-in">
<div class="header">

		<div class="container">
			
			<div class="logo">
				<h1 ><a href="/index"><span>t h e </span>5 A M</a></h1>
			</div>

		


		

				<div class="nav-top">
					<nav class="navbar navbar-default">
					
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						

					</div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav "  style="font-size: 20px">
							<li ><a href="/index" class="hyper "><span >Home</span></a></li>	
							
							<li class="dropdown ">
								<a href="#"  class="dropdown-toggle  hyper" data-toggle="dropdown" ><span>Category<b class="caret"></b></span></a>
								<ul class="dropdown-menu multi">
									<div class="row" id="category">
										<div class="col-sm-3">
											<ul class="multi-column-dropdown">
			
												<li><a href="/category/list?cate=식음료"  data-category="식음료"><i class="fa fa-angle-right" aria-hidden="true"></i>식음료</a></li>
												<li><a href="/category/list?cate=화장품"  data-category="화장품"><i class="fa fa-angle-right" aria-hidden="true"></i>화장품</a></li>
												<li><a href="/category/list?cate=의약%26건강"  data-category="의약&amp;건강"> <i class="fa fa-angle-right" aria-hidden="true"></i>의약 &amp;건강</a></li>
												<li><a href="/category/list?cate=교양%26오락"  data-category="교양&amp;오락"><i class="fa fa-angle-right" aria-hidden="true"></i>교양 &amp; 오락</a></li>
												<li><a href="/category/list?cate=생활잡화"  data-category="생활잡화"><i class="fa fa-angle-right" aria-hidden="true"></i>생활잡화</a></li>
											</ul>
										
										</div>
										<div class="col-sm-3">
										
											<ul class="multi-column-dropdown">
												<li><a href="/category/list?cate=교육%26단체"  data-category="교육&amp;단체"><i class="fa fa-angle-right" aria-hidden="true"></i>교육 &amp; 단체</a></li>
												<li><a href="/category/list?cate=레저%26스포츠"  data-category="레저&amp;스포츠"><i class="fa fa-angle-right" aria-hidden="true"></i>레저 &amp; 스포츠</a></li>
												<li><a href="/category/list?cate=패션"  data-category="패션"><i class="fa fa-angle-right" aria-hidden="true"></i>패션</a></li>
												<li><a href="/category/list?cate=주택%26가구"  data-category="주택&amp;가구"><i class="fa fa-angle-right" aria-hidden="true"></i>주택 &amp; 가구</a></li>
												<li><a href="/category/list?cate=금융"  data-category="금융"><i class="fa fa-angle-right" aria-hidden="true"></i>금융</a></li>
												<li><a href="/category/list?cate=컴퓨터%26주변기기"  data-category="컴퓨터&amp;주변기기"><i class="fa fa-angle-right" aria-hidden="true"></i>컴퓨터 &amp; 주변기기</a></li>
												
											</ul>
										
										</div>
										<div class="col-sm-3">
										
											<ul class="multi-column-dropdown">
												<li><a href="/category/list?cate=전자%26통신"  data-category="전자&amp;통신"><i class="fa fa-angle-right" aria-hidden="true"></i>전자 &amp; 통신</a></li>
												<li><a href="/category/list?cate=유통"  data-category="유통"><i class="fa fa-angle-right" aria-hidden="true"></i>유통</a></li>
												<li><a href="/category/list?cate=수송"  data-category="수송"><i class="fa fa-angle-right" aria-hidden="true"></i>수송</a></li>
												<li><a href="/category/list?cate=인터넷"  data-category="인터넷"><i class="fa fa-angle-right" aria-hidden="true"></i>인터넷</a></li>
												<li><a href="/category/list?cate=서비스%26기타"  data-category="서비스&amp;기타"><i class="fa fa-angle-right" aria-hidden="true"></i>서비스 &amp; 기타</a></li>
											</ul>
										</div>
										<div class="col-sm-3 w3l">
											<a href="/category/list?cate=식음료"><img src="images/me.png" class="img-responsive" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>	
								</ul>
							</li>
							
							
							<li><a href="/qna/list" class="hyper"> <span> Q & A</span></a></li>
							<li><a href="/contact/list" class="hyper"><span>Contact Us</span></a></li>
							<li><a href="/notice/list" class="hyper"><span>Notice</span></a></li>
							
						</ul>
					</div>
					</nav>

					<div class="cart" style="">
						<c:if test="${login.cemail !=null}">    
						<a id="logout" ><i class="fa fa-user" aria-hidden="true"  style="margin:10px;  "></i><label>Logout</label></a >			
					</c:if>
					<c:if test="${login.cemail ==null}">
						<a href="/login/main" ><i class="fa fa-user" aria-hidden="true" style="margin:10px; "></i><label>Login</label></a >
					</c:if>
					<c:if test="${login.cemail ==null}">
						<a href="/register/main" ><i class="fa fa-arrow-right" aria-hidden="true" style="margin:10px"></i><label>Register</label></a>
						</c:if>
					<a href="#" id="zzim" data-toggle="modal" data-target="#myCartModal" data-customer = "${login.cemail}"><i class="fa fa-shopping-cart" style="margin:10px"></i><label>List</label></a></div>
					<div class="clearfix"></div>
				</div>
					
				</div>			
</div>

<!--cart modal begin  -->


	<div class="modal fade" id="myCartModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">


		<div class="modal-dialog" role="document">
			<div class="modal-content">

				<div class="modal-header" style="background-color: pink">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel" style="color: white">
						<span class="glyphicon glyphicon-shopping-cart"></span> My Cart
					</h4>
				</div>
				<div class="modal-body">
				
				
					
					<div class="col-md-12">
					<ul id="cartUL"></ul>
						 
					</div>
				</div>
				
			</div>
		</div>

	</div>
				

<!--cart modal end  -->



  <!-- header 끝!!!-->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

	<script
	  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	  crossorigin="anonymous"></script>
	<script type='text/javascript'>

$(document).ready(function(e){
	
	$("#logout").on("click",function(e){
		  $.ajax({
				url: 'https://nid.naver.com/oauth2.0/token',
				method: 'post',
			    dataType: 'json',		    
			    data: {
			    	
			    	grant_type: 'delete',
			    	client_id: 'VGj7n1FTUga3PmTRQzjP',
			    	client_secret:'S9GAgqYQFY',
			    	access_token:'${token}',	
			    	service_provider:'NAVER'
			    	
			    } ,
			    success: function(re) {
			  		console.log(re)
			    	
			        
			    },
			}); 	  
		
	})
	
	  	
	  Kakao.init('e007bd67d95edb54cf4e8a0eb454088a');
	  function ktout() {
	  	Kakao.Auth.logout(function (){
	  		
	  		
	  	});
	  	
	  }
	  
	  $("#logout").on("click",function(e){
		  swal({
    		  title: "로그아웃하시겠습니까?",
    		 
    		  type: "info",
    		  showCancelButton: true,
    		  closeOnConfirm: false,
    		  showLoaderOnConfirm: true,
    		},
    		function(){
    		  
    		  swal("로그아웃중입니다.","","success");
    		  setTimeout(function(){
    			  location.href="https://www.google.com/accounts/Logout?continue=https://appengine.google.com/_ah/logout?continue=https://5am.zz.am/login/logout"
    				  ktout();
    				  FB.logout();
    		  }, 1000);
    		 
    		});
		 
		  
		  
	  })
	 /*    $("#logout").on("click",function(e){
	    	  FB.logout();
		  
	  })
	   */
	


	  function onSuccess(googleUser) {
		    var profile = googleUser.getBasicProfile();
		    gapi.client.load('plus', 'v1', function () {
		        var request = gapi.client.plus.people.get({
		            'userId': 'me'
		        });
		        //Display the user details
		        request.execute(function (resp) {
		        	
		         
		        });
		    });
		}
		function onFailure(error) {
		    alert(error);
		}
		
		 function signOut() {
			    var auth2 = gapi.auth2.getAuthInstance();
			    auth2.signOut().then(function () {
			      console.log('User signed out.');
			    });
			  }


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
				
				
			});
				
			} 
			
			/*   $("#logout").on("click",function(e){
				  location.href="https://www.google.com/accounts/Logout?continue=https://appengine.google.com/_ah/logout?continue=https://5am.zz.am/logout"
				  
			  })
			  
			 
 */
 
 			$("#zzim").on("click",function(){
 				console.log("zzim begin");
 				console.log($(document.getElementById("zzim")).data("customer"))
 				console.log(this);
 				console.log($(this).data("customer"));
 				
 				
 				
 				readZzim();

 				
 			})
 			
 			var readZzim = function(){
 				$.ajax({ 
 					url: "/cart/list" ,
 					type: "POST",
 					data:{
 						
 						customer : $(document.getElementById("zzim")).data("customer")
 					},
 					dataType : 'json' , 
 					success: function(data) { 
 						console.log(data);
 						
 						var str = "";
 						
 						 $.each(data, function(index, value) {
 							 
 			    			 str+='<li style="color: white; border:2px solid pink; background-color: pink; border-radius:5px; margin:5px; text-align:center; width:23%; overflow:hidden; float:left;"><img style="width:100%;" id="myImg" src="http://192.168.0.17:8083/admin/display/gif?fName='+value.sid+'.gif" class="img-responsive" alt=""><div style="height:53px" ><h3>'+value.sid+' <i stlye="margin:10px" id="zzimDel" class="fa fa-trash-o cartdel" aria-hidden="true" data-customer="'+value.mid+'" data-store="'+value.sid+'"></i></h3></div></li>';
 			    			 
 			    			}); 
 						
 						$("#cartUL").html(str);
 					
 					}
 				})
				
				
			}
 			
 			$(document).on("click","#zzimDel",function(e){
 		    	 console.log("zzimDel");
 		    	swal({
					  title: "Are you sure?",
					  text: "Your will not be able to recover this imaginary file!",
					  type: "warning",
					  showCancelButton: true,
					  confirmButtonClass: "btn-danger",
					  confirmButtonText: "Yes, delete it!",
					  closeOnConfirm: false
					},
					function(){
					  swal("Deleted!", "Your imaginary file has been deleted.", "success");
					  $.ajax({ 
	 						url: "/cart/del" ,
	 						type: "POST",
	 						data:{
	 							
	 							customer :"${login.cemail}",
	 							store :   $("#zzimDel").data("store")
	 						},
	 						dataType : 'text' , 
	 						success: function(data) { 
	 							console.log(data);
	 							
	 							console.log("zzim delete");
	 							readZzim();
	 						
	 						}
	 					})
					});
 		    	
 		    	 
 		    	 });
 			
 			$(window).scroll(function () {
 	   	        if ($(window).scrollTop() > 200) {
 	   	        	console.log($("#zzim").children()[1]);
 	   	        $("#zzim").children()[1].innerText="";
 	   	        	$("#zzim").css('position', 'fixed').css('z-index', '999').css('bottom','57px').css('right','0.7%').css('font-size', '30px');
 	   	        } else {
 	   	        $("#zzim").children()[1].innerText="List";
 	   	        	$("#zzim").css('position', 'relative').css('bottom','0px').css('font-size', '15px');
 	   	        }
 	   	        })

	
})

</script>  