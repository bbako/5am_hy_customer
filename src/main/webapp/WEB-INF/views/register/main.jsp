<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	
<style>       
  .window {
            display: none;
            left:10%;
            bottom:500%;
            background-color: #ffffff;
            width:100%;
            z-index:8000;
            position:absolute;
        }  
        

</style>
	
	
	
     <!--banner-->
<div class="banner-top">
	<div class="container">
		<h3 >Register</h3>
		<h4><a href="/index">Home</a><label>/</label>Register</h4>
		<div class="clearfix"> </div>
	</div>
</div>

<!--login-->

	<div class="login">
		<div class="main-agileits">
				<div class="form-w3agile form1" >
					<h3>Register</h3>
					
						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							
							<c:if test="${dto.cname !=null}">
							<input id="cname"  type="text" value="${dto.cname}" name="cname"  required="">
							</c:if>
							<c:if test="${dto.cname ==null}">
							<input id="cname"  type="text" value="이름을 입력해주세요" name="cname" onfocus="if (this.value == '이름을 입력해주세요') {this.value = '';}" onblur="if (this.value == '') {this.value = '이름을 입력해주세요';}" style="width: 70%">
							</c:if>
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
							<c:if test="${dto.cemail !=null}">
							<input  id="cemail" type="text"  readonly value="${dto.cemail}" name="cemail" onfocus="this.value = '';">
							<button type="button"   class="btn btn-default" style="float:right; margin-top: 3px; margin-right: 2px">확인됨</button>
							</c:if>
							<c:if test="${dto.cemail ==null}">
							<input  id="cemail" type="text" value="이메일 중복체크를 해주세요" name="cemail"  style="width: 70%;" readonly>
							<button type="button"   type="submit" class="btn btn-default" id="modalBtn" style="float:right; margin-top: 3px; margin-right: 2px" data-toggle="modal" data-target="#myModal">중복 체크</button>
							</c:if>
							
							<div class="clearfix" style="background-color:  #e5e5e5"></div>
							
							 
						</div>
						 
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input id="cpw"  type="password" value="비밀번호를 입력해주세요" name="cpw" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '비밀번호를 입력해주세요';}" required="" style="width: 70%">
							<div class="clearfix"></div>
						</div>
						
								<div class="key">
								<i class="fa fa-home" aria-hidden="true"></i>
                        <input  type="text" value="주소를 검색해주세요" name="caddrm" id="address2" required=""style="width: 70%" readonly>
                        <button id="showMask" type="submit" class="btn btn-default" style="float:right; margin-top: 3px; margin-right: 2px">주소 검색</button>
							<div class="clearfix" style="background-color:  #e5e5e5"></div>
							
                       </div>
                      
                       
                       <div class="key">
            			<i class="fa fa-home" aria-hidden="true"></i>
                        <input  type="text" value="상세주소를 입력해주세요" name="caddr" id="details" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '상세주소를 입력해주세요';}" required="" style="width: 70%" >
                        
							<div class="clearfix"></div>
						
                    </div>
                    
                     <!-- 중복체크 Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">이메일 중복 체크</h4>
        </div>
        <div class="modal-body">
          <div class="key">
          <input  type="text" value="이메일을 입력해주세요"  id="email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '이메일을 입력해주세요';}" required=""style="width: 80%">
         <button id="showMask2" type="submit" class="btn btn-default" style="float:right; margin-top: 3px; margin-right: 2px">중복 체크</button>
         	<div class="clearfix"></div>
						
                    </div>
        </div>
        <div style="height: 10px"></div>
        <div class="modal-footer">
        	<button type="button" class="btn btn-default" data-dismiss="modal" id="idcheck">Register</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
<!-- 중복체크 Modal -->                    
                            
<!-- 주소 검색 div 시작 -->
					<div class="form-group">
					<div class="col-md-9">
                            <div class="input-icon right">		
				<div class="mask"></div>
    				<div class="mask2"></div>
    
<!-- 1번 창 보여짐   -->
				<div class="window">
					<div class="col-md-12 col-sm-12 col-xs-12" style="margin: 0;padding: 0">
						<div class="panel panel-danger"style="margin: 0;padding: 0">
							<div class="panel-heading">
								<i id="close" class="fa fa-times" aria-hidden="true" style="float: right"></i><h5>주소검색</h5>
								
								
							</div>
							<div class="panel-body"style="margin: 0;padding: 0">
								
							<div id="postcodify"></div>
							</div>
						</div>
					</div>
				</div>
					</div>
					</div>
				</div>
							
						
						<input type="submit" value="Submit" id="regiBtn">
					
					
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

  	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
  <script type="text/javascript">
	
    function wrapWindowByMask(){

        $('.window').show();
    }
    

    
    $(document).ready(function(){
        // showMask를 클릭시 작동하며 검은 마스크 배경과 레이어 팝업을 띄웁니다.
        $('#showMask').click(function(e){
            // preventDefault는 href의 링크 기본 행동을 막는 기능입니다.
            e.preventDefault();
            wrapWindowByMask();
        });
 
        // 닫기(close)를 눌렀을 때 작동합니다.
        $('.window #close').click(function (e) {
            e.preventDefault();
            $('.window').hide();
        });
        
       
 
    
       
 
        
    });
</script>

<script>
    $(function() { $("#postcodify").postcodify({
        insertPostcode5 : "#postcode",
        insertAddress : "#address",
        insertAddress : "#address2",
        insertDetails : "#details",
        insertExtraInfo : "#extra_info",
        hideOldAddresses : false,
        afterSelect : function(selectedEntry) {
            $("#postcodify div.postcode_search_result").remove();
            $("#postcodify div.postcode_search_status.summary").hide();
            
            $('.window').hide();
        }
       
        
    }); });
    

    if('${dto.cname ==null}'=='true'){
    	
    	$("#regiBtn").on("click",function(e){
    		if($("#cemail").val()=="이메일 중복체크를 해주세요"){
    			swal("이메일 중복체크해주세요","","warning");
        	}
    	})
    	
    	 $("#showMask2").on("click",function(e){
    	    	var email= $("#email").val();
    	    	var regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;   
    	    	
    	    	if(regex.test(email) == false) {  
    	    	    swal("잘못된 이메일 형식입니다.","","warning");  
    	    	    return false;  
    	    	} else {  
    	    		
    	    		
    	    	    
    	    	  
    	    	
    	    	$.ajax({
    				url: '/register/check',
    				method: 'post',
    			    dataType: 'text',		    
    			    data: {
    			    	email:$("#email").val()
    			    	
    			    } ,
    			    success: function(re) {
    			  if(re=='fail'){
    				  
    				  swal('해당하는 아이디는 존재합니다.',"","warning")
    				 
    			  }else{
    				  swal(re+"는 사용하실 수 있습니다.","","success")	
    				  
    				  $("#idcheck").on("click",function(e){
    					  swal("아이디가 적용되었습니다.","","success")	
    	    			$("#cemail").val(email);
    	    			
    	    				
    				  
    				  
    			$("#regiBtn").on("click",function(e){
    				if($("#cname").val()=="이름을 입력해주세요"||$("#cpw").val()=="비밀번호를 입력해주세요"||$("#caddrm").val()=="주소를 검색해주세요"){
	    	    		swal("빈칸을 채워주세요","","warning")
	    	    	}else{
    	    	e.preventDefault();
    	    	if(re){
    	    	$.ajax({
    				url: '/register/main',
    				method: 'post',
    			    dataType: 'text',		    
    			    data: {
    			    	'cname' : $("#cname").val(),
    			    	'cemail': $("#cemail").val(),
    			    	'cpw':$("#cpw").val(),
    			    	'caddrm':$("#address2").val(),
    			    	'caddr':$("#details").val()
    			    	
    			    } ,
    			    success: function(re) {
    			    	
    			    	  
    			    		  swal("등록되셨습니다","2초후 로그인 페이지로 이동합니다.","success");
    			    		  setTimeout(function(){
    			    		    self.location = "/login/main"
    			    		  }, 2000);
    			    		 
    			    		
    			    	
    			        
    			    },
    			});
    		}
    	    	
	    	    	}
    	    })
    			
    			  
    				  })
    	    
    	    
    	    
    			  }
    			  
    				  
    			
    			  
    			    	
    			        
    			    },
    			});
    	    }
    	    })
		  
	
    }else{
    	$("#regiBtn").on("click",function(e){
			
        	e.preventDefault();
        	if($("#cemail").val()=="이메일 중복체크를 해주세요"){
        		swal("중복체크해주세요","","warning");
        	}else if($("#cname").val()=="이름을 입력해주세요"||$("#cpw").val()=="비밀번호를 입력해주세요"||$("#caddrm").val()=="주소를 검색해주세요"){
        		swal("빈칸을 채워주세요","","warning")
        	}else{
        	$.ajax({
    			url: '/register/main',
    			method: 'post',
    		    dataType: 'text',		    
    		    data: {
    		    	'cname' : $("#cname").val(),
    		    	'cemail': $("#cemail").val(),
    		    	'cpw':$("#cpw").val(),
    		    	'caddrm':$("#address2").val(),
    		    	'caddr':$("#details").val()
    		    	
    		    } ,
    		    success: function(re) {
    		  
    		    	self.location = "/login/main"
    		        
    		    },
    		});
    	
        	
        	}
        })
	
    }
    
    
   
    	 

   
</script>

</body>
</html>