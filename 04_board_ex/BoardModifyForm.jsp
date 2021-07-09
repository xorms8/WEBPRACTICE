<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board_ex.service.*, board_ex.model.*" %>
<%
	// 1. 수정할 레코드의 게시글번호를 넘거받기
	int seq = Integer.parseInt(request.getParameter("seq"));
	// 서비스의 함수를 호출하여 해당 BoardVO를 넘겨받는다.
		BoardDao dao = BoardDao.getInstance();
		BoardVO rec = dao.selectById(seq);
	// 2. Service에 getArticleById()함수를 호출하여 그 게시글번호의 레코드를 검색
		ViewArticleService service = ViewArticleService.getInstance();
		
%>   
    
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 수정하기</title>
</head>
 <body>
	<h4> 게시판 글 수정하기 </h4><br/>
	<form name='frm' method='get' action="BoardModify.jsp">
	<input type="hidden" name = "seq" value="<%=seq %>">
	제  목 : <input type='text' name= 'title' value="<%=rec.getTitle() %>"><br/><br/>
	패스워드(수정/삭제시 필요) :
			<input type='password' name='pass' value="<%=rec.getPass()%> %>"><br/><br/>
	내  용 : <textarea name='content' rows='10' cols='40'><%=rec.getContent()%></textarea><br/><br/>

	<input type='submit' value='수정하기'>
	<input type='button' value='목록보기' onclick="window.location='BoardList.jsp'">
	</form>

</body>
</html>