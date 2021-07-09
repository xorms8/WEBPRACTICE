<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<%
	//***********************중요 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	//이전 화면에서 넘겨받는 파라메터
	String str = request.getParameter("type");
	
	//request 객체 저장한 것을 얻어 올 때 -SimpleControl.java에서ㅇㅇ
	Object obj = request.getAttribute("param");
%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 메인이라네 </title>
</head>
<body>
		<%= str %> <br/>
		<%= obj %> <br/>
		복잡하다고 지나친 좌절과 놀람은 금물입니다. <br/><br/>
		<img src="05_mvc_class/1_mvcSimple/imgs/sponge_1.JPG"/><br/><br/> <!-- JSP 프로젝트 중심으로 (url을 보자) 시작 되었기 때문에 그 JSP 밑으로 경로 설정-->
		
		<!--  이미지를 절대 경로로 변경하면 ? -->
		절대경로 <br/>
		<img src="/Jsp/05_mvc_class/1_mvcSimple/imgs/sponge_1.JPG"/>
</body>
</html>