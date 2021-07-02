<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "sample.*" %>

<%	
	//1. 삭제할 사번을 넘겨받기
	String eno = request.getParameter("eno");

	//2. DAO의 delete() 호출시 사번을 넘겨주기
	EmpDAO dao = EmpDAO.getInstance(); 
	int result = dao.deleteEmp(eno); //삭제한 값들을 int result에 저장 !
	
	if(result > 0){
		//result 값이 0보다 크다는 얘기는 뭔가 삭제했다는 뜻
		
		//화면을 바꿔야함, 삭제를 하면 목록보기 jsp 페이지로 갈 수 있게끔
		response.sendRedirect("selectEmp.jsp"); 
		//서버에서 클라이언트로 이 jsp 파일을 뿌려줄거임(클라이언트(사용자)가 볼 화면) ->response! 
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원삭제 화면</title>
</head>
<body>
DELETE CLEAR!
</body>
</html>