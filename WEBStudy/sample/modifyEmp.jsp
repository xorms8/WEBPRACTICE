<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="sample.*"%>
<% 	//사번 뿐안 아니라 사원명/월급/직업
	request.setCharacterEncoding("UTF-8"); //한글
	//1. 이전 화면에서 사옹자 입력값을 얻어오기
	String eno = request.getParameter("eno");
	String ename = request.getParameter("ename");
	String job = request.getParameter("job");
	String manager = request.getParameter("manager");
	String hiredate = request.getParameter("hiredate");
	String salary = request.getParameter("salary");
	String commission = request.getParameter("commission");
	String dno = request.getParameter("dno");

	//2. 입력값을 VO객체에 변수로 지정
	EmpVO vo = new EmpVO();
	vo.setEno(Integer.parseInt(eno)); //위에 String으로 선언해서 seteno가 오류가 나지만 Integer.parseInt로 형변환
	vo.setEname(ename);
	vo.setJob(job);
	vo.setManager(Integer.parseInt(manager));
	vo.setHiredate(hiredate);
	vo.setSalary(Integer.parseInt(salary)); 
	vo.setCommission(Integer.parseInt(commission)); 
	vo.setDno(Integer.parseInt(dno)); 
	
	
	//3. DAO insert함수를 호출
	EmpDAO dao = EmpDAO.getInstance();
	dao.modifyEmp(vo);
	
	response.sendRedirect("viewEmp.jsp?eno=" + eno); //서버에서 클라이언트로 이 jsp 파일을 뿌려줄거임(클라이언트(사용자)가 볼 화면)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifyEmp</title>
</head>
<body>입력되었습니다.
</body>
</html>