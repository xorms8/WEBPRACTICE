<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Form 출력 예제</h2>
	
	<form method="get" action="form_ex_process.jsp">

		<dl>
			<dd>
				<label for="name">이름 </label> 
				<input type="text" id="name" name="name"> 
				
				<br>
				
				<label for="age">나이 </label> 
				<input type="text" id="age" name="age">
			</dd>
			<dd>
				<label for="gender">성별</label> 
				<input type='radio' name='gender' value='남자' />남성
				<input type='radio' name='gender' value='여자' />여성
				
				<br>
				
				<label for="hobby">취미</label> <select id="hobby" name="hobby"
					required>
					<option value="hobby1" selected>독서</option>
					<option value="hobby2" selected>운동</option>
					<option value="hobby3" selected>공부</option>
					<option value="hobby4" selected>기타</option>
				</select>
			</dd>

			<dd>
				<input type="submit" value="확인">
			</dd>
		</dl>

	</form>

</body>
</html>