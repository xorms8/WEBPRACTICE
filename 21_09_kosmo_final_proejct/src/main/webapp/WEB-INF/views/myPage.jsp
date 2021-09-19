<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>CMIS MY PAGE</title>
<style type="text/css">
@import
	url(https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,800)
	;

body {
	font-size: 16px;
	line-height: 22px;
	color: #555;
	font-family: 'Raleway', sans-serif;
	font-weight: 300;
	text-shadow: rgba(0, 0, 0, .01) 0 0 1px;
}

#myPageAtag{
	color : black; 
	font-size: 150%; 
	display:flex;
} 
</style>

<script type="text/javascript">
	$(function() {
		$('#section-feature .sf-wrap').hover(function() {
			$(this).addClass('hover');
		}, function() {
			$(this).removeClass('hover');
		}).click(function(event) {
			//if (event.target.nodeName != 'A') {
			$(this).toggleClass('active');
			//}
		});
	});
</script>
</head>
<body>
	<div id="root">
		<!-- S: Index(Home).jsp 의 div 총괄 시작 -->
		<!-- S: 헤더 부분 시작 -->
		<header id="header">
			<div id="header_box">
				<jsp:include page="/WEB-INF/views/include/header.jsp" />
			</div>
		</header>
		<!-- E: 헤더 부분 끝 -->


		<!-- S: 본문 영역 시작 -->
		<section id="section-feature" class="container">
			<div id="container">
				<h1 class="display-1" style="text-align: center;">마이페이지</h1>
				<h2 style="text-align: center;">${sessionScope.memberName}님
					안녕하세요</h2>
				<hr />

				<div class="row">
					<div class="col-sm-4">
						<aside>
						<a href="modifyMember.do" id="myPageAtag">회원 정보 수정</a><br>
						<a href="showBoard.do" id="myPageAtag">등록 글 보기</a><br>
						<a href="showReply.do" id="myPageAtag">등록 댓글 보기</a><br>
						<a href="wishList.do" id="myPageAtag">관심 물품</a>
						</aside>

					</div>

					<div class="col-sm-8">
					
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="resources/img/gallery/location2.png" alt="">
                            </div>
                            <div class="location-details">
                                <p>Paris</p>
                                <a href="#" class="location-btn">60 <i class="ti-plus"></i> Listing</a>
                            </div>
                        </div>
					</div>
				</div>
			</div>
		</section>
		<!-- E :본문 목록  -->


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