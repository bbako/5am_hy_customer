<%@ include file="/WEB-INF/views/header.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="js/bootstrap.js"></script>
<!-- Carousel
    ================================================== -->

<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<a href="/category/list?cate=식음료"><img class="first-slide"
				src="images/ba.jpg" alt="First slide"></a>

		</div>
		<div class="item">
			<a href="/category/list?cate=화장품"> <img class="second-slide "
				src="images/ba1.jpg" alt="Second slide"></a>

		</div>
		<div class="item">
			<a href="/category/list?cate=식음료"><img class="third-slide "
				src="images/ba2.jpg" alt="Third slide"></a>

		</div>
	</div>
	 <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
	

</div>

<!-- /.carousel -->

<!--content-->
<div class="kic-top ">
	<div class="container ">
		<div class="kic ">
			<h3>${cate}</h3>

		</div>
		<div class="col-md-4 kic-top1">
			 <img src="images/ki.jpg"
				class="img-responsive" alt="">
			
			<h6>Dal</h6>
			<p>Nam libero tempore</p>
		</div>
		<div class="col-md-4 kic-top1">
			 <img src="images/ki1.jpg"
				class="img-responsive" alt="">
			
			<h6>Snacks</h6>
			<p>Nam libero tempore</p>
		</div>
		<div class="col-md-4 kic-top1">
			<img src="images/ki2.jpg"
				class="img-responsive" alt="">
			
			<h6>Spice</h6>
			<p>Nam libero tempore</p>
		</div>
	</div>
</div>

<!--content-->
<div class="product">
	<div class="container">
		<div class="spec ">
			<h3>등록된 상점</h3>
			<div class="ser-t">
				<b></b> <span><i></i></span> <b class="line"></b>
			</div>
		</div>
		<!--search  -->
		
		<div class=" con-w3l agileinf">
			
			
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

<!-- product -->


<!-- modal -->
				<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">
								<div class="col-md-5 span-2">
											<div class="item">
												<img id="storeimg" src="" class="img-responsive" alt="">
											</div>
								</div>
								<div class="col-md-7 span-1 ">
									<h3><div id="stName">StoreName</div></h3>
									<div id="stCategory"></div>
									<span class="reducedfrom "><div id="stPhone"></div></span>
									<div id="stAddrm"></div>
<!-- 									<div id="stContent"></div>
									<p class="in-para">댓글 리스트</p> -->
									<div id="question"></div>
									<div id="paging"></div>
									<div id="close"></div> 
									<div id="detail"></div>
									<div id="answer"></div><input id="stSid" type="hidden"><br>
									<c:if test="${login.cemail !=null}"> 
									<div class="input-group">
										
									  <input id="titleText" type="text" class="form-control" placeholder="제목을 입력하세요..." aria-describedby="basic-addon1">
									  <textarea id="questionText" style="height: 80px" type="text" class="form-control" placeholder="내용을 입력하세요..." aria-describedby="basic-addon1"></textarea>
									  <a id="aTag" href="#" id="replyBtn" style="float: right" >댓글 등록하기<i class="fa fa-envelope" aria-hidden="true"></i></a>
									  
									</div>
									</c:if>
									<div class="add-to">
										   <button id="cartBtn" class="my-cart-btn my-cart-btn1 " data-id="1" data-name="Moong" data-summary="summary 1" data-price="1.50" data-quantity="1" data-image="images/of.png">Add to Cart</button>
									</div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
					</div>
				</div>

<!-- modal -->

<%@ include file="/WEB-INF/views/footer.jsp" %>


<script>
	$(document).ready(function() {
		

			console.log("category in???")

			var page = 1;
			/* var scategory=$(this).data('category'); */
			var scategory = '${cate}'
		
			/* 	console.log($(this).data('category'));
			 */
			function init() {

				$.ajax({

					url : '/category/list',
					type : 'post',
					dataType : 'json',
					data : {
						scategory : scategory,
						page : page
					},
					success : function(data) {
						console.log(data);
						if(data.length!=0){
    		    			adlist(data);
    		    		}else{
    		    			swal("더이상의 결과가 없습니다.")
    		    		}
					},
			        beforeSend: function () {
                        var width = 0;
                        var height = 0;
                        var left = 0;
                        var top = 0;
                        width = 70;
                        height = 70;
                        top = ( $(window).height() - height ) / 2 + $(window).scrollTop();
                        left = ( $(window).width() - width ) / 2 + $(window).scrollLeft();
                        if($("#div_ajax_load_image").length != 0) {
                               $("#div_ajax_load_image").css({
                                      "top": top+"px",
                                      "left": left+"px"
                               });
                               $("#div_ajax_load_image").show();
                        }
                        else {
                               $('body').append('<div id="div_ajax_load_image" style="position:absolute; top:' + top + 'px; left:' + left + 'px; width:' + width + 'px; height:' + height
                               + 'px; z-index:9999; background:transparent; filter:alpha(opacity=50); opacity:alpha*0.5; margin:auto; padding:0; "><img src="images/loading.gif" style="width:70px; height:70px;"></div>');
                        }
                      },
                    complete: function () {$("#div_ajax_load_image").hide();},

				});
			}
			init();
		
			 
			 var idnum = 1;
		    	var page = 1;
		    	
		    	function adlist(list){
		    		 
		    		 var str="";
		    		 
		    		 $.each(list, function(index, value) {
		    			 
		    			 
		    			 
		    			 str+='<div class="col-md-3 pro-1" style="margin-bottom:10px;margin-top:10px"><div class="col-m"><a href="#" data-toggle="modal" data-target="#myModal4" class="offer-img" data-name="'+value.sid+'"  data-src="http://192.168.0.17:8083/admin/display/gif?fName='+value.sid+'.gif">'
	    					+'<img src="http://192.168.0.17:8083/admin/display/gif?fName='+value.sid+'.gif" class="img-responsive" alt=""></a>'
	    					+'<div class="mid-1"><div class="women">'
	    					+'<h6>'+value.sname+'</h6></div><div class="mid-2">'
	    					+'<h5>주소 : '+value.saddrm+' , '+value.saddr+'</h5>'
	    					+'<p>카테고리 : '+value.scategory+'</p>'
	    				  	+'<div class="block"><div class="starbox small ghosting"> </div></div>'
	    					+'<div class="clearfix"></div></div><div class="add">'
	    				  	+'<button class="btn my-cart-btn my-cart-b" data-id="'+ idnum++ +'" data-name="'+value.sid+'" data-summary="summary'+idnum+'" data-price="1.50" data-quantity="1" data-image="http://192.168.0.17:8083/admin/display/gif?fName='+value.sid+'.gif">Add to Cart</button>'
	    					+'</div></div></div></div>'
		    			 
		    					
		    			 
		    			}); 
		    		 
		    		 mid_adv='<div class="clearfix"></div> <div class="col-md-4 m-w3ls1">'
		    			 +' <div class="col-md "> <img src="images/co.jpg" class="img-responsive img" alt="">'
		    			 +'    <div class="big-sale">'
		    			 +'       <div class="big-sale1"><h3>Big <span>Sale</span></h3>'
		    			 +'           <p>It is a long established fact that a reader </p></div>'
		    			 +'   </div></div></div>'
		    			 +'  <div class="col-md-4 m-w3ls1">'
		    			 +'<div class="col-md "> <img src="images/co.jpg" class="img-responsive img" alt="">'
		    			 +'   <div class="big-sale">'
		    			 +'      <div class="big-sale1"><h3>Big <span>Sale</span></h3><p>It is a long established fact that a reader </p></div>'
		    			 +'</div></div></div>'
		    			 +' <div class="col-md-4 m-w3ls">'
		    			 +' <div class="col-md2 "><img src="images/co2.jpg" class="img-responsive img1" alt="">'
		    			 +' <div class="big-sale2"><h3>Cooking <span>Oil</span></h3>'
		    			 +'    <p>It is a long established fact that a reader </p></div>'
		    			 +' </div>'
		    			 +'  <div class="col-md3 "><img src="images/co3.jpg" class="img-responsive img1" alt="">'
		    			 +'    <div class="big-sale3"><h3>Vegeta<span>bles</span></h3>'
		    			 +'        <p>It is a long established fact that a reader </p></div>'
		    			 +'  </div></div><div class="clearfix"></div>'
		    		 
		    		 	$(".agileinf").append(str +mid_adv);
		    			 
		    		
		    			 
		    			 
		    		
		    		 
		    	}
		    		
		    	
		    		
		    		
		    		
		    		
		    		$(document).scroll(
		    				function() {
		    					var maxHeight = $(document).height();
		    					var currentScroll = $(window).scrollTop() + $(window).height();

		    					if (maxHeight <= currentScroll) {
		    						console.log("down");
		    						page = page + 1;
		    						init();

		    					};

		    				});
		    		
		    		$().UItoTop({ easingType: 'easeOutQuart' });
		    		
			    	
			    	
		 	    	//댓글보고 리스트로 돌아가기 
		   		$(document).on("click","#listBtn",function(e){
						e.preventDefault();
				    	$("#close").html('');
			 		    $("#detail").html('');
				 		$("#answer").html('');
					 	$(".input-group").html('<input id="titleText" type="text" class="form-control" placeholder="제목을 입력하세요..." aria-describedby="basic-addon1"><textarea id="questionText" style="height: 80px" type="text" class="form-control" placeholder="내용을 입력하세요..." aria-describedby="basic-addon1"></textarea><a style="float: right" id="replyBtn" id="aTag" href="#">댓글 등록하기<i class="fa fa-envelope" aria-hidden="true"></i></a>');
		    		 })//  끝 
			    	

		    		//상점광고 자세히 보기
		    	 $(document).on("click",".offer-img",function(){
				    	$("#close").html('');
			 		    $("#detail").html('');
				 		$("#answer").html('');
		 	    	 $.ajax({
		  		    	  type: "POST",
		  		    	  url: "/index/getDetail",
		  		    	  data: {
		  		    		  sid: $(this).data("name")
		  		    	  },
		  		 		  dataType: 'Json',
		  		    	  success: function(vo){
			    		 console.log(vo);
		  		    		$("#stName").html(vo.sname);
		  		    		$("#stCategory").html(vo.scategory);
		  		    		$("#stAddrm").html("<p class='in-para'>"+vo.saddrm+', '+vo.saddr+"</p>");
		  		    		$("#stPhone").html(vo.sphone);
		  		    		$("#stContent").html("상점 소개<br>안녕하세요. 사장님은 "+vo.sid+"입니다.");
		  		    		$(".input-group").html('<input id="titleText" type="text" class="form-control" placeholder="제목을 입력하세요..." aria-describedby="basic-addon1"><textarea id="questionText" style="height: 80px" type="text" class="form-control" placeholder="내용을 입력하세요..." aria-describedby="basic-addon1"></textarea><a style="float: right" id="replyBtn" id="aTag" href="#">댓글 등록하기<i class="fa fa-envelope" aria-hidden="true"></i></a>');
		  		    		$("#storeimg").attr("src","http://192.168.0.17:8083/admin/display/gif?fName="+vo.sid+".gif");
		  		    		$("#stContent").html("사장님은 "+vo.sid+"입니다... 블라블라..");
		  		    		
		  		    		$("#storeimg").attr("src","http://192.168.0.17:8083/admin/display/gif?fName="+vo.sid+".gif");
		  		    		
		  		    		$("#stSid").val(vo.sid);
		  	
				 		    	qRead();
		  		    	  }
		  		    	});     	

			    	 })
			    	 
			    	  $(document).on("click","#toCart",function(e){
			    	 console.log("toCart Btn click");
			    	 $.ajax({ 
							url: "/cart/add" ,
							type: "POST",
							data:{
								
								customer : "${login.cemail}",
								store :   $(this).data("name")
							},
							dataType : 'text' , 
							success: function(data) { 
								console.log(data);
								swal(data);
								
								console.log("check cart ")
							}
						})
			    	 
			    	 }); 
		 	    	
		   		
				 
				//자세히보기에서 질문보기
					    function qRead(){
		  		     			
		  		     			
		  		  	    	 //댓글 페이징	
					    	  	$.ajax({
					 		    	  type: "POST",
					 		    	  url: "/index/qPage",
					 		    	  data: {
					 		    		 keyword: $("#stSid").val(), page:1
					 		    	  },
					 		 		  dataType: 'json',
					 		    	  success: function(pageMaker){
					 		    		var closeStr='<ul class="pagination pagination-sm">';
					 		    		for(var i= pageMaker.start; i<pageMaker.end+1; i++){
					 		    			closeStr += '<li><a class="curr pageNum" data-pnum="'+i+'"href='+i+'>'+i+'</a></li>';
					 		    		 }
					 		    		closeStr += '</ul>';
					 		    		$("#paging").html(closeStr);
					 		    	  }
					 		    });  
		  		  	    	 
		  		  	    	 
			  		  	     //댓글 페이지 클릭	
			  		  	    $(document).on("click",".pageNum",function(e){
			  		  	    	e.preventDefault();
					    	  	$.ajax({
					 		    	  type: "POST",
					 		    	  url: "/index/qRead",
					 		    	  data: {
					 		    		 keyword: $("#stSid").val(), page: $(this).data('pnum')
					 		    	  },
					 		 		  dataType: 'json',
					 		    	  success: function(list){
						 		    		var str='';
						 		    		for(var i=0; i<list.length; i++){
						 		    			str += '<div style="margin:7px"><a href="#"><h3 class="panel-content" data-mqno='+list[i].mqno +'>'+list[i].title+'</h3></a><h5>'+list[i].mid +'</h5></div>';
						 		    		}
						 		    		$("#question").html(str);
					 		    	  }
					 		    	});  
			  		  	    });
		  		  	    	 //댓글내용 보여주기
		  		     			$.ajax({
				 		    	  type: "POST",
				 		    	  url: "/index/qRead",
				 		    	  data: {
				 		    		 keyword: $("#stSid").val()
				 		    	  },
				 		 		  dataType: 'Json',
				 		    	  success: function(list){
				 		    		  console.log()
				 		    		var str='';
				 		    		for(var i=0; i<list.length; i++){
				 		    			str += '<div style="margin:7px"><a href="#"><h3 class="panel-content" data-mqno='+list[i].mqno +'>'+list[i].title+'</h3></a><h5>'+list[i].mid +'</h5></div>';
				 		    		}
				 		    		$("#question").html(str);
				 		    		
				 		    		
				 		    		//mqno를 넘겨서 질문 자세히보기
				 		    		 $(document).on("click",".panel-content",function(e){
				 		    			e.preventDefault();
				 		    			 var str1='<p class="in-para"><h4>댓글</h4>';
						 		    	
				 			    	  	$.ajax({
						 		    	  type: "POST",
						 		    	  url: "/index/qDetail",
						 		    	  data: {
						 		    		 mqno: $(this).data("mqno")
						 		    	  },
						 		 		  dataType: 'Json',
						 		    	  success: function(vo){
						 		    		str1+='<h5>제목 : ' +vo.title +'</h5><p style:"text-align=right">글쓴이 : '+ vo.mid+'<br>작성일  : '+ vo.regdate+'</p><h5>내용  : '+ vo.question +'</h5></p>';
						 		    		$("#detail").html(str1);
						 		    		$(".input-group").html('');
							 		    	$("#close").html('<a id="listBtn" style="float:right" href="#">댓글&답글 접기 <i  class="fa fa-times" aria-hidden="true"></i></a>');
						 		    	  }
						 		    	});  //댓글보기 ajax 끝
						 		    	
						 		    	 
						 		    	//mqno를 넘겨서  답글보기
								 		var str2='<br><p class="in-para">';
				 			    	  	$.ajax({
							 		    	  type: "POST",
							 		    	  url: "/index/aDetail",
							 		    	  data: {
							 		    		 mqno: $(this).data("mqno")
							 		    	  },
							 		 		  dataType: 'Json',
							 		    	  success: function(list){
								 		    	for(var i=0; i<list.length; i++){
							 		    			str2 += '<h4>답글</h4><h5>제목 : '+list[i].title +'<br>작성일 : '+list[i].regdate+'<br>내용 : '+list[i].content +'</h5></p>';
							 		    		}
							 		    		$("#answer").html(str2);
							 		    	  }
							 		    	});  //답글보기 ajax  끝
				 		    		 })//댓글제목 클릭 이벤트처리
				 		    	  }
				 		    	});  //자세히보기 질문처리 ajax     	
		  		     		}
		 	    	
		 	    	
			    	
		    		//댓글달기
		 	    	$(document).on("click","#replyBtn",function(e){
		 	    		e.preventDefault();
		 	    		console.log($("#stSid").val())
		  	    	  	$.ajax({
		 	 		    	  type: "POST",
		 	 		    	  url: "/index/replyRegister",
		 	 		    	  data: {
		 	 		    		 sid: $("#stSid").val(), mid:"${login.cemail}" , title:$("#titleText").val(), question: $("#questionText").val()
		 	 		    	  },
		 	 		 		  dataType: 'text',
		 	 		    	  success: function(re){
		 	 		    		console.log(re);
		 	 		    		qRead();
		 	 		    		$("#titleText").val('');
		 	 		    		$("#questionText").val('');
		 	 	 		    	swal({
		 	 	 		    	  title: "성공",
		 	 	 		    	  text: "댓글이 성공적으로 등록되었습니다",
		 	 	 		    	  timer: 2000,
		 	 	 		    	  showConfirmButton: false
		 	 	 		    	});
		 	 		    	  }
		 	 		    	});    
		    		 })//  끝 
			 

		
	})
</script>
