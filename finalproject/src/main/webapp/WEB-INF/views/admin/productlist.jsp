<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		//jquery code
	});
</script>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<c:forEach items="${productlist }" var="dto">
	${dto.prod_num } /
<%-- 	<a href="/product?code=${dto.prod_num}" >${dto.prod_num }</a>  --%>
	${dto.category_num } / 
	${dto.prod_title } /
	${dto.prod_price } / 
	${dto.prod_inventory } / 
	${dto.prod_img_name } / 
	${dto.view_count } /
	${dto.prod_point } / 
	
</c:forEach>
</body>
</html>