<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
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

	<%@include file ="../views/include/header.jsp" %> <!-- 공통헤더 삽입 -->
	
<section class="ftco-section">
	<div class="mask d-flex align-items-center h-100 gradient-custom-3">
		<div class="container h-100">
			 <div class="row w-100">
            <div class="col-lg-12 col-md-12 col-12">
                <h3 class="display-5 mb-2 text-center" style="padding-top: 50px;">현재 담은 물품</h3>
                <p class="mb-5 text-center">
                    <i class="text-info font-weight-bold">${cartList.size() }</i> 개의 상품이 있어요.</p>
                <table id="shoppingCart" class="table table-condensed table-responsive">
                    <thead>
                    <tr>
                        <th style="width:60%">상품</th>
                        <th style="width:12%">수량</th>
                        <th style="width:8%">가격</th>
                        <th style="width:10%"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="prod" items="${prodList}" varStatus="status">
	                    <tr>
	                        <td data-th="Product">
	                            <div class="row">
	                                <div class="col-md-3 text-left">
	                                    ${prod.prod_img_name}
	                                </div>
	                                <div class="col-md-9 text-left mt-sm-2" >
	                                    <h4>${prod.prod_title}</h4>
	                                </div>
	                            </div>
	                        </td>
	                        <td data-th="Quantity">
								<input type="number" id="${prod.prod_num }quan" class="quan btn btn-light" value="${cartList[status.index].product_count}" min="1">
								<input type="hidden" class="total" value="${cartList[status.index].product_count * prod.prod_price}">
	                        </td>
	                        <td data-th="Price">${prod.prod_price}</td>
	                        <td class="actions" data-th="">
	                            <div class="text-right">
	                                <button id="${prod.prod_num }" onClick="deleteCart(${prod.prod_num})" class="deleteBtn btn btn-white border-secondary bg-white btn-md mb-2">
	                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="8" height="8" viewBox="0 0 8 8">
	                                        <defs>
	                                            <clipPath id="clip-path">
	                                                <rect width="8"
														height="8" fill="none" />
	                                            </clipPath>
	                                        </defs>
	                                        <g id="close"
														clip-path="url(#clip-path)">
	                                            <path id="close-2"
														data-name="close"
														d="M5.4,4,7.7,1.7A.967.967,0,0,0,7.7.3.967.967,0,0,0,6.3.3L4,2.6,1.7.3A.967.967,0,0,0,.3.3a.967.967,0,0,0,0,1.4L2.6,4,.3,6.3a.967.967,0,0,0,0,1.4A.908.908,0,0,0,1,8a.908.908,0,0,0,.7-.3L4,5.4,6.3,7.7a.967.967,0,0,0,1.4,0,.967.967,0,0,0,0-1.4Z"
														fill="#202124" />
	                                        </g>
	                                    </svg>
											</button>
										</div>
									</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
					<div class="float-right text-right">
						<h4>총 금액</h4>
						<h1 id="totalPrice">  </h1>
					</div>
				</div>
			</div>
				<div class="row mt-4 d-flex align-items-center">
					<div class="col-sm-6 order-md-2 text-right">
						<input type="button" id="check_module" value="결제하기"
							class="btn btn-primary mb-4 btn-lg pl-5 pr-5" onclick='location.href="/cart/payment"' >
					</div>
				</div>
		</div>
	</div>
</section>
</body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
$(function() {
	totalCal();
	$(".quan").change(function() {
		totalCal();
	})
	
	function totalCal() {
		// 이렇게 장바구니에 담긴 제품번호를 가져온다.
		var numList = [];
		<c:forEach items="${prodList}" var="product">
		numList.push("${product.prod_num}"); 
		</c:forEach>
		
		// 제품수량을 가져온다. (변경 내용까지 반영)
		var quanList = [];
		for(const prod of numList) {
			quanList.push($('#'+prod+"quan").val());
		}
		
		var objParams = {
				"numList" : numList,
				"quanList" : quanList
		}
		// 이제 이 데이터 두개만 전달해버리면 컨트롤러에서 계산하고, 총 금액을 전달해주면 됨/
		$.ajax({
			type: "post",
			data: {objParams: JSON.stringify(objParams)},
			url: "http://localhost:8081/cart/gettotal",
			success: function(data) {
				 $('#totalPrice').text(result);
			},
			error: function(data) {
				alert('에러 발생');
			}
		})
	}
});

function deleteCart(id) {
	let prod_id = id;
	$.ajax({
		type: "post",
		data: {prod_id : prod_id},
		url: "http://localhost:8081/cart/deletecart",
		success: function(data){
			alert(data);
			window.location.reload();
		}
	})
}
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


	<%@include file ="../views/include/footer.jsp" %> <!-- 공통 푸터 삽입, css, js 파일 함유 jquery 포함-->

	<!-- Start Script -->
	<script src="assets/js/jquery-1.11.0.min.js"></script>
	<script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/templatemo.js"></script>
	<script src="assets/js/custom.js"></script>
	<!-- End Script -->
	

</body>
</html>