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
                                <a class="h3 text-dark text-decoration-none mr-3">Routine List</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                	<div class="col-md-12" id="ptroutinelist">
                	</div>     
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
$(document).ready(function(){
	var url = window.location.href;
	url = "ptservice/ptroutinelist?pt="+$(this).attr('id');
	updateData(); 
	$(document).on("click", ".delte", function(){
			var delete_rt = $(this).attr('id');
			delete_rt= (delete_rt.split("-"))[1];
			$.ajax({
				url: 'deletepr',
				data : {'delete_rt':delete_rt} , 
				type : 'post' ,
				dataType: 'json',
				success : function(){
					updateData();
				},error:function(request,status,error){
			        $("#ptroutinelist").html("");   
				}	
			});//ajax end
	});
	$(document).on("click", ".pt", function(){
		var url = "?pt="+$(this).attr('id');
	});
	function updateData(){
		$.ajax({
			url:'routinelist',
			type : 'post' ,
			dataType: 'json',
			success : function(list){ //ArrayList<MemberDTO> 객체를 json  변환 객체로
				var table = "<table class='type06'>"
				+"<tr class='even'><th>루틴명</th><th>소모 칼로리</th><th>소요 시간</th><th></th><th></th></tr>";
				if(list.length>0){
					for(var i = 0; i < list.length; i++){
						table +="<tr><td>" + list[i].pr_info + "</td><td>" 
						+ list[i].pr_allkcal + " kcal</td><td>"+ list[i].pr_alltime + " 분</td><td>"
						+"<a class='delte' id=d-"+list[i].pr_num+" >삭제</a></td><td>"
						+"<a class='pt' id='p"+list[i].pr_num+"' href=startpt?pt=pt"+list[i].pr_num+">운동하러 가기</a></td></tr>";
					}
				}else{table+="<tr><td conspaln='5'>저장된 루틴이 없습니다</td></tr>"}
				table +="</table>";
				$("#ptroutinelist").html(table);
			
			}//success end	
		});//ajax end
	}; 
});
</script>
</body>
</html>