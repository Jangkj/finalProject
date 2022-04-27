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
    <!-- Header -->
   <nav class="navbar navbar-expand-lg bg-dark navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-light logo h1 align-self-center" href="/">
                MultiHealth
            </a>

            <button class="navbar-toggler border-0 navbar-dark" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link text-white" href="/">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="about.html">Product</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="shop.html">Information</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="/user/signup">---</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-white mr-2"></i>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-cart-arrow-down text-white mr-1"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-user text-white mr-3"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                    </a>
                </div>
            </div>

        </div>
    </nav>
	<div class="container py-5">
         <div class="row">
            <div class="col-lg-3">
                <h1 class="h2 pb-4">Start PT</h1>
                <ul class="list-unstyled templatemo-accordion">
                    <c:forEach items="${pick}" var="pickdto" varStatus="status">
                    	<li class="pb-3 start_pt">
	                        <p class="collapsed d-flex justify-content-between h3 text-decoration-none color${status.index}" >
	                        <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
									${pickdto.et_name}
							</p>
							<p class="startpt_count"> 
							${pickdto.pr_count}회  ${pickdto.et_time*pickdto.pr_count}분
							</p>
                    	 </li>						
                     </c:forEach>
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
                	<p id="demo"> 00.00 </p> 
                	<div class="col-md-12" id="ptroutinelist">
					<c:forEach items="${pick}" var="pickdto" varStatus="status">
						<div id="img${status.index}" class="t-${pickdto.et_time*pickdto.pr_count}" style ="display:none">
							<img src="<%=request.getContextPath() %>/resources/images/${pickdto.et_img3}.gif" width="100%">
							<div class="mb-4 product-wap rounded-0"></div>
							<div>${pickdto.et_description}</div>
							<div class="mb-4 product-wap rounded-0"></div>
						</div>
					</c:forEach>
                	</div> 
                	<div class="col-md-12 finish" style ="display:none">
                		<img src="<%=request.getContextPath() %>/resources/images/finish.jpg" width="100%">
                	</div>
                	<div class="col-md-3 finish">
	                	<button class="btn btn-dark btn-lg px-3 text-light" onclick="location.href='ptmain';">취소하기</button>
						<button class="btn btn-dark btn-lg px-3 text-light finish" style='display:none;' id="p-${pick[0].pr_num}" onclick="location.href='ptmain';">완료하기</button>    
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
	var listnum = ${fn:length(pick)}
	var time = [];
	var timeone = 0;
	var timeadd = 0;
	function one(){
	for (let i = 0; i < listnum ; i++) {
		var t = $('#img'+i).attr('class');
		timeone = (t.split("-"))[1]*1;
		timeadd+=timeone;
		time[i]=timeadd;
		}
	document.getElementById("img0").style.display = "block";
	};
	function Two(){
		for (let i = 0; i < time.length  ; i++) {
			 setTimeout(() => {
					$(".color"+i).css('color','red');
				if(i!=0){
					$("#img"+(i-1)).css('display','none');
					$("#img"+i).css('display','block');
				}	
			  },(time[i]) * 1000); 
		}
		setTimeout(() => {
			$('[id^="img"]').css('display','none');
			$(".finish").css('display','block');
	 		},(timeone+timeadd) * 1000);
	};

	
	function start(time){
 		var time = time;
 		var min = "";
 		var sec = "";
 		var x = setInterval(function(){ 
 			min = parsenInt(time/60);
 			sec = time%60;
 			document.getElementById("demo").innerHTML= min+":"+sec;
 			time--;
 			if(time<0){
 				clearInterval(x);
 				document.getElementById("demo").innerHTML= "0:0";
 			}
 		},1000); 
	}
 	one();
 	Two();
 	
	$(document).on("click", ".finish", function(){
			let a = $('.finish').attr('id');
			let pr_num = a.slice(2);
			let today = new Date();
			let year = today.getFullYear(); 
			let month = today.getMonth() + 1;
			let date = today.getDate();
			let hours = today.getHours();
			let minutes = today.getMinutes(); 
			let seconds = today.getSeconds();
			let datetime = year + '-' + month + '-' + date + ' ' +hours+ ':' + minutes + ':' + seconds;
			$.ajax({
				url:'ptroutinesave',
				type : 'post',
				data : {'datetime':datetime, 'pr_num':pr_num} , 
				dataType: 'json',
				success : function(a){
					alert(a.ms)
				}//success end	
			});//ajax end
		  });
});
</script>
</body>
</html>