<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="board_ex.model.*,board_ex.service.*" %>
 
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="rec" class="board_ex.model.BoardVO">
	<jsp:setProperty name="rec" property="*"/>
</jsp:useBean>

<%
	WriteArticleService.getInstance().write(rec); 
	//BoardSave.jsp에서 새로고침을 하게 되면 중복 입력되기에
	// 추후에 입력 후 BoardView.jsp?id=글번호 로 넘겨서 처리하고자
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판글저장</title>
</head>
<body>
<font size="3" color="#bb44cc">
		게시글을 남겼습니다.
	</font><br/><br/><br/>
	<a href="BoardList.jsp">리스트</a>

</body>
</html>