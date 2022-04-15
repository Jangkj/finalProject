<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="kr">
<head>
    <title>MultiHealth</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/css/templatemo.css">
    <link rel="stylesheet" href="../resources/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="../resources/css/fontawesome.min.css">

    <!-- Load map styles -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A==" crossorigin="" />
<!--
    

-->
</head>


<body style="background-color:#212529">
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-light navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-dark">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-dark text-decoration-none" href="mailto:info@company.com">담당자 이메일주소</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-dark text-decoration-none" href="tel:010-020-0340">010-1234-5678</a>
                </div>
                <div>
                    <a class="text-dark" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-dark" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-dark" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-dark" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->


    <!-- Header -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-light logo h1 align-self-center" href="index.html">
                MultiHealth
            </a>

            <button class="navbar-toggler border-0 navbar-dark" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link text-white" href="index.html">원하는</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="about.html">페이지로</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="shop.html">링크를</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="signup.html">합시다</a>
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
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">(int)</span>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="#">
                        <i class="fa fa-fw fa-user text-white mr-3"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">(int)</span>
                    </a>
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->

    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>


    <!-- Start Content Page -->
    <div class="container-fluid bg-black py-5">
        <div class="col-md-6 m-auto text-center text-light">
            <h1 class="h1">회 원 가 입</h1>
            <p>
                ↑ 영어는 이쁜데 한글은 폰트 영 아닌듯
            </p>
        </div>
    </div>

    <!-- Start Sign Up -->
    <div class="container py-5 text-light">
        <div class="row py-5">
            <form class="col-md-9 m-auto" method="post" role="form" action="/user/signup" method="post">
                <div class="row">
                    <div class="form-group col-md-6 mb-3">
                        <label for="inputemail">이메일</label>
                        <input type="email" class="form-control mt-1" id="email" name="m_mail" placeholder="이메일을 입력해주세요">
                    </div>
                    <div class="form-group col-md-6 mb-3">
                        <label for="inputpassword">비밀번호</label>
                        <input type="password" class="form-control mt-1" id="password" name="m_pw" placeholder="비밀번호">
                    </div>
                    <div class="form-group col-md-6 mb-3">
                        <label for="inputname">이름</label>
                        <input type="name" class="form-control mt-1" id="name" name="m_name" placeholder="이름">
                    </div>
                    <div class="form-group col-md-6 mb-3">
                        <label for="inputpasswordcon">비밀번호 확인</label>
                        <input type="password" class="form-control mt-1" id="password_con" placeholder="비밀번호 확인">
                    </div>
                    
                </div>
                <div>
                    <input type="hidden" name="isAccountNonExpired" value="true">
                    <input type="hidden" name="isAccountNonLocked" value="true">
                    <input type="hidden" name="isCredentialsNonExpired" value="true">
                    <input type="hidden" name="isEnabled" value="true">
                </div>

                <div class="mb-3">
                    <label for="inputtext">전화 번호</label>
                    <input type="text" class="form-control mt-1" id="phone" name="m_hp" placeholder="01012345678" maxlength="11">
                </div>
                
                
                <input type="text" name="m_add" placeholder="주소"><br> <!-- 더미 -->

                <!-- <div class="form-group">
                    <div class="col-sm-2 control-label">
                        <label id="zip_num">우편번호</label>
                    </div>                    
                    <div class="row">
                        <div class="col-sm-4">
                        <input type="text" id="sample6_postcode" placeholder="우편번호"  name="zip_num" class="form-control">
                        </div>
                        <div class="col-sm-3">
                        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="btn btn-primary">                  
                        </div>
                    </div>
                </div>   
                
                <div class="row">
                    <div class="form-group col-md-6 mb-3">
                     <div class="col-sm-3 control-label">
                     <label id="address1">주소</label>
                    </div>
                    <div class="col-sm-12">
                        <input type="text" id="sample6_address" name="address1" class="form-control" placeholder="서울 강남구 강남대로 238 (도곡동, 스카이쏠라빌딩)">
                    </div>   
                   </div>
              
                   <div class="form-group col-md-6 mb-3">
                    <div class="col-sm-3 control-label">
                        <label id="address1">상세주소</label>
                    </div>
                    <div class="col-sm-12"> 
                        <input type="text" id="sample6_address2" placeholder="상세주소" name="address2"   class="form-control">
                    </div>
                  </div>datetime-local
                </div> -->


                <div style="display: none;">
                    <input type="hidden" name="m_date" value="2022-04-13 00:00:00"/>
                </div>
                <div class="row">
                    <div class="col text-end mt-2">
                        <button type="submit" class="btn btn-primary btn-lg px-3 text-dark">가입</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- End Sign Up -->


    <!-- Start Footer -->
    <footer class="bg-light" id="tempaltemo_footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-dark border-bottom pb-3 border-light logo">MultiHealth</h2>
                    <ul class="list-unstyled text-dark footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw text-dark"></i>
                            지구 어딘가
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw text-dark"></i>
                            <a class="text-dark" href="tel:010-020-0340">010-1234-5678</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw text-dark"></i>
                            <a class="text-dark" href="mailto:info@company.com">담당자 이메일주소</a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-dark border-bottom pb-3 border-light">상품페이지경로</h2>
                    <ul class="list-unstyled text-dark footer-link-list">
                        <li><a class="text-dark" href="#">원하는</a></li>
                        <li><a class="text-dark" href="#">만큼의</a></li>
                        <li><a class="text-dark" href="#">카테고리를</a></li>
                        <li><a class="text-dark" href="#">쓰면</a></li>
                        <li><a class="text-dark" href="#">될거</a></li>
                        <li><a class="text-dark" href="#">같아요</a></li>
                        <li><a class="text-dark" href="#">찡긋☆</a></li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-dark border-bottom pb-3 border-light">게시판이나 정보</h2>
                    <ul class="list-unstyled text-dark footer-link-list">
                        <li><a class="text-dark" href="#">이 란은</a></li>
                        <li><a class="text-dark" href="#">서아씨</a></li>
                        <li><a class="text-dark" href="#">서비스</a></li>
                        <li><a class="text-dark" href="#">링크로</a></li>
                        <li><a class="text-dark" href="#">쓰시면</a></li>
                        <li><a class="text-dark" href="#">되실듯</a></li>
                    </ul>
                </div>

            </div>

            <div class="row text-dark mb-4">
                <div class="col-12 mb-3">
                    <div class="w-100 my-3 border-top border-light"></div>
                </div>
                <div class="col-auto me-auto">
                    <ul class="list-inline text-left footer-icons">
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="http://facebook.com/"><i class="fab fa-facebook-f fa-lg fa-fw text-dark"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/"><i class="fab fa-instagram fa-lg fa-fw text-dark"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://twitter.com/"><i class="fab fa-twitter fa-lg fa-fw text-dark"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.linkedin.com/"><i class="fab fa-linkedin fa-lg fa-fw text-dark"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-auto">
                    <label class="sr-only" for="subscribeEmail">이메일 주소 검색창  이건 왜있지..?</label>
                    <div class="input-group mb-2">
                        <input type="text" class="form-control bg-white border-light" id="subscribeEmail" placeholder="Email address">
                        <div class="input-group-text btn-primary text-dark">Subscribe </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="w-100 bg-black py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                        <p class="text-left text-light">
                            Copyright &copy; 2021 Company Name 
                            | Designed by <a rel="sponsored" href="https://templatemo.com" target="_blank">수정가능</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- End Footer -->

    <!-- Start Script -->
    <script src="../resources/js/jquery-1.11.0.min.js"></script>
    <script src="../resources/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="../resources/js/bootstrap.bundle.min.js"></script>
    <script src="../resources/js/templatemo.js"></script>
    <script src="../resources/js/custom.js"></script>
    <!--
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        function sample6_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
    
                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수
    
                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }
    
                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if(data.userSelectedType === 'R'){
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if(data.buildingName !== '' && data.apartment === 'Y'){
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if(extraAddr !== ''){
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        document.getElementById("sample6_extraAddress").value = extraAddr;
                    
                    } else {
                        document.getElementById("sample6_extraAddress").value = '';
                    }
    
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById("sample6_address").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("sample6_detailAddress").focus();
                }
            }).open();
        }
    </script>-->
    <!-- End Script -->
</body>
</html>