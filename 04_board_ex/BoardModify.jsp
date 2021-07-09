<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board_ex.model.*,board_ex.service.*" %>

<%
	// 0. 넘겨받는 데이타의 한글 처리
	request.setCharacterEncoding("UTF-8"); //한글
	
	// 현재 여기에 seq를 받아서 rec에 저장하는 코드가 없어 그런데 왼쪽 BoardDao에서는
	// WHERE절에 seq를 입력하라고 하니까 null값 또는 0값이 들어가겠지?
	// 만약 입력 안했다고 하면
	String seq = request.getParameter("seq");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String pass = request.getParameter("pass");
	
	//2. 입력값을 VO객체에 변수로 지정
	BoardVO rec = new BoardVO();
	
	rec.setSeq(Integer.parseInt(seq)); 
	rec.setTitle(title); 
	rec.setContent(content);
	rec.setPass(pass);
	
	// 2. Service에 update() 호출하여 레코드 수정
	int result = 0;
 	result = BoardDao.getInstance().update(rec);
%>

<!-- 1. 이전 화면의 입력값을 넘겨받아 BoardRec 객체의 각 멤버변수로 지정 -->	

<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판글수정</title>
</head>
<body>
seq:<%=rec.getSeq() %><br>
pass:<%=rec.getPass() %>
<%  
if( result == 0 ) { %>
암호가 잘못 입력되었습니다
<% } else { %>
게시글 이동
<% } 
// 게시글 수정이 성공적으로 되었다면 그 해당 게시글을 보여주는 페이지로 이동하고
// 그렇지 않다면, "암호가 잘못 입력되었습니다"를 출력



	
%>
게시글 수정 완료
</body>
</html>