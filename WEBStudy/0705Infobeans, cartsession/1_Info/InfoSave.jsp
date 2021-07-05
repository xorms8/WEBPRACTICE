<%@ page contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@ page import="info.beans.*"%>
<%	
	/* //0) 한글처리
	//1) 사용자 입력값 얻어오기
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	
	
	//2) 1번의 입력값을 InfoBean 객체의 멤버로 지정
	InfoBean bean = new InfoBean();
	bean.setName(name);
	bean.setId(id); */
	
%>
<jsp:useBean id="bean" class="info.beans.InfoBean">
<jsp:setProperty name="bean" property="*"/>

</jsp:useBean>
<!DOCTYPE html>
<html>
<body>
	<h2>  당신의 신상명세서 확인 </h2>
	이   름  : <%=bean.getName() %> <br/> <!-- getter는 밑에처럼 태그 안쓰고 이렇게 쓰자 !  -->
	주민번호 :<jsp:getProperty property="id" name="bean"/><br/>
	성  별   : <jsp:getProperty property="gender" name="bean"/><br/>  
	맞습니까????
</body>
</html>