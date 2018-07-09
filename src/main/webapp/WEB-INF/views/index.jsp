
<%@ include file="/WEB-INF/views/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div data-vide-bg="video/video">
	<div class="container">

		<div class="banner-info">
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<h3>검색을 원하시는 장소를 입력하세요</h3>
			<br>
			<div class="search-form">			
				
					<input id="area" type="text" placeholder="주소를 입력하세요" name="Search..." style="width: 30%">
					<input id="area2" type="text" placeholder="업소명을 검색해주세요" value="" name="Search..." style="width: 55%;">
					<input id="searcharea" type="submit" value=" " >
				
			</div>		
		</div>	
    </div>
</div>



<!--content-->
<div class="content-top ">
	<div class="container ">
		<div class="spec ">
			<h2>최근 등록된 상점</h2>
			<br>
			<div class="ser-t">
				<b></b> <span><i></i></span> <b class="line"></b>
			</div>
		</div>
		<div class="tab-head ">

			<div class=" tab-content tab-content-t ">
				<div class="tab-pane active text-style" id="tab1">


					<div class=" con-w3l" id="adlist">

						<div class="clearfix"></div>
					</div>


				</div>
			</div>
		</div>
	</div>
</div>







<%@ include file="/WEB-INF/views/footer.jsp"%>



<!-- smooth scrolling -->

<a href="#" id="toTop" style="display: block;"> <span
	id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->

<!-- modal -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content modal-info">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body modal-spa">
				<div class="col-md-5 span-2">
					<div class="item">
						<img id="storeimg" src="" class="img-responsive" alt="">
					</div>
				</div>
				<div class="col-md-7 span-1 ">
					<h3>
						<div id="stName">StoreName</div>
					</h3>
					<div id="stCategory"></div>
					<span class="reducedfrom "><div id="stPhone"></div></span>
					<div id="stAddrm"></div>
					<!-- 									<div id="stContent"></div>
									<p class="in-para">댓글 리스트</p> -->
					<div id="question"></div>
					<div id="paging"></div>
					<div id="close"></div>
					<div id="detail"></div>
					<div id="answer"></div><input id="stSid" type="hidden">
					<br>
					<c:if test="${login.cemail !=null}"> 
						<div class="input-group">
								<input id="titleText" type="text" class="form-control" placeholder="제목을 입력하세요..." aria-describedby="basic-addon1">
								<textarea id="questionText" style="height: 80px" type="text" class="form-control" placeholder="내용을 입력하세요..." aria-describedby="basic-addon1"></textarea>
								<a id="aTag" href="#" id="replyBtn" style="float: right" >댓글 등록하기<i class="fa fa-envelope" aria-hidden="true"></i></a>
						</div>
					</c:if>
					<div class="add-to">
						<button id="toCart" class="my-cart-btn my-cart-btn1 "
							data-id="1" data-name="Moong" data-summary="summary 1"
							data-price="1.50" data-quantity="1" data-image="images/of.png">Add
							to Cart</button>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</div>


<!-- modal -->


<script src="js/bootstrap.js"></script>

<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.1.min.js"><\/script>')</script>
<script src="js/jquery.vide.min.js"></script>


<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=175962b9a13ff23b6ba95789998c261c&libraries=services"></script>

<script type="text/javascript">	

    $(document).ready(function(e) {
    	
    
    	var customer_id = "${login.cemail}";
    	console.log(customer_id);
    	var idnum = 1;
    	var page = 1;
    	var lat=0;
    	var lng=0;
    	
    	function adlist(list){
    		 
    		 var str="";
    		
    		 
    		 $.each(list, function(index, value) {

    			 
    			 str+='<div class="col-md-3 pro-1" style="min-height:80%" ><div class="col-m"><a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img" data-name="'+value.sid+'"  data-src="http://192.168.0.17:8083/admin/display/gif?fName='+value.sid+'.gif">'
    					+'<img src="http://192.168.0.17:8083/admin/display/gif?fName='+value.sid+'.gif" class="img-responsive " alt=""></a>'
    					+'<div class="mid-1"><div class="women">'
    					+'<h6>'+value.sname+'</h6></div><div style="height:120px" class="mid-2">'
    					+'<h5>주소 : '+value.saddrm+' , '+value.saddr+'</h5>'
    					+'<p>카테고리 : '+value.scategory+'</p>'
    				  	+'<div class="block"><div class="starbox small ghosting"> </div></div>'
    					+'<div class="clearfix"></div></div><div class="add">'
    				  	+'<button id="toCart" class="btn my-cart-btn my-cart-b" data-id="'+ idnum++ +'" data-name="'+value.sid+'" data-summary="summary'+idnum+'" data-price="1.50" data-quantity="1" data-image="http://192.168.0.17:8083/admin/display/gif?fName='+value.sid+'.gif" ">Add to Cart</button>'
    					+'</div></div></div></div>'
    					
    			 
    			}); 
    		 
    		 mid_adv='<div class="clearfix"></div> <div class="col-md-4 m-w3ls1">'
    			 +' <div class="col-md "><img src="images/co.jpg" class="img-responsive img" alt="">'
    			 +'    <div class="big-sale">'
    			 +'       <div class="big-sale1"><h3>Big <span>Sale</span></h3>'
    			 +'           <p>It is a long established fact that a reader </p></div>'
    			 +'   </div></div></div>'
    			 +'  <div class="col-md-4 m-w3ls1">'
    			 +'<div class="col-md "><img src="images/co.jpg" class="img-responsive img" alt="">'
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
    		 
    		 	$("#adlist").append(str +mid_adv);
    			 
    		 
    	}
    		
    		nlist();
    		
    		/* 맨처음에 보여주는거  */
    		function nlist(){
    			
    			
    			 $.ajax({
    				  type: "POST",
    		    	  url: "/index/getadlist",
    		 		  dataType: 'Json',
    		 		  data : {
    		 			 	lat : lat,
      		    		  	lng : lng,
    			        	page : page,
    			        	sname:""
    			        	
    			        },
    		    	  success: function(re){
    		    		console.log("리스트를 받아서 ");
    		    		
    		    		if(re.length!=0){
    		    			adlist(re);
    		    		}else{
    		    			
    		    			swal({
    		    				  title: "더이상의 결과가 없습니다.",
    		    				  text: "I will close in 1 seconds.",
    		    				  timer: 700,
    		    				  showConfirmButton: false
    		    				});
    		    		}
    		    		 
    		    	  } ,
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
    	 
    	 
    	
    	var geocoder = new daum.maps.services.Geocoder();
    	
		function transGeocode(bbb){
    		
    		geocoder.addr2coord(bbb, function(status, result) {

    		     if (status === daum.maps.services.Status.OK) {
    		    	 
    		    	 console.log(result.addr[0].lat);
    		    	 console.log(result.addr[0].lng);
    		    	 lat=result.addr[0].lat;
    		    	 lan=result.addr[0].lng;
    		    	 
    		    	 $.ajax({
       		    	  type: "POST",
       		    	  url: "/index/getadlist",
       		    	  data: {
       		    		  lat : result.addr[0].lat,
       		    		  lng : result.addr[0].lng,
       		    		  page:page,
       		    		sname : $("#area2").val()
       		    	  },
       		 		  dataType: 'Json',
       		    	  success: function(re){
       		    		console.log("리스트를 받아서 ");
       		    		 console.log(re);
       		    		if(re.length!=0){
       		    			adlist(re);
       		    		}else{
       		    			swal("검색결과가 없습니다.","","warning")
       		    			
       		    		}
       		    				
       		    		
       		    		
       		    		
       		    	  },
       		    	}); 
    		    } 
    		});
    		
    	}
    	
    	var currentLocation = function(){    		
    		
    		if (!!navigator.geolocation)
    	    {
    	        navigator.geolocation.getCurrentPosition(successCallback,errorCallback);
    	    }
    	    else
    	    {
    	        swal("이 브라우저는 Geolocation를 지원하지 않습니다");
    	    }

    	    function successCallback(position)
    	    {
    	        var lat = position.coords.latitude;
    	        var lng = position.coords.longitude;    	        

    	        $.ajax({
    	            type: "post",
    	            contentType:"application/json",
    	            dataType :'jsonp',
    	            crossDomain:true,
    	            url: "https://apis.daum.net/local/geo/coord2addr?apikey=175962b9a13ff23b6ba95789998c261c&longitude="+lng+"&latitude="+lat+"&inputCoordSystem=WGS84&output=json",
    	            error   : function (msg) {
    	                swal(msg);
    	                
    	            },
    	            success: function(data){
    	                $("#area").val(data.fullName);
    	                console.log(data);
    	            }
    	        });

    	    }

    	    function errorCallback(error)
    	    {
    	        swal(error.message);
    	    }
    		
    		
    	}
    	
    	$().UItoTop({ easingType: 'easeOutQuart' });
    	
    	$("#area").on("click", function(e){
    		
    		e.preventDefault();
    		
    		currentLocation();
    		
    		
    	});
    	
    	var putArea="";

    	$("#searcharea").on('click',function(e){
    		e.preventDefault();
    		$("#adlist").html('');
    		$("#searchName").html($("#area").val());
    		page=1;
    		console.log("in~~~!!");
    		putArea = $("#area").val();
    		console.log(putArea);
    		if(putArea==""){
    			
    			swal("위치를 확인해주세요","","warning")
    		}else{
    		transGeocode(putArea);
    		if($("#area2").val()!=''){
    			$(".spec").html("<h2>검색 : '"+$("#area").val()+"', '"+$("#area2").val()+"'</h2>");
    		}else{
    			$(".spec").html("<h2>검색: '"+$("#area").val()+"'</h2>");
    		}
    			
    		}
    		
    	});

    	
	    	$(document).scroll(
				function() {
					var maxHeight = $(document).height();
					var currentScroll = $(window).scrollTop() + $(window).height();

					if (maxHeight <= currentScroll) {
						console.log("down");
						page = page + 1;

						nlist();

					};
					

				});
	    	
	    	
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

