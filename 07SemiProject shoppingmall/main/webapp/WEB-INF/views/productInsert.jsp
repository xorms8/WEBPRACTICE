<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>F2T Perfume Admin Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
body {
	font-family: '맑은 고딕', verdana;
	padding: 0;
	margin: 0;
}

ul {
	padding: 0;
	margin: 0;
	list-style: none;
	 
}

div#root {
	width: 90%;
	margin: 0 auto;
}

/* header#header {
	font-size: 60px;
	padding: 20px 0;
}

header#header h1 a {
	color: #000;
	font-weight: bold;
} */
nav#nav {
	padding: 10px;
	text-align: right;
}

nav#nav ul li {
	display: inline-block;
	margin-left: 10px;
}

   section#container {
	padding: 20px 0;
	border-top: 2px solid #eee;
	border-bottom: 2px solid #eee;
}

section#container::after {
	content: "";
	display: block;
	clear: both;
}

aside {
	float: left;
	width: 200px;
}

div#container_box {
	float: right;
	width: calc(100% - 200px - 20px);
}

aside ul li {
	text-align: center;
	margin-bottom: 10px;
}

footer#footer {
	background: #f9f9f9;
	padding: 20px;
}

footer#footer ul li {
	display: inline-block;
	margin-right: 10px;
}

aside ul li a {
	display: block;
	width: 100%;
	padding: 10px 0;
}

aside ul li a:hover {
	background: #eee;
}
</style>
</head>
<body>
	<div id="root">
		<!-- S: Index(Home).jsp 의 div 총괄 시작 -->
		<%-- <c:if test="${member != null }">
 <!-- 관리자/ 로그인 상태 이면서 verify 값이 9인 계정이 로그인 ! -->
 <!-- 이미 oracle DB에서 설정함 -->
 <c:if test="${member.verify == 9 }">
<li><a href="index2.do"><span class="ti-crown"></span></a></li>
</c:if>
                                
 <li><a href="logout.do"><span class="ti-shift-left"></span></a></li>
 </c:if> --%>
		<!-- S: 헤더 부분 시작 -->
		<header id="header">
			<div id="header_box">
				<jsp:include page="/WEB-INF/views/include/header.jsp" />
			</div>
		</header>
		<!-- E: 헤더 부분 끝 -->


		<!-- S: 본문 영역 시작 -->
		<section id="container">
			<h1 style="text-align: center;">F2T Perfume 관리자 페이지</h1>
			<h2 style="text-align: center;">상품 등록</h2>
			<div id="container_box">
				본문
				<aside>
					<ul>
						<li><a href="productInsert.do">상품 등록</a></li>
						<li><a href="#">상품 목록</a></li>
						<li><a href="#">상품 리뷰</a></li>
						<li><a href="#">유저 목록</a></li>
						<li><a href="#">판매 목록</a></li>
					</ul>
				</aside>
				<!-- S :상품 등록 폼  -->
				<div class="InputArea" id="productInsertForm">
					<form method="post" action="productSave.do"
						enctype="multipart/form-data">
						<table border="1">
							<tr>
								<td>상품 이름</td>
								<td><input type="text" id="pNAME" name="pNAME"></td>
							</tr>
							<tr>
								<td>상품 가격</td>
								<td><input type="text" id="pPRICE" name="pPRICE"></td>
							</tr>
							<tr>
								<td>상품 재고</td>
								<td><input type="text" id="pSTOCK" name="pSTOCK"></td>
							</tr>
							<tr>
								<td bgcolor="orange" width="70">상품 사진</td>
								<td align="left"><input type="file" name='file'
									maxlength="60" size="40"></td>
							</tr>
							<tr>
								<td colspan="2" align="center"><input type="submit"
									class="btn btn-default" value="확인"> <input type="reset"
									class="btn btn-default" value="취소"></td>
							</tr>
						</table>
					</form>
					<!-- E :상품 등록 폼  -->
				</div>
		</section>
		<!-- E: 본문 영역 끝 -->


		<!-- S: 푸터 영역 시작 -->
		<footer id="footer">
			<div id="footer_box">
				<jsp:include page="/WEB-INF/views/include/footer.jsp" />
			</div>
		</footer>

	</div>
	<!-- E: Index(Home).jsp 의 div 총괄 끝  -->
</body>
</html>