<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<body>
	<%
	
		String dateresult = request.getParameter("datepicker");
		String dateresult2 = request.getParameter("datepicker2");
		String dateresult3 = request.getParameter("datepicker3");
		String dateresult4 = request.getParameter("datepicker4");
		String dateresult5 = request.getParameter("datepicker5");
		
	%> 
	<!-- 출력  -->
	<table border="1">
		<tr>
            <td>date</td>
            <td><%=dateresult%></td>
        </tr>
        <tr>
            <td>datetime-local</td>
            <td><%=dateresult2%></td>
        </tr>
        <tr>
            <td>month</td>
            <td><%=dateresult3%></td>
        </tr>
        <tr>
            <td>time</td>
            <td><%=dateresult4%></td>
        </tr>
        <tr>
            <td>week</td>
            <td><%=dateresult5%></td>
        </tr>
		</table>

</body>
</html>