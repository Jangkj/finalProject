<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 조회</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon"
	href="http://localhost:8081/assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon"
	href="http://localhost:8081/assets/img/favicon.ico">

<link rel="stylesheet"
	href="http://localhost:8081/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://localhost:8081/assets/css/templatemo.css">
<link rel="stylesheet"
	href="http://localhost:8081/assets/css/custom.css">

<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet"
	href="http://localhost:8081/assets/css/fontawesome.min.css">
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
						<li class="nav-item"><a class="nav-link" href="shop.html">Shop</a>
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
						href="#"> <i
						class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i> <span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
					</a> <a class="nav-icon position-relative text-decoration-none"
						href="#"> <i class="fa fa-fw fa-user text-dark mr-3"></i> <span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+99</span>
					</a>
				</div>
			</div>

		</div>
	</nav>
	<!-- Close Header -->

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
	<!-- Start Content -->
	<div class="container py-5">
		<div class="row">
			<div class="col-lg-3">
				<h1 class="h2 pb-4">Admin</h1>
				<ul class="list-unstyled templatemo-accordion">
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#"> 상품 <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
					</a>
						<ul class="collapse show list-unstyled pl-3">
							<li><a class="text-decoration-none" href="admininsert">상품
									등록</a></li>
							<li><a class="text-decoration-none" href="adminselect">상품
									조회</a></li>
							<li><a class="text-decoration-none" href="#">상품 수정</a></li>
						</ul></li>
					<li class="pb-3"><a
						class="collapsed d-flex justify-content-between h3 text-decoration-none"
						href="#"> 주문 <i
							class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
					</a>
						<ul id="collapseTwo" class="collapse list-unstyled pl-3">
							<li><a class="text-decoration-none" href="#">주문 조회</a></li>
						</ul></li>
					<!--                     <li class="pb-3"> -->
					<!--                         <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#"> -->
					<!--                             Product -->
					<!--                             <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i> -->
					<!--                         </a> -->
					<!--                         <ul id="collapseThree" class="collapse list-unstyled pl-3"> -->
					<!--                             <li><a class="text-decoration-none" href="#">Bag</a></li> -->
					<!--                             <li><a class="text-decoration-none" href="#">Sweather</a></li> -->
					<!--                             <li><a class="text-decoration-none" href="#">Sunglass</a></li> -->
					<!--                         </ul> -->
					<!--                     </li> -->
				</ul>
			</div>

			<div class="col-lg-9">
				<div class="row">
					<div class="col-md-6">
						<ul class="list-inline shop-top-menu pb-3 pt-1">
							<li class="list-inline-item"><a
								class="h3 text-dark text-decoration-none mr-3" href="#">상품
									수정</a></li>
							<!--                             <li class="list-inline-item"> -->
							<!--                                 <a class="h3 text-dark text-decoration-none mr-3" href="#">Men's</a> -->
							<!--                             </li> -->
							<!--                             <li class="list-inline-item"> -->
							<!--                                 <a class="h3 text-dark text-decoration-none" href="#">Women's</a> -->
							<!--                             </li> -->
						</ul>
					</div>
					<div class="col-md-3 pb-4">
						<div class="d-flex">
							<select class="form-control" id="selectbox" name="selectbox"
								onchange="chageLangSelect(1)">
								<option value="category_num">Category</option>
								<c:forEach items="${categorylist }" var="cdto"
									varStatus="status">
									<option value="${cdto.category_num}"
										<c:if test="${cdto.category_num eq category}">selected</c:if>>${cdto.category_name}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="col-md-3 pb-4">
						<div class="d-flex">
							<select class="form-control">
								<option>Featured</option>
								<option>A to Z</option>
								<option>Item</option>
							</select>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-10">
						<form name="modifyform" class="form-horizontal"
							action="adminmodify?productnum=${admindto.prod_num }"
							method="post" enctype="multipart/form-data">
							<input type=hidden name=prod_num value='${admindto.prod_num }'><br>
							<div class="form-group">
								<label for="category_num" class="col-sm-2 control-label">카테고리</label>
								<div class="col-sm-10">
									<select class="form-control" id="category_num"
										name="category_num" onchange="chageLangSelect(1)">
										<c:forEach items="${categorylist }" var="cdto"
											varStatus="status">
											<option value="${cdto.category_num}"
												<c:if test="${cdto.category_num eq admindto.category_num}">selected</c:if>>${cdto.category_name}</option>
										</c:forEach>
									</select> <br>
								</div>
							</div>
							<div class="form-group">
								<label for="prod_title" class="col-sm-2 control-label">타이틀</label>
								<div class="col-sm-10">
									<input type=text class="form-control" id=prod_title
										name=prod_title value='${admindto.prod_title }'><br>
								</div>
							</div>
							<div class="form-group">
								<label for="prod_price" class="col-sm-2 control-label">가격</label>
								<div class="col-sm-10">
									<input type=text class="form-control" id=prod_price
										name=prod_price value='${admindto.prod_price }'><br>
								</div>
							</div>
							<div class="form-group">
								<label for="prod_inventory" class="col-sm-2 control-label">재고</label>
								<div class="col-sm-10">
									<input type=text class="form-control" id=prod_inventory
										name=prod_inventory value='${admindto.prod_inventory }'>
									<br>
								</div>
							</div>
							<div class="form-group">
								<label for="prod_img" class="col-sm-2 control-label">이미지</label>
								<div class="col-sm-10">
									${admindto.prod_img_name} 
									<input type=file class="form-control"
										id=prod_img name="prod_img"><br>
								</div>
							</div>
							<div class="form-group">
								<label for="prod_description" class="col-sm-2 control-label">설명</a></label>
								<div class="col-sm-10">
									<details class=des>
										<summary>설명 미리보기</summary>
										<p>
											${admindto.prod_description_name}
										</p>
									</details>
									<input type=file class="form-control"
										id=prod_description name="prod_description"><br>
								</div>
							</div><br> 
							<input type=hidden id=view_count name=view_count value='${admindto.view_count}'>
							<input type=hidden id=prod_point name=prod_point value='${admindto.prod_point}'>
							
						</form>
						<input type="button" id="mod" name="mod" onclick="modifyf()" class="btn btn-primary"  value="상품수정"/>
					</div>



				</div>
			</div>

		</div>
	</div>
	<!-- End Content -->






	<!-- 이거 10 20 30 -->
	<select name="contentnum" id="contentnum" onchange="page(1)">
		<option value="9"
			<c:if test="${page.getContentnum() == 9 }">selected="selected"</c:if>>9
			개</option>
		<option value="18"
			<c:if test="${page.getContentnum() == 18 }">selected="selected"</c:if>>18
			개</option>
		<option value="27"
			<c:if test="${page.getContentnum() == 27 }">selected="selected"</c:if>>27
			개</option>
	</select>






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
													src="http://localhost:8081/assets/img/brand_01.png"
													alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="http://localhost:8081/assets/img/brand_02.png"
													alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="http://localhost:8081/assets/img/brand_03.png"
													alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="http://localhost:8081/assets/img/brand_04.png"
													alt="Brand Logo"></a>
											</div>
										</div>
									</div>
									<!--End First slide-->

									<!--Second slide-->
									<div class="carousel-item">
										<div class="row">
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="http://localhost:8081/assets/img/brand_01.png"
													alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="http://localhost:8081/assets/img/brand_02.png"
													alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="http://localhost:8081/assets/img/brand_03.png"
													alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="http://localhost:8081/assets/img/brand_04.png"
													alt="Brand Logo"></a>
											</div>
										</div>
									</div>
									<!--End Second slide-->

									<!--Third slide-->
									<div class="carousel-item">
										<div class="row">
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="http://localhost:8081/assets/img/brand_01.png"
													alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="http://localhost:8081/assets/img/brand_02.png"
													alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="http://localhost:8081/assets/img/brand_03.png"
													alt="Brand Logo"></a>
											</div>
											<div class="col-3 p-md-5">
												<a href="#"><img class="img-fluid brand-img"
													src="http://localhost:8081/assets/img/brand_04.png"
													alt="Brand Logo"></a>
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

	<script type="text/javascript">
        function modifyf(){
        	alert(1);
            var modifyform = document.modifyform;
            var prod_num = modifyform.prod_num.value;
            var category_num = document.getElementById("selectbox");
            var prod_title = modifyform.prod_title;
            var prod_price = modifyform.prod_price;
            var prod_inventory = modifyform.prod_inventory;
            var prod_img_name = modifyform.prod_img_name;
            var prod_description_name = modifyform.prod_description_name;
            
            console.log(1);
            
            alert(modifyform, prod_num, category_num, prod_title, prod_price, prod_inventory, prod_img_name, prod_description_name, view_count, prod_point);
            
//             if(!prod_img_name || !password){
//                 alert("아이디와 비밀번호를 모두 입력해주세요.")
//             }else{
//                 loginForm.submit();
//             }
        }

    </script>

	<!-- Start Script -->
	<script src="http://localhost:8081/assets/js/jquery-1.11.0.min.js"></script>
	<script
		src="http://localhost:8081/assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="http://localhost:8081/assets/js/bootstrap.bundle.min.js"></script>
	<script src="http://localhost:8081/assets/js/templatemo.js"></script>
	<script src="http://localhost:8081/assets/js/custom.js"></script>




	<script type="text/javascript">
		/*한페이지당 게시물 */
		function page(idx) {
			var pagenum = idx;
			var contentnum = $("#contentnum option:selected").val();
			var selectval = $("#selectbox option:selected").val();
			if (contentnum == 9) {
				location.href = "http://localhost:8081/admin/adminselect?pagenum="
						+ pagenum
						+ "&contentnum="
						+ contentnum
						+ "&categorynum=" + selectval

			} else if (contentnum == 18) {
				location.href = "http://localhost:8081/admin/adminselect?pagenum="
						+ pagenum
						+ "&contentnum="
						+ contentnum
						+ "&categorynum=" + selectval

			} else if (contentnum == 27) {
				location.href = "http://localhost:8081/admin/adminselect?pagenum="
						+ pagenum
						+ "&contentnum="
						+ contentnum
						+ "&categorynum=" + selectval

			}
		}
	</script>
	<script>
		function chageLangSelect(idx) {
			var pagenum = idx;
			var contentnum = $("#contentnum option:selected").val();
			var selectval = $("#selectbox option:selected").val(); // select element에서 선택된 option의 value가 저장된다.
			for (var i = 1; i < 22; i++) {
				if (selectval == i) {
					location.href = "http://localhost:8081/admin/adminselect?pagenum="
							+ pagenum
							+ "&contentnum="
							+ contentnum
							+ "&categorynum=" + selectval
				}
			}
		}
	</script>
	<script type="text/javascript">
		$(function() {
			$("#prod_img").on('change', function() {
				readURL(this);
			});
		});
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('.card-img').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>
	<script type="text/javascript">
		$(function() {
			$("#prod_description").on('change', function() {
				readURL2(this);
			});
		});
		function readURL2(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('.des img').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>


	<!-- End Script -->
</body>
</html>