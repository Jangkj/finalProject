<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <title>메인</title>
</head>
<body>
	<h1>메인페이지</h1>
    <hr> 
    
    <sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="user" />
	</sec:authorize>
    <a class="nav-link" href="ptservice/insertptuser">PT</a>
	    <sec:authorize access="isAnonymous()"><a href="/user/loginPage">로그인</a></sec:authorize>
	    <sec:authorize access="isAuthenticated()"><a href="/user/logout">로그아웃</a></sec:authorize>
	    
	    
	    <sec:authorize access="isAnonymous()"><a href="/agreement">회원가입</a></sec:authorize>
	    	    
		<sec:authorize access="hasAuthority('USER')"><a href="/user/info">내정보</a></sec:authorize><br>
		
	    <sec:authorize access="hasAuthority('ADMIN')"><a href="/user/info">정보</a></sec:authorize><br>
	    
	    <sec:authorize access="hasAuthority('ADMIN')"><a href="/user/admin">admin</a></sec:authorize><br>
	    <%-- <sec:authorize access="hasAuthority('ADMIN') or hasAuthority('USER')"> --%>
	    
	    <a href="/user/agreement">이용약관</a>
</body>
</html>