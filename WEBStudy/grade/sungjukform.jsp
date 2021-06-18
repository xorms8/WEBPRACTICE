
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="sungjukPro.jsp" method="post">

		<table border="1">
            <tr>
                <td>번호</td>
                <td><input type="text" name="number"></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>국어</td>
                 <td><input type="text" name="kor"></td>
            </tr>
            <tr>
            	<td>영어</td>
                 <td><input type="text" name="eng"></td>
            </tr>
            <tr>
                <td>수학</td>
                <td><input type="text" name="math" ></td>
            </tr>
           <tr>
                <td colspan="2" align="center"><input type="submit" value="성적확인"></td>
            </tr>
        </table>
        </form>
</body>
</html>