<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String job = request.getParameter("occupation");
	String[] hobby = request.getParameterValues("hobby");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_sample Process </title>
</head>
<body>
이름:<%=name%><br>
성별:<%=gender%><br>
직업:<%=job %><br>
취미 :<% 
    for(int i = 0 ; hobby != null && i < hobby.length ; i++){
        out.println(hobby[i]+"<br/>");
    }%>
</body>
</html>