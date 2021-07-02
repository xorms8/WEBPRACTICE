<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 등록화면</title>
</head>
<body>
	<form method="post" action="saveEmp.jsp">
		<table border='1'>
			<tr>
				<td>사번</td>
				<td><input type="text" id="eno" name="eno"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" id="ename" name="ename"></td>
			</tr>
			<tr>
				<td>월급</td>
				<td><input type="text" id="salary" name="salary"></td>
			</tr>
			<tr>
				<td>업무</td>
				<td><input type="text" id="job" name="job"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" class="button" value="확인">
				<input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>

</body>
</html>