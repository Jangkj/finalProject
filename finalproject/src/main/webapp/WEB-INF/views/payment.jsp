<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MultiHealth</title>
<script src="js/jquery-3.6.0.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/templatemo.css">
<link rel="stylesheet" href="assets/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="assets/css/fontawesome.min.css">
</head>
<body>
	<!-- Start Top Nav -->
	<nav
		class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block"
		id="templatemo_nav_top">
		<div class="container text-light">
			<div class="w-100 d-flex justify-content-between">
				<div>
					<i class="fa fa-envelope mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none"
						href="mailto:info@company.com">info@company.com</a> <i
						class="fa fa-phone mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none"
						href="tel:010-020-0340">010-020-0340</a>
				</div>
				<div>
					<a class="text-light" href="https://fb.com/templatemo"
						target="_blank" rel="sponsored"><i
						class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a> <a
						class="text-light" href="https://www.instagram.com/"
						target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
					<a class="text-light" href="https://twitter.com/" target="_blank"><i
						class="fab fa-twitter fa-sm fa-fw me-2"></i></a> <a class="text-light"
						href="https://www.linkedin.com/" target="_blank"><i
						class="fab fa-linkedin fa-sm fa-fw"></i></a>
				</div>
			</div>
		</div>
	</nav>
	<!-- Close Top Nav -->


	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-light shadow">
		<div
			class="container d-flex justify-content-between align-items-center">

			<a class="navbar-brand text-success logo h1 align-self-center"
				href="index.html"> 멀티헬스 </a>

			<button class="navbar-toggler border-0" type="button"
				data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div
				class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
				id="templatemo_main_nav">
				<div class="flex-fill">
					<ul
						class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
						<li class="nav-item"><a class="nav-link" href="index.html">Home</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="about.html">About</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="productlist">Shop</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="admininsert">Admin</a>
						</li>
					</ul>
				</div>
				<div class="navbar align-self-center d-flex">
					<div
						class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
						<div class="input-group">
							<input type="text" class="form-control" id="inputMobileSearch"
								placeholder="Search ...">
							<div class="input-group-text">
								<i class="fa fa-fw fa-search"></i>
							</div>
						</div>
					</div>
					<a class="nav-icon d-none d-lg-inline" href="#"
						data-bs-toggle="modal" data-bs-target="#templatemo_search"> <i
						class="fa fa-fw fa-search text-dark mr-2"></i>
					</a> <a class="nav-icon position-relative text-decoration-none"
						href="/cart"> <i
						class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i> <span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
					</a> <a class="nav-icon position-relative text-decoration-none"
						href="#"> <i class="fa fa-fw fa-user text-dark mr-3"></i> <span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>
					</a>
				</div>
			</div>

		</div>
	</nav>
	<!-- Close Header -->
<div id="wrap">
<div class="container">
	<form action="${pageContext.request.contextPath}/cart" method="get">
		<section class="sub-content order pb-0">
			<div class="title-area"><h2 class="page-title">주문결제</h2></div>
	
			<div class="lay-st-payment" >
				<div class="center-cont-area">
					<!-- 주문상품 -->
					<div class="cont-group mt0">
						<div class="toggle-title"><h3 class="cont-tit">주문상품</h3></div>
						<div class="toggle-content open">
							<!--  table -->
							<table class="tbl-st-col order">
								<colgroup>
									<col style="width: 18.5%;" />
									<col style="width: auto;" />
									<col style="width: 20.98%;" />
									<col style="width: 20.98%;" />
									<col style="width: 60px;" />
								</colgroup>
								<tbody>
									<!--  반복 -->
										<c:forEach var="prod" items="${prodList}" varStatus="status">
											<tr>
												<td class="product-img">
												<%-- 	<a style="height: 300px;width: 300px;"${prod.prod_img_name}></a> --%>
												</td>
												<!-- 반복2 a hreft 똑같이, 상품명,  -->
												<td class="product-info">
													<p class="tit"> ${prod.prod_title}</p>
													<p class="count">개수 : ${cartList[status.index].product_count} 개</p></td>
												<td class="price">가격 : ${prod.prod_price} ￦ </td>
											</tr>
										</c:forEach>
								</tbody>
							</table>
							<!-- // table -->
						</div>
					</div>
					<!-- //주문상품 -->
	
					<!-- 주문자 정보 -->
					<div class="cont-group mt0">
						<div class="toggle-title"><h3 class="cont-tit">주문자 정보</h3></div>
						<div class="toggle-content open">
							<!-- txt-box -->
							<div class="txt-box ty02 write-form">
								<!--  table -->
								<table>
									<colgroup>
										<col style="width: 120px;" />
										<col style="width: auto;" />
									</colgroup>
									
									
									<sec:authorize access="isAuthenticated()">
		                          	<sec:authentication property="principal" var="user" />
	                                </sec:authorize>
							 		
									<tbody>
										<tr>
											<th class="">이름</th>
											<td><input type="text" class="inp-txt"
												value="${user.m_name }" style="text-align:center"disabled/></td>
										</tr>
										<tr>
											<th class="">휴대폰번호</th>
											<td><input type="text" class="inp-txt"
												value="${user.m_hp }" style="text-align:center"disabled/></td>
										</tr>
	
										<tr>
											<th scope="row" class="">이메일</th>
											<td><input type="text" class="inp-txt"
												value="${user.username }" style="text-align:center"disabled/></td>
										</tr>
										<tr>
											<th scope="row" class="">주소</th>
											<td>						
												<input type="text" class="inp-txt" value="${user.m_add1}" style="text-align:center"disabled/>													
				
											</td>
										</tr>
										
										<tr>
											<th scope="row" class="">상세주소</th>
											<td>																		
												<input type="text" class="inp-txt" value="${user.m_add2}" style="text-align:center" disabled/>
											</td>
										</tr>
									</tbody>
								</table>
								<!--  //table -->
							</div>
							<!-- //txt-box -->
							
							
							
								
							
								
							<!-- txt-box -->
							<div class="txt-box ty02 write-form">
								<div class="payment-info payment-box pb-0" style=" border-top: 2px solid black;">
									<h3 class="cont-tit">결제금액</h3>
					
									<div class="price-list total pb-0">
										<div class="total-price-info">
											<em class="tit">총 결제금액</em> <span id="" class="price">${totalPrice } 원</span>
											<br/><br/><br/><br/>
											<div class="chk-agree-wrap">
										</div>
										</div>
									</div>
								</div>
							</div>
							<!-- //txt-box -->
					</div>
				</div>
			</div>
		</section>

		<!-- 배송정보수집 -->
		<div id="popDeliTerm" class="pop-wrap alert order" style="display:none;">
			<div class="pop-wrap-inner">
				<div class="pop-cont-inner w660">
					<div class="pop-top-wrap">
						<h5 class="pop-tit ty02 bd-none">상품 주문 및 배송정보 수집</h5>
					</div>
					<div class="tbl-wrap">
						<table class="tbl-deli-term">
							<colgroup>
								<col width="15%">
								<col width="42.5%">
								<col width="42.5%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">구분</th>
									<th scope="col">수탁자</th>
									<th scope="col">위탁업무</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row" rowspan="3">배송<br>서비스</th>
									<td>(주)멀캠, 입점사에서 사용하는 택배사 정보</td>
									<td>상품 및 경품의 배송</td>
								</tr>
								<tr>
									<td>우체국 EMS</td>
									<td>배송조회</td>
								</tr>
								<tr>
									<td>멀캠 영업소</td>
									<td>물류센터 업무 일체</td>
								</tr>
								<tr>
									<th scope="row">결제<br>처리</th>
									<td>NHN한국사이버결제주식회사, ㈜MultiCampus, 카카오페이, 페이코, 네이버페이</td>
									<td>신용카드, 휴대폰, 계좌이체 등을통한 결제처리</td>
								</tr>
								<tr>
									<th scope="row">본인<br>인증</th>
									<td>나이스평가정보</td>
									<td>휴대폰 본인인증</td>
								</tr>
								<tr>
									<th scope="row">알림<br>발송</th>
									<td>LGU+, 주식회사 케이티, ㈜ 카카오, NHN 주식회사, 휴머스온</td>
									<td>SMS 및 메세지 발송</td>
								</tr>
								<tr>
									<th scope="row">데이터<br>보관</th>
									<td>Amazon Web Services Inc.</td>
									<td>데이터 보관</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="btn-box">
						<a href="#" class="btn bg-gray03" onclick="layerPop.hide(this);return false;">창닫기</a>
					</div>
				</div>
			</div>
		</div>
		<!-- //배송정보수집 -->

		<!-- 환불규정 -->
		<div id="popRefund" class="pop-wrap alert order" style="display:none;">
			<div class="pop-wrap-inner">
				<div class="pop-cont-inner">
					<p class="txt">주문하실 상품, 가격, 배송정보, 할인내역, 환불규정등을 최종 확인하였으며, 구매에 동의합니다.<br>(전자상거래법 제8조 제2항)</p>
					<div class="btn-box">
						<a href="#" class="btn bg-black" onclick="layerPop.hide(this);return false;">확인</a>
					</div>
				</div>
			</div>
		</div>
		<!-- //환불규정 -->
		
		
		<div class="btn-comm-wrap" style="padding-bottom:200px">
			<input type="button" class="btn-comm btn-md bg-line" onclick="history.back()" value="이전화면">
			<input type="submit" class="btn-comm btn-md" value="결제하기" style="display:none;">
			<input type="button" class="btn-comm btn-md" id="check_module" value="결제하기">
		</div>		
	</form>
</div>
</div>
	<!-- //container -->
	
	
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<script>

	$("#check_module").click(function() {
		
		let inputQuantity = $("#inputQuantity").val();
		let price =parseInt($("#totalPrice").text());
		var IMP = window.IMP; // 생략가능
		IMP.init('imp06765182');
		// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
		IMP.request_pay({
			pg : 'inicis', // version 1.1.0부터 지원.
			/*
			 'kakao':카카오페이,
			 html5_inicis':이니시스(웹표준결제)
			 'nice':나이스페이
			 'jtnet':제이티넷
			 'uplus':LG유플러스
			 'danal':다날
			 'payco':페이코
			 'syrup':시럽페이
			 'paypal':페이팔
			 */

			pay_method : 'card',
			/*
			 'samsung':삼성페이,
			 'card':신용카드,
			 'trans':실시간계좌이체,
			 'vbank':가상계좌,
			 'phone':휴대폰소액결제
			 */
			merchant_uid : 'merchant_' + new Date().getTime(),
			/*
			 merchant_uid에 경우
			 https://docs.iamport.kr/implementation/payment
			 위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
			 참고하세요.
			 나중에 포스팅 해볼게요.
			 */
			
			name : `${cartList.size() }`+"개의 상품",
			//결제창에서 보여질 이ruf
			amount : `${totalPrice}`,
			//가격
			buyer_email : `${user.username}`,
			buyer_name : `${user.m_name}`,
			buyer_tel : `${user.m_hp}`,
			buyer_addr : `${user.m_add1}`,
			buyer_postcode : `${user.m_add2}`,
			m_redirect_url : 'http://www.localhost8081/payments/complete'
			// 결제창에서 보여질 유저이름 
		/*
		 모바일 결제시,
		 결제가 끝나고 랜딩되는 URL을 지정
		 (카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
		 */
		}, function(rsp) {
			console.log(rsp);
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				msg += '결제 금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
				$("#submit").click(); //테스트용
			}
			alert(msg);
		});
	});

</script>



<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<script>
$("#check_module")
.click(
		function() {
			var IMP = window.IMP; // 생략가능
			IMP.init('imp06765182');
			// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
			// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
			IMP
					.request_pay(
							{
								pg : 'inicis', // version 1.1.0부터 지원.
								/*
								 'kakao':카카오페이,
								 html5_inicis':이니시스(웹표준결제)
								 'nice':나이스페이
								 'jtnet':제이티넷
								 'uplus':LG유플러스
								 'danal':다날
								 'payco':페이코
								 'syrup':시럽페이
								 'paypal':페이팔
								 */

pay_method : 'card',
/*
'samsung':삼성페이,
'card':신용카드,
'trans':실시간계좌이체,
'vbank':가상계좌,
'phone':휴대폰소액결제
*/
merchant_uid : 'merchant_' + new Date().getTime(),
/*
merchant_uid에 경우
https://docs.iamport.kr/implementation/payment
위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
참고하세요.
나중에 포스팅 해볼게요.
*/
name : `${cartList.size()}`+"개의 상품",
//결제창에서 보여질 이름
amount : `${totalPrice}`,
//가격
buyer_email : 'iamport@siot.do',
buyer_name : '구매자이름',
buyer_tel : '010-1234-5678',
buyer_addr : '서울특별시 강남구 삼성동',
buyer_postcode : '123-456',
m_redirect_url : 'http://www.localhost8080/payments/complete'
/*
모바일 결제시,
결제가 끝나고 랜딩되는 URL을 지정
(카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
*/
}, function(rsp) {
console.log(rsp);
if (rsp.success) {
var msg = '결제가 완료되었습니다.';
msg += '고유ID : ' + rsp.imp_uid;
msg += '상점 거래ID : ' + rsp.merchant_uid;
msg += '결제 금액 : ' + rsp.paid_amount;
msg += '카드 승인번호 : ' + rsp.apply_num;
} else {
var msg = '결제에 실패하였습니다.';
msg += '에러내용 : ' + rsp.error_msg;
}
alert(msg);





$("form input[type='submit']").click();
});
});
</script>


<script>
	$(document).ready(function() {
	  $('li.active').removeClass('active');
	  $('a[href="' + "/cart" + '"]').closest('li').addClass('active');
	});

</script>
<!-- Modal -->
	<div class="modal fade bg-white" id="templatemo_search" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="w-100 pt-1 mb-5 text-right">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form action="" method="get"
				class="modal-content modal-body border-0 p-0">
				<div class="input-group mb-2">
					<input type="text" class="form-control" id="inputModalSearch"
						name="q" placeholder="Search ...">
					<button type="submit"
						class="input-group-text bg-success text-light">
						<i class="fa fa-fw fa-search text-white"></i>
					</button>
				</div>
			</form>
		</div>
	</div>



	<!-- Start Brands -->
	<section class="bg-light py-5">
		<div class="container my-4">
			<div class="row text-center py-3">
				<div class="col-lg-6 m-auto">
					<h1 class="h1">Our Brands</h1>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod Lorem ipsum dolor sit amet.</p>
				</div>
				<div class="col-lg-9 m-auto tempaltemo-carousel">
					<div class="row d-flex flex-row">
						<!--Controls-->
						<div class="col-1 align-self-center">
							<a class="h1" href="#multi-item-example" role="button"
								data-bs-slide="prev"> <i
								class="text-light fas fa-chevron-left"></i>
							</a>
						</div>
						<!--End Controls-->

						<!--Carousel Wrapper-->
						<div class="col">
							<div class="carousel slide carousel-multi-item pt-2 pt-md-0"
								id="multi-item-example" data-bs-ride="carousel">
								<!--Slides-->
								<div class="carousel-inner product-links-wap" role="listbox">

									<!--First slide-->
									<div class="carousel-item active">
										<div class="row">
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="assets/img/brand_01.png" alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="assets/img/brand_02.png" alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="assets/img/brand_03.png" alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="assets/img/brand_04.png" alt="Brand Logo"></a>
											</div>
										</div>
									</div>
									<!--End First slide-->

									<!--Second slide-->
									<div class="carousel-item">
										<div class="row">
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="assets/img/brand_01.png" alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="assets/img/brand_02.png" alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="assets/img/brand_03.png" alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="assets/img/brand_04.png" alt="Brand Logo"></a>
											</div>
										</div>
									</div>
									<!--End Second slide-->

									<!--Third slide-->
									<div class="carousel-item">
										<div class="row">
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="assets/img/brand_01.png" alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="assets/img/brand_02.png" alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="assets/img/brand_03.png" alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="assets/img/brand_04.png" alt="Brand Logo"></a>
											</div>
										</div>
									</div>
									<!--End Third slide-->

								</div>
								<!--End Slides-->
							</div>
						</div>
						<!--End Carousel Wrapper-->

						<!--Controls-->
						<div class="col-1 align-self-center">
							<a class="h1" href="#multi-item-example" role="button"
								data-bs-slide="next"> <i
								class="text-light fas fa-chevron-right"></i>
							</a>
						</div>
						<!--End Controls-->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--End Brands-->


	<!-- Start Footer -->
	<footer class="bg-dark" id="tempaltemo_footer">
		<div class="container">
			<div class="row">

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-success border-bottom pb-3 border-light logo">Zay
						Shop</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><i class="fas fa-map-marker-alt fa-fw"></i> 123
							Consectetur at ligula 10660</li>
						<li><i class="fa fa-phone fa-fw"></i> <a
							class="text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
						</li>
						<li><i class="fa fa-envelope fa-fw"></i> <a
							class="text-decoration-none" href="mailto:info@company.com">info@company.com</a>
						</li>
					</ul>
				</div>

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-light border-bottom pb-3 border-light">Products</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><a class="text-decoration-none" href="#">Luxury</a></li>
						<li><a class="text-decoration-none" href="#">Sport Wear</a></li>
						<li><a class="text-decoration-none" href="#">Men's Shoes</a></li>
						<li><a class="text-decoration-none" href="#">Women's
								Shoes</a></li>
						<li><a class="text-decoration-none" href="#">Popular
								Dress</a></li>
						<li><a class="text-decoration-none" href="#">Gym
								Accessories</a></li>
						<li><a class="text-decoration-none" href="#">Sport Shoes</a></li>
					</ul>
				</div>

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-light border-bottom pb-3 border-light">Further
						Info</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><a class="text-decoration-none" href="#">Home</a></li>
						<li><a class="text-decoration-none" href="#">About Us</a></li>
						<li><a class="text-decoration-none" href="#">Shop
								Locations</a></li>
						<li><a class="text-decoration-none" href="#">FAQs</a></li>
						<li><a class="text-decoration-none" href="#">Contact</a></li>
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
								class="fab fa-facebook-f fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://www.instagram.com/"><i
								class="fab fa-instagram fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://twitter.com/"><i
								class="fab fa-twitter fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://www.linkedin.com/"><i
								class="fab fa-linkedin fa-lg fa-fw"></i></a>
						</li>
					</ul>
				</div>
				<div class="col-auto">
					<label class="sr-only" for="subscribeEmail">Email address</label>
					<div class="input-group mb-2">
						<input type="text" class="form-control bg-dark border-light"
							id="subscribeEmail" placeholder="Email address">
						<div class="input-group-text btn-success text-light">Subscribe</div>
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
								rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a>
						</p>
					</div>
				</div>
			</div>
		</div>

	</footer>
	<!-- End Footer -->

	<!-- Start Script -->
	<script src="assets/js/jquery-1.11.0.min.js"></script>
	<script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/templatemo.js"></script>
	<script src="assets/js/custom.js"></script>
	<!-- End Script -->
	

</body>
</html>