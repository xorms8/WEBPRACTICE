<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="studentBean" class="sungjuk.StudentBean"></jsp:useBean>
<jsp:setProperty property="*" name="studentBean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		
		<table border="1">
            <tr>
                <td>번호</td>
                <td><jsp:getProperty property="number" name="studentBean"/></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><jsp:getProperty property="name" name="studentBean"/></td>
            </tr>
            <tr>
                <td>국어</td>
                 <td><jsp:getProperty property="kor" name="studentBean"/></td>
            </tr>
            <tr>
            	<td>영어</td>
                 <td><jsp:getProperty property="eng" name="studentBean"/></td>
            </tr>
            <tr>
                <td>수학</td>
                <td><jsp:getProperty property="math" name="studentBean"/></td>
            </tr>
            <tr>
                <td>합계</td>
                <td><jsp:getProperty property="sum" name="studentBean"/></td>
            </tr>
            <tr>
                <td>평균</td>
                <td><jsp:getProperty property="avg" name="studentBean"/></td>
            </tr>
            <tr>
                <td>학점</td>
                <td><jsp:getProperty property="grade" name="studentBean"/></td>
            </tr>
            
          
            
        </table>
</body>
</html>