<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <title>회원가입 페이지</title>
</head>


<body>
    <h1>회원 가입</h1>
    <hr>
	<form action="/user/signup" method="post">
        <input type="text" name="m_mail" placeholder="이메일을 입력해주세요"><br>
        <input type="password" name="m_pw" placeholder="비밀번호"><br>
        <input type="text" name="m_name" placeholder="이름"><br>
        <input type="hidden" name="isAccountNonExpired" value="true">
        <input type="hidden" name="isAccountNonLocked" value="true">
        <input type="hidden" name="isCredentialsNonExpired" value="true">
        <input type="hidden" name="isEnabled" value="true">
        <input type="text" name="m_hp" placeholder="전화번호"><br>
        <input type="text" name="m_add" placeholder="주소"><br>        
        <input type="hidden" name="m_date" value="2022-04-13 00:00:00"/><br>
        
        
        <button type="submit">가입하기</button>
    </form>
</body>
</html>