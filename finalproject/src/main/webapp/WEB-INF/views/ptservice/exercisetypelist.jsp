<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var setCookie = function(name, value, exp) {
		var date = new Date();
		date.setTime(date.getTime() + exp*24*60*60*1000);
		document.cookie = name + '=' + value + ';expires=' + date.toUTCString() + ';path=/';
	};
	var deleteCookie = function(name) {
		document.cookie = name + '=; expires=Thu, 01 Jan 1999 00:00:10 GMT;';
	};
	var pick_pt = "";
	var pick_num = 0;
	$(".num").on("change keyup paste", function() {//선택운동목록전송
		pick_pt = $(this).attr("name");
		pick_num = $(this).val();
	});
	$(".click").on('click', function(){
		if(pick_num != 0){
		pick_pt = $(this).attr("id");
		setCookie(pick_pt,pick_num, 1);
		alert(pick_pt+"이"+pick_num+"개 운동목록으로 등록되었습니다.");
		}else{
			alert("운동목록의 수량을 입력하세요.");
		}
	});
	$(".delect").on('click', function(){
		var delect_pt = $(this).attr("id");
		delect_pt = (delect_pt.split("-"))[1];
		alert(delect_pt+"이 운동목록으로 삭제되었습니다.");
		deleteCookie(delect_pt);
	});
	
});
</script>
<div id="pick_et"></div>
<c:forEach items="${exercisetypelist}" var="dto" >
	<p><img src="images/${dto.et_img1}.jpg"  width="300">
	운동이름 : ${dto.et_name}, 운동레벨 : ${dto.et_lv}운동시간:${dto.et_time}
	<input type="number" class="num" value ="0" name="n-${dto.et_ename}" min="0" max="100">
	<a class="click" id="${dto.et_ename}">click</a>
	<a class="delect" id="a-${dto.et_ename}">delect</a>
	</p><br>
</c:forEach>
<a href="http://localhost:8081/exercisepick">루틴등록하러가기</a>
</body>
</html>