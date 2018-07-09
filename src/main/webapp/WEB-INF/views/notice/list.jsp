<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <!--banner-->
<div class="banner-top">
	<div class="container">
		<h3 >Notice</h3>
		<h4><a href="index.html">Home</a><label>/</label>Notice</h4>
		<div class="clearfix"> </div>
	</div>
</div>

<!-- contact -->
<div class="contact">
	<div class="container">
		<!--- terms ---->
		<div class="terms" style="padding:0px;">
			<div class="container">

				<div class="spec ">
					<h3>Notice  </h3>
					<div class="ser-t">
						<b></b> <span><i></i></span> <b class="line"></b>
					</div>
				</div>
				
				<div class="panel panel-default">
						<div class="panel-heading">
							 <h6 class="panel-title"  data-toggle="collapse" data-target="#cusregi">
								 <span style="color:highlighttext;font-weight: bold;">공지사항 등록하기</span> 
								 
							 </h6>
							
						</div>
						
						<div id="cusregi" class="panel-collapse collapse">
							<div class="panel-body">
								<div class="input-group">
								  <span class="input-group-addon" id="basic-addon1">제목</span>
								  <input id="custitle" type="text" class="form-control" placeholder="제목을 입력하세요..." aria-describedby="basic-addon1">
								</div>
								
								
								<div class="input-group">
								  <span class="input-group-addon" id="basic-addon1">내용</span>
								  <textarea id="cuscontent" style="height: 400px" type="text" class="form-control" placeholder="내용을 입력하세요..." aria-describedby="basic-addon1"></textarea>
								</div>
								
								<h2 class="t-button" style="text-align: right;">
							    <a id="registerBtn" href="#" data-toggle="collapse" data-target="#cusregi"><span class="label label-info"  >등록하기</span></a>
							    </h2>
								
							</div>
						</div>
					</div>
				

					<div id="showList"></div>
								

			</div>
		</div>
		<!--- /terms ---->

	</div>

</div>

<!-- //contact -->

<!-- modal -->
			<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">						
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">&times;</button>
							<h4> 공지사항 수정</h4>
								
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-12 span-2 ">
									<h5 id="tcno" style="color:red;"></h5><hr><h5> 제목</h5>
									<p class="in-para"> <input id="title" type="text" value="" style="width:100%; border:none;"></p>
									<h5> 내용</h5>
									<p class="in-para"> <textarea id="content" style="width:100%; border:none;" ></textarea></p>
									 <div class="add-to">
										   <button id="modiBtn" class="my-cart-btn1 " data-dismiss="modal" aria-label="Close">Modify</button>
										<button class="my-cart-btn1"  data-dismiss="modal" aria-label="Close">Cancel</button>
									
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>


<!-- modal -->

   



<!--footer-->
<%@ include file="/WEB-INF/views/footer.jsp" %>
<!-- //footer-->
<!-- tabs -->
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>

<!-- //tabs -->
<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
<!-- for bootstrap working -->
<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->

  
<script type="text/javascript">
$(document).ready(function() {
	
	 var page = 1;

	function nlist(){
		
		 $.ajax({
		        type: "POST",
		        url: "/notice/list",
		        data : {
		        	page : page
		        },
		 		dataType: 'Json',
		        success: function(re) {
		           console.log(re);		           
		           adlist(re);		           
		        },	        
		    });	
		
	}
	
	nlist();
	
	
	 var str="";

	 function adlist(list){	
		 
			 
		 $.each(list, function(index, value) {			 
			 
			 str+='<div class="ter-wthree">'
				
				+'<h6><span>'+value.tcno+'. </span> '+value.title
				+'<a class="noticemodi" href="" data-toggle="modal" data-target="#myModal1" data-tcno ="'+value.tcno+'" data-title ="'+value.title+'" data-content ="'+value.content+'" ><i class="glyphicon glyphicon-wrench"></i></a>'
				+'<a class="noticedel" href="" data-tcno ="'+value.tcno+'"><i class="glyphicon glyphicon-remove"></i></a></h6>'
				+'<p>'+new Date(value.regdate).toLocaleString()+'</p>'	
				
				+'<p>'+value.content+'</p>'
				+'</div>'
			 
			}); 
		 
		 
		 	$("#showList").html(str);
		 	
		};
	 
	 $("#registerBtn").on("click",function(e){
		 
		 e.preventDefault();
		 
		 str="";
		 page=1;
	
		 console.log("공지사항 등록 시작")
		
		 var title = $('#custitle').val();
		 var content = $('#cuscontent').val();
		 
		 $.ajax({
		        type: "POST",
		        url: "/notice/register",
		        
		        data : {
		        	title : title,
		        	content : content
		        },
		 		dataType: 'text',
		        success: function(re) {
		           console.log(re);
		           nlist();
					$("#custitle").val("");
					$("#cuscontent").val("");	
		           
		        }
		    });
		 
		 
		 
	 });
	 
	 $(document).scroll(
				function() {
					var maxHeight = $(document).height();
					var currentScroll = $(window).scrollTop()
							+ $(window).height();

					if (maxHeight <= currentScroll) {
						console.log("down");
						page = page + 1;
						nlist();

					}

				});
	 
	 
	 $("#modiBtn").on("click",function(){
		 
		 console.log("수정 to controller");
		 console.log($("#tcno")[0].innerText);
		 console.log($("#title").val());
		 console.log($("#content").val());
		 $.ajax({
		        type: "POST",
		        url: "/notice/modi",
		        
		        data : {
		        	
		        	tcno : $("#tcno")[0].innerText,
		        	title : $("#title").val(),
		        	content : $("#content").val()
		        },
		 		dataType: 'text',
		        success: function(re) {
		           console.log(re);
		           nlist();
		            
		        }
		    });
		 
		 
	 })
		 $("#showList ").on("click",".noticedel",function(e){
			 		e.preventDefault();
			 		str="";
					 page=1;
			 		console.log("delete ??");		 		
			 		console.log($(this).data("tcno"));
			 		
			 		$.ajax({
				        type: "POST",
				        url: "/notice/del",			        
				        data : {
				        	tcno : $(this).data("tcno")
				        },
				 		dataType: 'text',
				        success: function(re) {
				           console.log(re);				           
				          nlist();
				         
				        }
				    });
			 	
			 	});
		 	
		 	$("#showList ").on("click",".noticemodi", function(e){
		 		e.preventDefault();
		 		str="";
				 page=1;
		 		console.log("modification ??")
		 		console.log(this);
		 		console.log($(this).data("content"));
		 		$("#tcno").html($(this).data("tcno"));
		 		$("#title").val($(this).data("title"));
		 		$("#content").val($(this).data("content"));
		 		
		 	});
	 

	

	
	
})
</script>
