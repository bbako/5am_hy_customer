<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <meta name="google-signin-client_id" content="948481018340-dkdp02e8rb5soim2ivitvqftm335nj6b">
 <!--banner-->

 
<div class="banner-top">
	<div class="container">
		<h3 >Login</h3>
		<h4><a href="/index">Home</a><label>/</label>forgotpw</h4>
		<div class="clearfix"> </div>
	</div>
</div>
<!--login-->

	<div class="login">

		<div class="main-agileits">
				<div class="form-w3agile">
					<h3>forgotpw</h3>
					<form id="f1">
						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input id="cemail"  type="text" value="Name" name="cname" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
							<div class="clearfix"></div>
						</div>
						<div class="key">
						<i class="fa fa-envelope" aria-hidden="true"></i>
							<input id="cemail"  type="text" value="Email" name="cemail" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
							<div class="clearfix"></div>
						</div>
					
						
						
                                    
                              
                     <button id="findpw" class="btn btn-default"> 비밀번호 찾기</button>
                     <button type="button" class="btn btn-default" onclick="location.href='/login/main' ">취 소</button>          
						
				</form>
				
					


</div>
</div>
</div>
<%@ include file="/WEB-INF/views/footer.jsp" %>
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
<script type="text/javascript">
 
$(document).ready(function(e) { 
	
	var result3 = '${sendPw}';
	if (result3 == "fail") {
		history.pushState(null, null);
		alert("아이디와 이메일을 확인해주세요.");
		window.onpopstate = function(e) {
			history.go(1);
		};
	}
	$("#findpw").on("click", function(e) {
			e.preventDefault();
			$("#f1").attr("method", "post").attr("action", "/login/forgotpw").submit();
	 })
	 
	 


	
});

  </script>

</body>
</html>