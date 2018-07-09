
<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div data-vide-bg="video/video">
    <div class="container">
    
		<div class="banner-info">
		<br><br><br><br><br><br><br><br><br>
			<h3>검색을 원하시는 장소를 입력하세요</h3>
			<br>
			<div class="search-form">			
				
					<input id="area" type="text" placeholder="구/동 주소를 입력하세요..." name="Search...">
					<input id="searcharea" type="submit" value=" " >
				
			</div>		
		</div>	
    </div>
</div>

    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.1.min.js"><\/script>')</script>
    <script src="js/jquery.vide.min.js"></script>

<!--content-->
<div class="content-top ">
	<div class="container ">
		<div class="spec ">
			<h3>Special Offers</h3>
			<div class="ser-t">
				<b></b> <span><i></i></span> <b class="line"></b>
			</div>
		</div>
		<div class="tab-head ">
			<nav class="nav-sidebar">
				<ul class="nav tabs ">
					<li class="active"><a href="#tab1" data-toggle="tab">Staples</a></li>
					<li class=""><a href="#tab2" data-toggle="tab">Snacks</a></li>
					<li class=""><a href="#tab3" data-toggle="tab">Fruits Vegetables</a></li>
					<li class=""><a href="#tab4" data-toggle="tab">Breakfast Cereal</a></li>
				</ul>
			</nav>
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






	
<%@ include file="/WEB-INF/views/footer.jsp" %>



<!-- smooth scrolling -->
	
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->

<!-- modal -->
			<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
									<h3>StoreName</h3>
									<p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
									<div class="price_single">
									  <span class="reducedfrom "><del>$2.00</del>$1.50</span>
									
									 <div class="clearfix"></div>
									</div>
									<h4 class="quick">Quick Overview:</h4>
									<p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
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


<script src="js/bootstrap.js"></script>

<script type='text/javascript' src="js/jquery.mycart.js"></script>

<script type="text/javascript">
   $(function () { 

    var goToCartIcon = function($addTocartBtn){
      var $cartIcon = $(".my-cart-icon");
      var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
      $addTocartBtn.prepend($image);
      var position = $cartIcon.position();
      $image.animate({
        top: position.top,
        left: position.left
      }, 500 , "linear", function() {
        $image.remove();
      });
    }

    $('.my-cart-btn').myCart({
      classCartIcon: 'my-cart-icon',
      classCartBadge: 'my-cart-badge',
      affixCartIcon: true,
      checkoutCart: function(products) {
        $.each(products, function(){
          console.log(this);
        });
      },
      clickOnAddToCart: function($addTocart){
        goToCartIcon($addTocart);
      },
      getDiscountPrice: function(products) {
        var total = 0;
        $.each(products, function(){
          total += this.quantity * this.price;
        });
        return total * 1;
      }
    });
    
    

  });
  </script>
  
  


<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=175962b9a13ff23b6ba95789998c261c&libraries=services"></script>

<script type="text/javascript">	

	

	


    $(document).ready(function(e) {
    	
    	
    	
    	var idnum = 1;
    	var page = 1;
    	var lat=0;
    	var lng=0;
    	
    	function adlist(list){
    		 
    		 var str="";
    		 
    		 $.each(list, function(index, value) {
    			 
    			 str+='<div class="col-md-3 m-wthree" style="margin-bottom:10px;margin-top:10px"><div class="col-m"><a href="#" data-toggle="modal" data-target="#myModal1" class="offer-img" data-name="'+value.sid+'"  data-src="http://localhost:8080/admin/display/gif?fName='+value.sid+'.gif">'
    					+'<img src="http://localhost:8080/admin/display/gif?fName='+value.sid+'.gif" class="img-responsive" alt=""><div class="offer"><p><span>Offer</span></p></div></a>'
    					+'<div class="mid-1"><div class="women">'
    					+'<h6><a href="single.html">'+value.sid+'</a></h6></div><div class="mid-2">'
    					+'<p><label>$2.00</label><em class="item_price">$1.50</em></p>'
    				  	+'<div class="block"><div class="starbox small ghosting"> </div></div>'
    					+'<div class="clearfix"></div></div><div class="add">'
    				  	+'<button class="btn my-cart-btn my-cart-b" data-id="'+ idnum++ +'" data-name="'+value.sid+'" data-summary="summary'+idnum+'" data-price="1.50" data-quantity="1" data-image="http://localhost:8080/admin/display/gif?fName='+value.sid+'.gif">Add to Cart</button>'
    					+'</div></div></div></div>'
    			 
    					
    			 
    			}); 
    		 
    		 mid_adv='<div class="clearfix"></div> <div class="col-md-4 m-w3ls1">'
    			 +' <div class="col-md "><a href="hold.html"> <img src="images/co.jpg" class="img-responsive img" alt="">'
    			 +'    <div class="big-sale">'
    			 +'       <div class="big-sale1"><h3>Big <span>Sale</span></h3>'
    			 +'           <p>It is a long established fact that a reader </p></div>'
    			 +'   </div></a></div></div>'
    			 +'  <div class="col-md-4 m-w3ls1">'
    			 +'<div class="col-md "><a href="hold.html"> <img src="images/co.jpg" class="img-responsive img" alt="">'
    			 +'   <div class="big-sale">'
    			 +'      <div class="big-sale1"><h3>Big <span>Sale</span></h3><p>It is a long established fact that a reader </p></div>'
    			 +'</div></a></div></div>'
    			 +' <div class="col-md-4 m-w3ls">'
    			 +' <div class="col-md2 "><a href="kitchen.html"> <img src="images/co2.jpg" class="img-responsive img1" alt="">'
    			 +' <div class="big-sale2"><h3>Cooking <span>Oil</span></h3>'
    			 +'    <p>It is a long established fact that a reader </p></div>'
    			 +' </a></div>'
    			 +'  <div class="col-md3 "><a href="hold.html"> <img src="images/co3.jpg" class="img-responsive img1" alt="">'
    			 +'    <div class="big-sale3"><h3>Vegeta<span>bles</span></h3>'
    			 +'        <p>It is a long established fact that a reader </p></div>'
    			 +'  </a></div></div><div class="clearfix"></div>'
    		 
    		 	$("#adlist").append(str +mid_adv);
    			 
    			 $(".offer-img").on("click",function(){
    				 
    				 console.log("click!!");
    				 console.log($("#cartBtn"));
    				 console.log(idnum);
    				 $("#in1").val($(this).data("name"));
    				 $(".span-1 h3").html($(this).data("name"));
    				 $("#storeimg").attr("src",$(this).data("src"));
    				
   					 $("#cartBtn").data("name",$(this).data("name"));
       				 $("#cartBtn").data("image",$(this).data("src"));
       				 $("#cartBtn").data("summary","summary"+idnum);
       				 $("#cartBtn").data("id",idnum++);
       				 $("#put").val($(this).data("name"));
       				 
        			 
    			 });
    			 
    			 var goToCartIcon = function($addTocartBtn){
    			      var $cartIcon = $(".my-cart-icon");
    			      var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
    			      $addTocartBtn.prepend($image);
    			      var position = $cartIcon.position();
    			      $image.animate({
    			        top: position.top,
    			        left: position.left
    			      }, 500 , "linear", function() {
    			        $image.remove();
    			      });
    			    }
    			 
    			 $('#adlist .my-cart-btn').myCart({
    			        classCartIcon: 'my-cart-icon',
    			        classCartBadge: 'my-cart-badge',
    			        affixCartIcon: true,
    			        checkoutCart: function(products) {
    			          $.each(products, function(){
    			            console.log(this);
    			          });
    			        },
    			        clickOnAddToCart: function($addTocart){
    			          goToCartIcon($addTocart);
    			        },
    			        getDiscountPrice: function(products) {
    			          var total = 0;
    			          $.each(products, function(){
    			            total += this.quantity * this.price;
    			          });
    			          return total * 1;
    			        }
    			      });
    		
    		 
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
    			        	page : page
    			        },
    		    	  success: function(re){
    		    		console.log("리스트를 받아서 ");
    		    		
    		    		if(re.length!=0){
    		    			adlist(re);
    		    		}else{
    		    			alert("더이상의 결과가 없습니다.")
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
       		    		  page:page
       		    	  },
       		 		  dataType: 'Json',
       		    	  success: function(re){
       		    		console.log("리스트를 받아서 ");
       		    		  console.log(re);
       		    		adlist(re);
       		    		 
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
    	        alert("이 브라우저는 Geolocation를 지원하지 않습니다");
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
    	                alert(msg);
    	                
    	            },
    	            success: function(data){
    	                $("#area").val(data.fullName);
    	                console.log(data);
    	            }
    	        });

    	    }

    	    function errorCallback(error)
    	    {
    	        alert(error.message);
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
    		page=1;
    		console.log("in~~~!!");
    		putArea = $("#area").val();
    		console.log(putArea);
    		
    		transGeocode(putArea);
    		
    		
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
    	
    	
    	
    	
    	
})
</script>

