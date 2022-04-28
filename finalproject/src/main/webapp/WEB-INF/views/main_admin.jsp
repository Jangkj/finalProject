<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>멀티헬스</title>
	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/jquery.fullpage.js"></script>
	<script src="js/slide.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/main.js"></script>
	<link rel="stylesheet" href="css/fullpage.css" />
	<link rel="stylesheet" href="css/main.css" />
	<link rel="stylesheet" href="css/slide.css" />
</head>
<body>
   <div class="wrap">
      <header>
        <div class="innerHeader">
          <h1 class="logo">
            <a href="index.html"><img src="img/logo.png" alt="멀티헬스" /></a>
          </h1>
          <ul class="gnb">
            <li>
              <a href="#">멀티헬스</a>
              <ul class="inner">
                <li><a href="#">소개</a></li>
                <li><a href="#">서비스</a></li>
                <li><a href="#">찾아오시는 길</a></li>
              </ul>
            </li>
            <li>
              <a href="#">서비스</a>
              <ul class="inner">
                <li><a href="#">나만의 루틴</a></li>
              </ul>
            </li>
            <li>
              <a href="#">상품</a>
              <ul class="inner">
                <li><a href="#">상품 구매</a></li>
              </ul>
            </li>
            <li>
              <a href="#">게시판</a>
              <ul class="inner">
                <li><a href="#">공지사항</a></li>
                <li><a href="#">리뷰</a></li>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">QNA</a></li>
              </ul>
            </li>
            <li>
              <a href="#">관리자</a>
              <ul class="inner">
                <li><a href="admininsert">상품 등록</a></li>
                <li><a href="#">상품 조회</a></li>
                <li><a href="#">상품 수정</a></li>
                <li><a href="#">주문 관리</a></li>
              </ul>
            </li>
          </ul>
          <a href="#" class="login">로그인</a>
          <!--TODO : 장바구니, 회원가입, 마이페이지, 로그아웃-->
        </div>
      </header>

      <!--contents-->
      <div class="fullPageWrap">
        <div id="fullpage">
          <!--section1-->
          <div class="section" id="section1">
            <ul class="visual">
              <li
                class="list"
                style="background-image: url(img/main_visual_01_01.jpg)"
              >
                <div class="textBox">
                  <p class="tit">멀티 헬스</p>
                  <p class="txt">blablablabla</p>
                  <p class="dot">멀티 헬스</p>
                </div>
              </li>
              <li
                class="list"
                style="background-image: url(img/main_visual_01_02.jpg)"
              >
                <div class="textBox">
                  <p class="tit"><span>마냥 막막하던</span>운동 루틴</p>
                  <p class="txt">멀티헬스를 통해 편하게 구성해보세요.</p>
                  <p class="dot">편하게 구성하는<br />나만의 루틴</p>
                </div>
              </li>
              <li
                class="list"
                style="background-image: url(img/main_visual_01_03.jpg)"
              >
                <div class="textBox">
                  <p class="tit"><span>전문적인</span>멀티헬스</p>
                  <p class="txt">
                    여러 전문가들의 데이터를 바탕으로 구성되었습니다.
                  </p>
                  <p class="dot">
                    전문적인<br />
                    멀티헬스
                  </p>
                </div>
              </li>
              <li
                class="list"
                style="background-image: url(img/main_visual_01_04.jpg)"
              >
                <div class="textBox">
                  <p class="tit"><span>엄격한</span>멀티헬스</p>
                  <p class="txt">검증된 상품들만 엄선하였습니다.</p>
                  <p class="dot">
                    엄격한<br />
                    멀티헬스
                  </p>
                </div>
                <!--TODO : 슬라이드 시간간격 증가-->
              </li>
            </ul>
          </div>

          <!--section2-->
          <div class="section" id="section2">
            <div class="inner">
              <p class="tit">막막하고 두려웠던 운동<br />멀티헬스와 함께.</p>
              <div class="countBox">
                <p class="count">123,456</p>
                <p class="txt">멀티헬스 누적 회원수</p>
              </div>
            </div>
          </div>

          <!--section3-->
          <div class="section" id="section3">
            <div class="inner">
              <div class="topBox">
                <p class="tit">운동,<span>모두가 전문가가 되는 날까지</span></p>
                <a href="#" class="btn">전체 상품 보기</a>
              </div>
              <div class="bottomBox">
                <ul>
                  <li>
                    <p class="img">
                      <img src="img/icon_01.png" alt="" />
                    </p>
                    <p class="data">
                      <span class="count2">5,000</span>
                    </p>
                    <p class="txt">총 상품수</p>
                  </li>
                  <li>
                    <p class="img">
                      <img src="img/icon_02.png" alt="" />
                    </p>
                    <p class="data"><span class="count2">5,000</span></p>
                    <p class="txt">주문 가구 수</p>
                  </li>
                  <li>
                    <p class="img">
                      <img src="img/icon_03.png" alt="" />
                    </p>
                    <p class="data">
                      <span class="count2">10</span><strong>억</strong>
                    </p>
                    <p class="txt">매출액 <span>( 2022년 기준)</span></p>
                  </li>
                </ul>
              </div>
            </div>
          </div>

          <!--section4-->
          <div class="section" id="section4">
            <div class="inner">
              <div class="topBox">
                <p class="txt">어렵고 막막했던</p>
                <p class="tit"><span>운동 루틴</span></p>
              </div>
              <ul class="bottomBox">
                <li class="right">
                  <a href="#">
                    <span class="img01"
                      ><img src="img/exercise.png" alt=""
                    /></span>
                  </a>
                  <p class="txt">멀티헬스 <strong>운동루틴 보기</strong></p>
                </li>
              </ul>
            </div>
          </div>

          <!--section6-->
          <div class="section" id="section5">
            <div class="inner">
              <div class="topBox">
                <p class="tit">멀티헬스 <span>HOT</span></p>
              </div>
              <div class="bottomBox">
                <ul class="snsList">
                  <li>
                    <a href="#"><img src="img/product_1.jpg" alt="" /></a>
                  </li>
                  <li>
                    <a href="#"><img src="img/product_1.jpg" alt="" /></a>
                  </li>
                  <li>
                    <a href="#"><img src="img/product_1.jpg" alt="" /></a>
                  </li>
                  <li>
                    <a href="#"><img src="img/product_1.jpg" alt="" /></a>
                  </li>
                  <li>
                    <a href="#"><img src="img/product_1.jpg" alt="" /></a>
                  </li>
                  <li>
                    <a href="#"><img src="img/product_1.jpg" alt="" /></a>
                  </li>
                  <li>
                    <a href="#"><img src="img/product_1.jpg" alt="" /></a>
                  </li>
                  <li>
                    <a href="#"><img src="img/product_1.jpg" alt="" /></a>
                  </li>
                </ul>
              </div>
            </div>
          </div>

          <!--footer-->
          <div class="section fp-auto-height">
            <div class="footer">
              <div class="topBox">
                <ul>
                  <li><a href="#">이용약관</a></li>
                  <li><a href="#">개인정보 취급관리</a></li>
                  <li><a href="#">고객의 소리</a></li>
                </ul>
              </div>
              <div class="bottomBox">
                <h2><img src="img/logo.png" alt="포메인" /></h2>
                <ul class="add">
                  <li>상호 : asdf | 주소 : asdf</li>
                  <li>대표 전화 : 1234-5678 | 사업자등록번호 : 123-456-789</li>
                  <li>ⓒ multihealth</li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <!--right Navbar-->
        <ul class="rightNav" id="rightNav">
          <li data-menuanchor="firstPage" class="active">
            <a href="#firstPage"><span>메인</span></a>
          </li>
          <li data-menuanchor="secondPage">
            <a href="#secondPage"><span>소개</span></a>
          </li>
          <li data-menuanchor="thirdPage">
            <a href="#thirdPage"><span>상품</span></a>
          </li>
          <li data-menuanchor="fourthPage">
            <a href="#fourthPage"><span>서비스</span></a>
          </li>
          <li data-menuanchor="fifthPage">
            <a href="#fifthPage"><span>HOT</span></a>
          </li>
        </ul>
      </div>
    </div>
</body>
</html>