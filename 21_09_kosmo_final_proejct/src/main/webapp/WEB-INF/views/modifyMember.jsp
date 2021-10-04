<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>CMIS MY PAGE</title>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


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

#myPageAtag {
	color: black;
	font-size: 150%;
	display: flex;
}

#navList {
	margin-bottom: 10px;
	background-color: #050d15;
}
</style>


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

				<div class="container" style="margin-top: 30px">
					<div class="row">
						<div class="col-sm-4">
							<h3 style="text-align: center">Menu</h3>
							<ul class="nav nav-pills flex-column">
								<li class="nav-item"><a class="nav-link active"
									id="navList" href="modifyMember.do">회원정보수정</a></li>
								<li class="nav-item"><a class="nav-link active"
									id="navList" href="showBoard.do">등록글 조회</a></li>
								<li class="nav-item"><a class="nav-link active"
									id="navList" href="showReply.do">등록댓글보기</a></li>
								<li class="nav-item"><a class="nav-link active"
									id="navList" href="wishList.do">관심 물품</a></li>
							</ul>
							<hr class="d-sm-none">
						</div>
						<div class="col-sm-8">
							<h2>회원이신 고객님의 개인정보를 관리하는 공간입니다.</h2>
							
							<hr style="height: 5px;">

							<form onsubmit="return validate();" action="updateMember.do" method="post" name="updateMember">
								<table class="table table-borderless">
									<tbody>
										<tr> <!-- loginSns 값이 test일 때 ID,PASSWORD 값 표시 / google 로그인일 경우 표시 X -->
										<c:choose> 
										<c:when test="${sessionScope.loginSns eq 'test'}">
										
											<th scope="row">아이디</th>
											<td>
											<input type="text" id="user_id" name="user_id" placeholder="아이디"
												onfocus="this.placeholder = ''"
												onblur="this.placeholder = '아이디'" required
												class="single-input" value="${member.user_id }" readonly>
												<hr></td>
										</c:when>
										</c:choose>
										</tr>
										
										<tr>
										<c:choose>
										<c:when test="${sessionScope.loginSns eq 'test'}">
											<th scope="row">비밀번호</th>
											<td><input type="password" id="member_pw" name="member_pw" placeholder="비밀번호"
										onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호'" required
										class="single-input" >
										<div class="valid">비밀번호를 입력하세요<br/> (영문 대소문자, 숫자만 입력 가능)</div>
										<hr></td>
										</c:when>
										</c:choose>
										</tr>
										<tr>
										<c:choose>
										<c:when test="${sessionScope.loginSns eq 'test'}">
											<th scope="row">비밀번호 확인</th>
											
											<td colspan="2"><input type="password" id="member_pw1" name="member_pw2" placeholder="비밀번호 확인"
										onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호 확인'" required
										class="single-input" >
										<hr></td>
										</c:when>
										</c:choose>
										</tr>
										<tr>
											<th scope="row">이름</th>
											
											<td colspan="2"><input type="text" name="member_name" required
										class="single-input" value="${member.member_name }">
										
										<hr>
										</td>
										</tr>
										
										<tr>
											<th scope="row">나이</th>
											<td>
											<input type="text" name="member_age"
												class="single-input" value="${member.member_age }">
												<hr></td>
												
										</tr>
										
										<tr>
											<th scope="row">휴대폰</th>
											<td><input type="text" id="member_phone" name="member_phone"
										class="single-input" value="${member.member_phone }" >
										<hr></td>
										</tr>
										<tr>
											<th scope="row">주소</th>
											<td colspan="2">
											<div class="col-sm-2" style="padding-left: 0px;">
						<input type="text" class="form-control" id="sample2_postcode" placeholder="우편번호" style="width:100px; height:30px"> 
						<input type="button" class="btn btn-info"onclick="sample2_execDaumPostcode()" value="우편번호 찾기"
						style="margin-top:10px; padding:20px; background-color:black"><br>
					</div>
											
										<input type="text" name="member_address" id="sample2_address" class="single-input" value="${member.member_address}">
										
										<hr>
										</td>
										</tr>
										
									</tbody>
								</table>
								<input type="submit" class="btn" style="float:right; margin-bottom:10px" value="회원정보수정하기">
							</form>
<!-- S 주소 API -->

<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    // 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
    }

    function sample2_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample2_address").value = extraAddr;
                
                } else {
                    document.getElementById("sample2_address").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample2_postcode').value = data.zonecode;
                document.getElementById("sample2_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample2_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);

        // iframe을 넣은 element를 보이게 한다.
        element_layer.style.display = 'block';

        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
        initLayerPosition();
    }

    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
    function initLayerPosition(){
        var width = 300; //우편번호서비스가 들어갈 element의 width
        var height = 400; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
</script>
				
				
				
				
				<!-- E 주소 API -->
							<script type="text/javascript">

		function validate() {
			var idPassExp = /^[a-zA-Z0-9]{5,12}$/; // 아이디,비밀번호 유효성 검사식
			var nameExp = /^[가-힣|a-z|A-Z]{3,20}$/; // 이름 유효성 검사식
			var phoneExp = /^[0-9]{11,11}$/g; // 휴대폰 유효성 검사식
			
			var name = document.getElementById("member_name");
	        var id = document.getElementById("user_id");
	        var pw = document.getElementById("member_pw").value;
	        var pw2 = document.getElementById("member_pw1").value;
	        var phone = document.getElementById("member_phone");
	        
	 
	        // 비밀번호 유효성 검사
	        if (!check(idPassExp, pw, "패스워드는 5~12자의 영문 대소문자와 숫자로만 입력해주세요")) {
	            return false;
	        }
	 		
	        // 비밀번호 확인 유효성 검사
	        if (pw != pw2) {
	            alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
	            pw.focus();
	            return false;
	        } 
	 
	     	// 휴대폰 유효성 검사
	        if(phoneExp.test(phone.value) == false){
	         alert("휴대폰번호 11자리만 입력해주세요");
	         return false;
	        } 
		}
		
		function check(test1, what, message) {
	        if (test1.test(what.value)) {
	            return true;
	        }
	        alert(message);
	        what.focus();
	    }
</script>
							

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