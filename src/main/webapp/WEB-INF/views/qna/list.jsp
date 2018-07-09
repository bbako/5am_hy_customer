<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--banner-->
<div class="banner-top">
	<div class="container">
		<h3 >FAQ / Q&A</h3>
		
		${login};
		<%-- <c:if test="${login.gubun=='admin'}">
		<c:if test="${login}">
		<h1>부부부부부부ㅜㅜ부부ㅜㅂ부ㅜ부부부부부부부붑부부부부부부</h1>
		</c:if> --%>
		
		<h4><a href="/index">Home</a><label>/</label>FAQ / Q&A</h4>
		<div class="clearfix"> </div>
	</div>
</div>
<div class="faq-w3 main-grid-border">
		<div class="container">
			
			<div class="spec ">
			<h3>FAQ</h3>
				<div class="ser-t">
					<b></b>
					<span><i></i></span>
					<b class="line"></b>
				</div>
			</div>
				<div class="panel-group" id="accordion">
				<!-- First Panel -->
					<div class="panel panel-default">
						<div class="panel-heading">
							 <h4 class="panel-title" data-toggle="collapse" data-target="#collapseOne">
								 <span>1.</span> 마음에 드는 광고 찜하기가 궁금하신가요??
							 </h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse">
							<div class="panel-body">
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. .</p>
								<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage.</p>
							</div>
						</div>
					</div>
					
					<!-- Second Panel -->
					<div class="panel panel-default">
						<div class="panel-heading">
							 <h4 class="panel-title" data-toggle="collapse"  data-target="#collapseTwo">
								<span>2.</span> 누구나 쉽게 광고주가 되는방법 !!
							 </h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">								
								<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage.</p>
								<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
								<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing. </p>
							</div>
						</div>
					</div>
					
					<!-- Third Panel -->
					<div class="panel panel-default">
						<div class="panel-heading">
							 <h4 class="panel-title" data-toggle="collapse" data-target="#collapseThree">
								<span>3.</span> 가까운 위치의 광고 찾기 방법이 궁금하시다구요 ??!!
							 </h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">
								<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
							</div>
						</div>
					</div>
					<!-- Fourth Panel -->
					<div class="panel panel-default">
						<div class="panel-heading">
							 <h4 class="panel-title" data-toggle="collapse" data-target="#collapseFour">
								<span>4.</span> 카테고리별 원하는 광고 찾는 방법을 알려드립니다 !!
							 </h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse">
							<div class="panel-body">
								<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. </p>
								<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. </p>
								<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur.</p>
							</div>
						</div>
					</div>
				<!-- Fourth Panel -->
					<div class="panel panel-default">
						<div class="panel-heading">
							 <h4 class="panel-title" data-toggle="collapse" data-target="#collapseFive">
								<span>5.</span> 당신에게 필요한 광고만 콬 찍어 볼수 있는 방법을 알려드릴게요  ^^ !!
							 </h4>
						</div>
						<div id="collapseFive" class="panel-collapse collapse">
							<div class="panel-body">
								<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. </p>
								<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. </p>
								<p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur.</p>
							</div>
						</div>
					</div>
					
					
				</div>
		</div>	
	</div>
	<!-- // Terms of use -->
<!-- faqs -->
	<div class="faq-w3 " style="padding: 0">
		<div class="container">
			<div class="spec ">
			<h3>Q&A</h3>
				<div class="ser-t">
					<b></b>
					<span><i></i></span>
					<b class="line"></b>
				</div>
			</div>
				<div class="panel-group" id="accordion">
				<!-- 검색창 -->
				<div style="width: 100%;text-align: right;">
  								<label>
				                <form  id="f1" style="text-align: right;" >
								
								<input id="hpage" type="hidden" name="page" value="${cri.page}">
				                
				                <select style="margin-bottom:5px;padding: 5px;" name="type" class="type" >
								<option value="n" ${cri.type eq null?'selected':''}>---</option>
								<option value="t" ${cri.type eq 't'?'selected':''}>제목</option>
								<option value="c" ${cri.type eq 'c'?'selected':''}>내용</option>
								<option value="w" ${cri.type eq 'w'?'selected':''}>작성자</option>
							    </select> 
							    
							    <input id="keword" type="search" class="form-control input-sm" aria-controls="dataTables-example" name="keyword" value="${cri.keyword}">
							    <h2 class="t-button">
							    <a id="btnn" href="#"><span class="label label-info" >Search</span></a>
							    </h2>
							    </form>
							    </label>					
							    </div>
				
				<!-- input 창 -->
				
				<div class="panel panel-default">
						<div class="panel-heading">
							 <h4 class="panel-title"  data-toggle="collapse" data-target="#cusregi">
								 <span style="color:highlighttext;font-weight: bold;">질문 등록하기</span> <h6>여기를 클릭해주세요</h6>  
							 </h4>
							
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
							    <a id="cusregi2" href="#"><span class="label label-info" >등록하기</span></a>
							    </h2>
								
							</div>
						</div>
					</div>
				
				
				
				
				
				
				
				
				
				<!-- First Panel -->
				<div class="qnalist">
				<%-- <c:forEach items="${list}" var="QuestionVO"> 
                                       
 					 <div class="panel panel-default">
						<div class="panel-heading">
							 <h4 class="panel-title" data-cusqno="${QuestionVO.cusqno}" data-toggle="collapse" data-target="#${QuestionVO.cusqno}">
								 <span>${QuestionVO.cusqno}.</span> ${QuestionVO.custitle}  
							 </h4>
							 <h6 style="text-align: right;">작성자 : ${QuestionVO.cuswriter}</h6>
						</div>
						<div id="${QuestionVO.cusqno}" class="panel-collapse collapse">
							<div class="panel-body">
								<p>${QuestionVO.cuscontent} </p>
								
							</div>
						</div>
					</div>
                                        
                   </tr>
                   </c:forEach> --%>
                                        
                                        </div>
                                        
					
				</div>
		</div>	
	</div>
	<!-- // Terms of use -->

<!-- modal -->
            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content modal-info">
                        <div class="modal-header">                        
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">&times;</button>
                            <h4> Q&A 수정</h4>
                                
                        </div>
                        <div class="modal-body modal-spa">
                                <div class="col-md-12 span-2 ">
                                    <h5 id="cusqno" style="color:red;"></h5><hr><h5> 제목</h5>
                                    <p class="in-para"> <input id="custitle1" type="text" value="" style="width:100%; border:none;"></p>
                                    <h5> 내용</h5>
                                    <p class="in-para"> <textarea id="cuscontent1" style="width:100%; border:none;" ></textarea></p>
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
<!-- smooth scrolling -->
	<script type="text/javascript">
	
	var keyword="";
	var type="";
	var page=1;
	var str="";
	var modi=false;
	
	var cusqno="";
	var reply="";
	var cusname="${login.cname}";
	/* test */
	
	/* test */
	
	
	function addqnali(qnalist){
		
		console.log(qnalist)
		
		$.each(qnalist, function(index, value) {
			console.log(index)
			console.log(value)

			
			str+='<div class="panel panel-default"><div class="panel-heading"> <h4 id="getrlist" class="panel-title" data-cusqno="'+value.cusqno+'" data-toggle="collapse" data-target="#'+value.cusqno+'"> <span>'+value.cusqno+'</span> '+value.custitle+' <span class="badge badge-success">'+value.count +'</span><a class="noticemodi" href="" data-toggle="modal" data-target="#myModal1" data-cusqno ="'+value.cusqno+'" data-custitle ="'+value.custitle+'" data-cuscontent ="'+value.cuscontent+'" ><i id="modi" class="glyphicon glyphicon-wrench"></i></a><a><i id="del"  data-cusqno="'+value.cusqno+'" class="glyphicon  glyphicon-remove"></i></a></h4> <h6 style="text-align: right;">작성자 : '+value.cuswriter+'</h6> </div> <div id="'+value.cusqno+'" class="panel-collapse collapse"> <div class="panel-body"> <p>'+value.cuscontent+' </p> </div>' 
				+'<form class="form-inline" style="margin-bottom:10px"><div class="form-group" style="width:84%;"><input id="reply" style="width:100%;" type="text"class="form-control" id="inputPassword2" placeholder="댓글을입력하세요"aria-describedby="basic-addon2"></div><button id="reregi" data-cusqno="'+value.cusqno+'" class="btn btn-success" type="button">등록</button></form>'	 
				+'<div style="width:90%;"><table class="table"><thead><tr><th>내용</th><th>답변자</th></tr></thead><tbody id="'+value.cusqno+'reply"></tbody></table></div>'
				+'</div> </div> '
				
				
			
		})
		
		if(modi){
			$(".qnalist").empty();
			$(".qnalist").html(str);
			}
		
		$(".qnalist").html(str);
		
		str="";
		modi=false;
	}
	
	
	
	function getqnalist(){
		
		 $.ajax({
			type:'post',
			url:'/qna/list',
			data:{
				
				page:page,
				keyword:keyword,
				type:type
			},
			success:function(qnalist){
			
			addqnali(qnalist);
			
			}
			});
		 }
	
	function getrelist(cusqno){
		
		console.log("replylist 뽑으러 가는거 ");
		console.log(cusqno);
		
		$.ajax({
			type:'post',
			url:'/qna/relist',
			data:{
				cusqno:cusqno
			},
			success:function(replylist){
				console.log(replylist)
				$.each(replylist, function(index, value) {
					console.log(value.rewriter);
					console.log(value.recontent);
					reply+='<tr><td>'+value.recontent+'</td><td>'+value.rewriter+'</td></tr>'
					
				})
				
				var target = cusqno+'reply';
				$("#"+target).html(reply);
				reply="";
				cusqno="";
				
			}
			
		});
		
	}
	
	
	
	
		$(document).keydown(function(event) {
        if (event.keyCode == '13') {
        	console.log($(this));   
        	return false;
            }   
        })
	
		$(document).ready(function() {
			
			
			
			
			getqnalist();
			
			
			$(document).scroll(
					function() {
						var maxHeight = $(document).height();
						var currentScroll = $(window).scrollTop() + $(window).height();

						if (maxHeight <= currentScroll) {
							console.log("down");
							page = page + 1;

							getqnalist();

						};

					});
			
			
			$(".qnalist").on("click","#getrlist",function(){
			
				console.log("이게 처음에 질문 눌렀을떄 입니다");
				
				cusqno=$(this).data("cusqno");
				getrelist($(this).data("cusqno"));
				
				
			})
			
			
			
			
			$(".qnalist").on("click","#reregi",function(){
			
					console.log($(this).data("cusqno"));
					console.log($("#reply").val());
					
					   $.ajax({
			                type: "POST",
			                url: "/qna/reregi",
			                data : {
			                    
			                    cusqno : $(this).data("cusqno"),
			                    rewriter :cusname,
			                    recontent : $("#reply").val()
			                },
			                 dataType: 'text',
			                success: function(re) {
			                   console.log(re);
			                 
			                   
			                   getrelist(re);
			                   
			                   $("#reply").val("");
			                  	
			                   
			                  
			                }
			            });
					
					
					
					
			})	
			
			
			$(".qnalist").on("click","#modi",function(){
				
				console.log("수정버튼 클릭");
				console.log($(this)[0].parentNode.dataset.cusqno);
				console.log($(this)[0].parentNode.dataset.custitle);
				console.log($(this)[0].parentNode.dataset.cuscontent);
				
				
				$("#cusqno").html($(this)[0].parentNode.dataset.cusqno);
				$("#custitle1").val($(this)[0].parentNode.dataset.custitle);
				$("#cuscontent1").val($(this)[0].parentNode.dataset.cuscontent);
			});
			
			
			$("#modiBtn").on("click",function(){
		        
				modi=true;
				
		         console.log("수정 to controller");
		         console.log($("#cusqno")[0].innerText);
		         console.log($("#custitle1").val());
		         console.log($("#cuscontent1").val());
		         $.ajax({
		                type: "POST",
		                url: "/qna/modi",
		                
		                data : {
		                    
		                    cusqno : $("#cusqno")[0].innerText,
		                    custitle : $("#custitle1").val(),
		                    cuscontent : $("#cuscontent1").val()
		                },
		                 dataType: 'text',
		                success: function(re) {
		                   console.log(re);
		                   getqnalist();
		                    
		                }
		            });
		         
		         
		     })
			
		     $(".qnalist").on("click","#del",function(){
		        
		    	 modi=true;
				
		         console.log("삭제 to controller");
		         console.log($(this)[0].dataset.cusqno);
		      
		          $.ajax({
		                type: "POST",
		                url: "/qna/del",
		                
		                data : {
		                    
		                    cusqno : $(this)[0].dataset.cusqno
		                },
		                 dataType: 'text',
		                success: function(re) {
		                   console.log(re);
		                   getqnalist();
		                    
		                }
		            }); 
		         
		         
		     })
		     
			
			
			/* $(".offer-img").on("click",function(){
				 
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
  				 
   			 
			 }); */
			
			
			
			$("#cusregi2").on("click",function(e){
				e.preventDefault();
						
				  $.ajax({
				type:'post',
				url:'/qna/regi',
				data:{
					custitle:$("#custitle").val(),
					cuscontent:$("#cuscontent").val(),
					cuswriter:cusname
				},
				success:function(re){
					
					
					 
				
					 
					 swal({
						  title: "Are you register?",
						  text: "You will not be able to recover this imaginary file!",
						  type: "success",
						  showCancelButton: true,
						  confirmButtonColor: "#19ffb2",
						  confirmButtonText: "Yes, register it!",
						  closeOnConfirm: false,
						  html: false
						}, function(){
							
							location.reload();
						  swal("success!",
						  "Your imaginary file has been success.",
						  "success");
						});
					 
					 
					 
					 
					 
					 
				}
			}).done(function(){
				
			});  
				
				
				
			});
			
			
			
			$("#btnn").on("click", function(e) {
				e.preventDefault();
				
				type=$("select option:selected").val();
				keyword=$('#keword')[0].value;
				
				page=1;
				
				$(".qnalist").empty();
				
				/* 리스트 가져오기  */
				getqnalist();
				
	 
			});
			
			$(".panel-title").on("click", function(e) {
				e.preventDefault();
				console.log(".panel-title 을 클릭했습니다 .")
				console.log($(this));
			});
			
			
			
			 $(".qnalist").on("click",".panel-title", function(e) {
			/* $(document).on("click",".panel-title",function(e){ */
				e.preventDefault();
				console.log($(this));
				
				/* ajax로 보내서 댓글 가져오기  */
			
				
				/*  $.ajax({
					type:'post',
					url:'/qna/fdelete',
					data:{fname:$(this).attr("data-fname")},
					success:function(re){
						if(re=='delete')
						alert("deleted");
					}
				});  */
				
				
				
				
				
			});
			
			
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


</body>
</html>