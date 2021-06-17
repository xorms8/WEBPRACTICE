<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Form 예제</h2>
	
	<%
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String hobby = request.getParameter("hobby");
		String gender = request.getParameter("gender");
		
		// ========================================================
				
		String selecthobby = "";
		if (hobby.equals("hobby1")) {
			selecthobby = "독서";
		} else if (hobby.equals("hobby2")) {
			selecthobby = "운동";
		} else if (hobby.equals("hobby3")) {
			selecthobby = "음악";
		} else {
			selecthobby = "기타";
		}
	%>
	
	<!--  출력 결과  -->

	<%=name%> 님의 정보는 다음과 같습니다.
	<p></p>
		<br>나이: <%=age%>
		<br>성별: <%=gender%>
		<br>취미: <%=selecthobby%>
		
</body>
</html>