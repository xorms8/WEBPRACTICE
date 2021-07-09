<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String prjName = "/Jsp"; %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> start.jsp </title>
</head>
<body>

	<a href='simpleView.jsp'>기본방식1</a> <br/>
	<a href='<%=prjName%>/05_mvc_class/1_mvcSimple/simpleView.jsp'>
기본방식2</a> <br/>
	<hr/>
	<a href='<%=prjName%>/sc'> MVC 방식 </a><br/> <!--  파라미터 없는 경우 -->
	<a href='<%=prjName%>/sc?type=first'> MVC 방식 파라미터 있는 경우 </a><br/> <!--  파라미터 있는 경우 -->
	<a href='<%=prjName%>/kosmo.do?type=first'> MVC 방식.do </a><br/> <!-- 내가 원하는 URL을.do로 보여줄 수 있음 -->
	
</body>
</html>