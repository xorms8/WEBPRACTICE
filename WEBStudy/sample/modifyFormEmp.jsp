<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import = "sample.*" %> <!--EmpDAO.getInstance()함수 쓰기 위한 임포트 -->
<%
	//이전 화면에서 넘겨주는(파라메터) 값을 받기
	String eno = request.getParameter("eno");
	
	
	
	// DAO에 modifyEmp() 호출
	EmpDAO dao = EmpDAO.getInstance();
	EmpVO vo = dao.viewEmp(eno);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원정보 수정화면</title> <!-- @@@@@@@@@@@@@@@@@@@@@ 수정 화면 이기 때문에 받아오고(입력) 그 입력값을 DB에 (업데이트)하고 Client에게(전송)(화면 출력)까지 -->
</head>
<body>
	<form method="post" action="modifyEmp.jsp">
		<table border='1'>
			<tr>
				<td>사번</td>
				<td><input type="text" id="eno" readonly name="eno" value="<%=vo.getEno()%>"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" id="ename" name="ename" value="<%=vo.getEname()%>"></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><input type="text" id="job" name="job" value="<%=vo.getJob()%>"></td>
			</tr>
			<tr>
				<td>업무</td>
				<td><input type="text" id="manager" name="manager" value="<%=vo.getManager()%>"></td>
			</tr>
			<tr>
				<td>입사일</td>
				<td><input type="text" id="hiredate" name="hiredate" value="<%=vo.getHiredate()%>"></td>
			</tr>
			<tr>
				<td>급여</td>
				<td><input type="text" id="salary" name="salary" value="<%=vo.getSalary()%>"></td>
			</tr>
			<tr>
				<td>커미션</td>
				<td><input type="text" id="commission" name="commission" value="<%=vo.getCommission()%>"></td>
			</tr>
			<tr>
				<td>부서</td>
				<td><input type="text" id="dno" name="dno" value="<%=vo.getDno()%>"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" class="button" value="수정">
				<input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>

</body>
</html>