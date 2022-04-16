<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>내정보</title>
</head>
<body>
    <h1>내정보 확인 페이지입니다.</h1>
    <hr>
    
    
    
    
    <sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="user" />
	</sec:authorize>
	
	
	
    <p>${user.m_num }</p>
    <p>${user.username }</p>
    <p>${user.password }</p>
    <p>${user.m_name }</p>    
    <p>${user.m_hp }</p>
	<p>${user.m_post }</p>
	<p>${user.m_add1 }</p>
	<p>${user.m_add2 }</p>
	<p>${user.m_date }</p>
			
    


</body>
</html>