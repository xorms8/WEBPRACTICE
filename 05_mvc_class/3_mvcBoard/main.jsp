<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String projectName = "/Jsp"; %>    


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 메인</title>
</head>
<body>
	<h1>게시판으로 들어가는 메인 페이지 입니다.</h1>
	<a href="<%= projectName %>/BoardControl?cmd=list-page">게시판 목록</a><br/><br/>
	<a href="<%= projectName %>/BoardControl?cmd=input-page">게시글 쓰기</a><br/><br/>
</body>
</html>