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
	<p>${dto.m_mail }</p>
	<div class="label">아이디</div>
	<input name="m_mail" value="${m_mail }" class="infobox" readonly />
			
    


</body>
</html>