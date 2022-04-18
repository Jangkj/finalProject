<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

	
});
</script>
<form action="exercisepick" method="post" >
<div id="ptcart">${pick}</div>
<c:if test="${pick eq '선택한 운동목록이 여기에 표시됩니다.'}">
루틴 이름:<input type="text" name="pr_info">
</c:if>
<c:forEach items="${exercisepick}" var="dto" varStatus="status">
	<p>
	<img src="images/${dto.et_img1}.jpg"  width="300">
	<input type="hidden"name="et_ename" value="${dto.et_ename}">운동이름 : ${dto.et_name},
	  운동레벨 : ${dto.et_lv}, 운동시간:${dto.et_time}
	<input type="hidden"name="pr_count" value="${pick_num[status.index]}">
	<span>${pick_num[status.index]} 개</span>
	</p>
	<br>
</c:forEach>
<c:if test="${pick eq '선택한 운동목록이 여기에 표시됩니다.'}">
<input type="submit" value="루틴등록"><br>
</c:if>
</form>
</body>
</html>