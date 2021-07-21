<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Main Index page F2T -->

<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>

</head>
<body>
<div id = "root"> <!-- S: Index(Home).jsp 의 div 총괄 시작 -->
	<!-- S: 헤더 부분 시작 -->
   <header id= "header">
      <div id = "header_box">
         <jsp:include page="/WEB-INF/views/include/header.jsp"/>
      </div>
   </header>
   <!-- E: 헤더 부분 끝 -->
   
   
   <!-- S: 본문 영역 시작 -->
   
   <section id = "container">
      <div id = "container_box">
     
     <!-- Start Login Register Area -->
        <div class="htc__login__register bg__white ptb--130" >
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <ul class="login__register__menu" role="tablist">
                            <li role="presentation" class="login active"><a href="#" role="tab" data-toggle="tab">회원가입</a></li>
                          
                        </ul>
                    </div>
                </div>
                <!-- Start Login Register Content -->
                <!-- 로그인폼 -->
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="htc__login__register__wrap">
                            <!-- Start Single Content -->
                            <!--  회원가입폼 -->
                            <div id="register" role="tabpanel" class="single__tabs__panel tab-pane fade in active">
                                <form class="login" method="get" action="confirm.do" name="register" id="register">
                                    <input type="text" name="mNAME" id="mNAME" placeholder="이름">
                                    <input type="text" name="mID" id="mID" placeholder="아이디">
                                    <input type="email" name="mEMAIL" id="mEMAIL" placeholder="이메일">
                                    <input type="text" name="mPHONE" id="mPHONE" placeholder="휴대전화 번호">
                                    <input type="password" name="mPW" id="mPW" placeholder="비밀번호">
                                    <input type="password" name="mPW2" id="mPW2" placeholder="비밀번호 확인">
                                <div class="registerBtn">
                                    <input type="submit" name="comfirm" id="comfirm" value="회원가입"/>
                                  </div>
                                </form>
                                <div class="htc__social__connect">
                                    <h2>Or Login With</h2>
                                    <ul class="htc__soaial__list">
                                        <li><a class="bg--twitter" href="#"><i class="zmdi zmdi-twitter"></i></a></li>
                                        <li><a class="bg--instagram" href="#"><i class="zmdi zmdi-instagram"></i></a></li>
                                        <li><a class="bg--facebook" href="#"><i class="zmdi zmdi-facebook"></i></a></li>
                                        <li><a class="bg--googleplus" href="#"><i class="zmdi zmdi-google-plus"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Content -->
                        </div>
                    </div>
                </div>
                <!-- End Login Register Content -->
            </div>
        </div>
        <!-- End Login Register Area -->
 	</div>
 	</section>
   <!-- E: 본문 영역 끝 -->
   
   
   <!-- S: 푸터 영역 시작 -->
   <footer id = "footer">
      <div id = "footer_box">
         <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
      </div>
   </footer>
</div> <!-- E: Index(Home).jsp 의 div 총괄 끝  -->
</body>
</html>