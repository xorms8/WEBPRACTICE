<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "sample.*" %> <!--EmpDAO.getInstance()함수 쓰기 위한 임포트 -->
<%
	//이전 화면에서 넘겨주는(파라메터) 값을 받기
	String eno = request.getParameter("eno");
	
	// DAO에 viewEmp() 호출
	EmpDAO dao = EmpDAO.getInstance();
	EmpVO vo = dao.viewEmp(eno);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- VIEW EMP.JSP 입니다 Ename을 클릭하면 그 Ename에 해당하는 사원의 모든 정보를 DAO viewEmp를 호출하여 화면에 출력 -->
<form>
		<table border='1'>
			<tr>
				<td>사번</td>
				<td><%= vo.getEno() %></td>
			</tr>
			<tr>
				<td>사원명</td>
				<td><%= vo.getEname() %></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><%= vo.getJob() %></td>
			</tr>
			<tr>
				<td>업무</td>
				<td><%= vo.getManager() %></td>
			</tr>
			<tr>
				<td>입사일</td>
				<td><%= vo.getHiredate() %></td>
			</tr>
			<tr>
				<td>연봉</td>
				<td><%= vo.getSalary() %></td>
			</tr>
			<tr>
				<td>커미션</td>
				<td> <%= vo.getCommission() %></td>
			</tr>
			<tr>
				<td>부서</td>
				<td><%= vo.getDno() %></td>
			</tr>
			<tr>
				<td colspan="3" align="center">
				<input type="submit" class="button" value="확인">
				
				<a href ='deleteEmp.jsp?eno=<%= vo.getEno() %>'>
				<input type="button" class="delete" value="삭제"></a>
				
				<a href ='modifyFormEmp.jsp?eno=<%= vo.getEno() %>'>
				<input type="button" class="delete" value="수정"></a>
				<!-- 삭제할건데 뭘 삭제해? eno= -> 파라미터값 받아와서
				근데 어떤 파라미터? vo.getEno()값. 
				where 절과 delete 절 작성할때 where절이 없으면 한번 더 고민해보자 -->
				</td>
			</tr>
		</table>
	</form>


</body>
</html>