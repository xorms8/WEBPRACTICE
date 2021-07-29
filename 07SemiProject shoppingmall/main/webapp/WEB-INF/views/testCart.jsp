<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section id="content">
 
 <ul>
  <c:forEach items="${cartList}" var="cartList">
  <li>
   <div class="thumb">
    <img src="${cartList.pFNAME}" />
   </div>
   <div class="gdsInfo">
    <p>
     <span>상품명 : </span>${cartList.pNAME}<br />
     <span>개당 가격 : </span><fmt:formatNumber pattern="###,###,###" value="${cartList.pPRICE}" /><br />
     <span>구입 수량 : </span>${cartList.cartSTOCK}<br />
     <span>최종 가격 : </span><fmt:formatNumber pattern="###,###,###" value="${cartList.pPRICE * cartList.cartSTOCK}" />
    </p>    
   </div>
   
   
  </li>
  </c:forEach>
 </ul>
</section>
</body>
</html>