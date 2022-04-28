<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
    <title>Zay Shop eCommerce HTML CSS Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="<%=request.getContextPath() %>/resources/img/apple-icon.png">
    <link rel="shortcut icon" type="<%=request.getContextPath() %>/resources/image/x-icon" href="<%=request.getContextPath() %>/resources/img/favicon.ico">

    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/templatemo.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/fontawesome.min.css">
</head>
<body>
   <%@include file ="../include/header.jsp" %> <!-- 공통헤더 삽입 -->
<div class="container py-5">
        <div class="row">
            <div class="col-lg-3">
                <h1 class="h2 pb-4">Categories</h1>
                <ul class="list-unstyled templatemo-accordion">
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="ptmain">
                            PT Routine
                            <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="exerciselist">
                            Make Routine
                            <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                    </li>
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="ptroutinelist">
                            Routine List
                            <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-9">
                <div class="row">
                    <div class="col-md-6">
                        <ul class="list-inline shop-top-menu pb-3 pt-1">
                            <li class="list-inline-item">
                                <a class="h3 text-dark text-decoration-none mr-3 category" id="c1">맨몸 운동</a>
                            </li>
                            <li class="list-inline-item">
                                <a class="h3 text-dark text-decoration-none category"id="c2">바벨/덤벨/기구</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                	<div class="col-md-12" id="picklist">	
                	</div>
                	<c:forEach items="${exercisetypelist}" var="dto" >
		                	<c:if test="${dto.ec_num eq 1}">
			                	<c:set var="category" value="category1"/>
		                	</c:if>
		                	<c:if test="${dto.ec_num eq 2}">
			                	<c:set var="category" value="category2"/>
		                	</c:if>
			                  <div class="col-md-4 pttypelist ${category}">
		                        <div class="card mb-4 product-wap rounded-0">
		                            <div class="card rounded-0">
		                                <img class="card-img rounded-0 img-fluid" src="<%=request.getContextPath() %>/resources/images/${dto.et_img1}.jpg">
		                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
		                                    <div class="click" id="${dto.et_ename}">
			                                    <ul class="list-unstyled">                              
			                                        <li><a class="btn btn-dark text-white mt-2"><i class="fas fa-cart-plus"></i></a></li>
			                                    </ul>
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="card-body click" id="${dto.et_ename}">
		                                <a href="shop-single.html" class="h3 text-decoration-none">${dto.et_name}</a>
		                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
		                                    <li><fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${dto.et_met*user_kg*dto.et_time/60}"/>kcal</li>
		                                    <li>${dto.et_time} 분</li>
		                                </ul>
		                                <ul class="list-unstyled d-flex justify-content-center mb-1">
		                                    <li>
		                                       	<i class="text-warning fa fa-star"></i>LV.${dto.et_lv}                     
		                                    </li>
		                                </ul>		         
		                            </div>
		                        </div>
		                    </div>
                    </c:forEach>                    
                 </div>        
            </div>
        </div>
    </div>
    <footer class="bg-dark" id="tempaltemo_footer">
				<div class="container">
					<div class="row">
						<div class="col-md-4 pt-5">
							<h2 class="h2 text-light border-bottom pb-3 border-light logo">MultiHealth</h2>
							<ul class="list-unstyled text-light footer-link-list">
								<li><i class="fas fa-map-marker-alt fa-fw text-light"></i>
									회사주소</li>
								<li><i class="fa fa-phone fa-fw text-light"></i> <a
									class="text-light" href="tel:010-020-0340">010-1234-5678</a></li>
								<li><i class="fa fa-envelope fa-fw text-light"></i> <a
									class="text-light" href="mailto:info@company.com">담당자 이메일주소</a>
								</li>
							</ul>
						</div>

						<div class="col-md-4 pt-5">
							<h2 class="h2 text-light border-bottom pb-3 border-light">상품페이지경로</h2>
							<ul class="list-unstyled text-light footer-link-list">
								<li><a class="text-light" href="#">---</a></li>
								<li><a class="text-light" href="#">---</a></li>
								<li><a class="text-light" href="#">---</a></li>
								<li><a class="text-light" href="#">---</a></li>
								<li><a class="text-light" href="#">---</a></li>
								<li><a class="text-light" href="#">---</a></li>
								<li><a class="text-light" href="#">---</a></li>
							</ul>
						</div>

						<div class="col-md-4 pt-5">
							<h2 class="h2 text-light border-bottom pb-3 border-light">게시판이나
								정보</h2>
							<ul class="list-unstyled text-light footer-link-list">
								<li><a class="text-light" href="#">---</a></li>
								<li><a class="text-light" href="#">---</a></li>
								<li><a class="text-light" href="#">---</a></li>
								<li><a class="text-light" href="#">---</a></li>
								<li><a class="text-light" href="#">---</a></li>
								<li><a class="text-light" href="#">---</a></li>
							</ul>
						</div>

					</div>

					<div class="row text-light mb-4">
						<div class="col-12 mb-3">
							<div class="w-100 my-3 border-top border-light"></div>
						</div>
						<div class="col-auto me-auto">
							<ul class="list-inline text-left footer-icons">
								<li
									class="list-inline-item border border-light rounded-circle text-center">
									<a class="text-light text-decoration-none" target="_blank"
									href="http://facebook.com/"><i
										class="fab fa-facebook-f fa-lg fa-fw text-light"></i></a>
								</li>
								<li
									class="list-inline-item border border-light rounded-circle text-center">
									<a class="text-light text-decoration-none" target="_blank"
									href="https://www.instagram.com/"><i
										class="fab fa-instagram fa-lg fa-fw text-light"></i></a>
								</li>
								<li
									class="list-inline-item border border-light rounded-circle text-center">
									<a class="text-light text-decoration-none" target="_blank"
									href="https://twitter.com/"><i
										class="fab fa-twitter fa-lg fa-fw text-light"></i></a>
								</li>
								<li
									class="list-inline-item border border-light rounded-circle text-center">
									<a class="text-light text-decoration-none" target="_blank"
									href="https://www.linkedin.com/"><i
										class="fab fa-linkedin fa-lg fa-fw text-light"></i></a>
								</li>
							</ul>
						</div>
						<div class="col-auto">
							<label class="sr-only" for="subscribeEmail">이메일 주소 검색창</label>
							<div class="input-group mb-2">
								<input type="text" class="form-control bg-white border-light"
									id="subscribeEmail" placeholder="Email address">
								<div class="input-group-text btn-primary text-light">Subscribe
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="w-100 bg-black py-3">
					<div class="container">
						<div class="row pt-2">
							<div class="col-12">
								<p class="text-left text-light">
									Copyright &copy; 2021 Company Name | Designed by <a
										rel="sponsored" href="https://templatemo.com" target="_blank">수정가능</a>
								</p>
							</div>
						</div>
					</div>
				</div>

			</footer>
    <!-- End Footer -->
<script src="<%=request.getContextPath() %>/resources/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	var pick = {};
	$(document).on("click", ".deletept", function() {
		var delete_pt = $(this).attr("id");
		delete_pt= (delete_pt.split("-"))[1];
		delete pick[delete_pt];
		if(Object.keys(pick).length!=0){  
			updateData();		
		}else{
			 $("#picklist").html("");
		}
		alert(delete_pt+"이 운동목록으로 삭제되었습니다.");
	});
	$(document).on("click", ".click", function(){
			pick_pt = $(this).attr("id");
		if(!pick[pick_pt]){
			pick[pick_pt]=1;}
		else{
			pick[pick_pt]+=1;
		}
			updateData(); 
	});
	$(".pttypelist").hide();
	$(".category1").show();
	$(document).on("click", ".category", function category(){
		$(".pttypelist").hide();
 		var c_num = $(this).attr("id")[1];
		$(".category"+c_num).show();
	});
	function updateData(){
		$.ajax({
			url:'<%=request.getContextPath() %>/ptservice/exerciselist',
			data : pick, 
			type : 'post',
			dataType: 'json',
			success : function(list){
				var add_time = 0;
				var add_kcal = 0;
				var table = "<form action='../ptservice/picklist' method='post'>"
				+"<div class='form-group'>"
				+	"<input type='text' class='form-control' id='pr_info' name='pr_info' placeholder='등록하고자 하는 루틴이름 입력하세요'>"
				+"</div>"
				+"<table class='type06'><tr class='even'><th></th><th >운동명</th><th>횟수</th><th>소모칼로리</th ><th>소요시간</th><th>삭제</th></tr>"
				for(var i = 0; i < list.length; i++){
					add_time += list[i].et_time * pick[list[i].et_ename];
					add_kcal += Math.round(list[i].et_met * list[i].et_time * ${user_kg} * pick[list[i].et_ename]*0.017);
					kcal = Math.round(list[i].et_met * list[i].et_time*${user_kg} * pick[list[i].et_ename]/60);
					table +="<tr><td><img src='../resources/images/"+list[i].et_img2+".jpg' width='50'></td>"
					+ "<input type='hidden' name='et_name' value="+list[i].et_name+">"
					+ "<input type='hidden' name='et_ename' value="+list[i].et_ename+"><td>"+list[i].et_name+"</td>"
					+ "<input type='hidden' name='pr_count' value="+pick[list[i].et_ename]+"><td>"+pick[list[i].et_ename] + "</td>"
					+ "<td>"+kcal+ "kcal</td>"
					+ "<td>"+list[i].et_time * pick[list[i].et_ename]+"분</td><td><a class='deletept' id='d-"+list[i].et_ename+"'>삭제</a></td>";
				}
				table +="</tr>"
					+"<input type='hidden' name='pr_allkcal' value="+add_kcal+"><tr><th>total</th><td></td><td></td><th>"+add_kcal+"kcal</th>"
					+"<input type='hidden' name='pr_alltime' value="+add_time+"><th>"+add_time+"분</th></tr></table>"
					+"<br><input type='submit' class='btn btn-dark' id='insertptroutine' value='루틴등록하기'></form><br>";
				$("#picklist").html(table);
			},
		error:function(request,status,error){
	        $("#picklist").html("");   
		}
		});//ajax end
	};
</script>
</body>
</html>