<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>picker</title>

</head>
<body>
	<!-- Parameter version (out 내장 객체 활용) -->
<!--  폼 태그는 name으로 넘겨라 제발.. 태근아 -->

		<form action = "pickerParameterPro.jsp">
		<table border="1">
		<h2> pricker exam </h2>
		<tr>
            <td>date</td>
            <td><input type="date" name="datepicker"></td>
        </tr>
        <tr>
            <td>datetime-local</td>
            <td><input type="datetime-local" name="datepicker2"></td>
        </tr>
        <tr>
            <td>month</td>
            <td><input type="month" name="datepicker3"></td>
        </tr>
        <tr>
            <td>time</td>
            <td><input type="time" name="datepicker4"></td>
        </tr>
        <tr>
            <td>week</td>
            <td><input type="week" name="datepicker5"></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="확인"><input type="reset" value="취소"></td>
        </tr>
		</table>
		</form>
</body>
</html>