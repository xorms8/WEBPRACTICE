<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<jsp:useBean id="jb" class="joinBean.joinBean"></jsp:useBean>
	<jsp:setProperty property="*" name="jb"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p> 아이디 : <jsp:getProperty property="id" name="jb"/>
	<p> 비밀번호 : <jsp:getProperty property="passwd" name="jb"/>
	<p> 이름 : <jsp:getProperty property="name" name="jb"/>
	<p> 연락처 : <jsp:getProperty property="phone1" name="jb"/>-
	<jsp:getProperty property ="phone2" name="jb"/>-
	<jsp:getProperty property ="phone2" name="jb"/>
	<p> 취미 : <jsp:getProperty property="hobby1" name="jb"/>
	<p> 가입인사 : <jsp:getProperty property="comment" name="jb"/>
	
</body>
</html>