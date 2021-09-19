<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>테스트</title>



<style>
body {
	margin: 0;
	color: #6a6f8c;
	background: #c8c8c8;
	font: 600 16px/18px 'Open Sans', sans-serif;
}

*, :after, :before {
	box-sizing: border-box
}

.clearfix:after, .clearfix:before {
	content: '';
	display: table
}

.clearfix:after {
	clear: both;
	display: block
}

a {
	color: inherit;
	text-decoration: none
}

.login-wrap {
	width: 100%;
	margin: auto;
	max-width: 525px;
	min-height: 670px;
	position: relative;
	background:
		url(https://raw.githubusercontent.com/khadkamhn/day-01-login-form/master/img/bg.jpg)
		no-repeat center;
	box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0
		rgba(0, 0, 0, .19);
}

.login-html {
	width: 100%;
	height: 100%;
	position: absolute;
	padding: 90px 70px 50px 70px;
	background: rgba(40, 57, 101, .9);
}

.login-html .sign-in-htm, .login-html .sign-up-htm {
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	position: absolute;
	transform: rotateY(180deg);
	backface-visibility: hidden;
	transition: all .4s linear;
}

.login-html .sign-in, .login-html .sign-up, .login-form .group .check {
	display: none;
}

.login-html .tab, .login-form .group .label, .login-form .group .button
	{
	text-transform: uppercase;
}

.login-html .tab {
	font-size: 22px;
	margin-right: 15px;
	padding-bottom: 5px;
	margin: 0 15px 10px 0;
	display: inline-block;
	border-bottom: 2px solid transparent;
}

.login-html .sign-in:checked+.tab, .login-html .sign-up:checked+.tab {
	color: #fff;
	border-color: #1161ee;
}

.login-form {
	min-height: 345px;
	position: relative;
	perspective: 1000px;
	transform-style: preserve-3d;
}

.login-form .group {
	margin-bottom: 15px;
}

.login-form .group .label, .login-form .group .input, .login-form .group .button
	{
	width: 100%;
	color: #fff;
	display: block;
}

.login-form .group .input, .login-form .group .button {
	border: none;
	padding: 15px 20px;
	border-radius: 25px;
	background: rgba(255, 255, 255, .1);
}

.login-form .group input[data-type="password"] {
	text-security: circle;
	-webkit-text-security: circle;
}

.login-form .group .label {
	color: #aaa;
	font-size: 12px;
}

.login-form .group .button {
	background: #1161ee;
}

.login-form .group label .icon {
	width: 15px;
	height: 15px;
	border-radius: 2px;
	position: relative;
	display: inline-block;
	background: rgba(255, 255, 255, .1);
}

.login-form .group label .icon:before, .login-form .group label .icon:after
	{
	content: '';
	width: 10px;
	height: 2px;
	background: #fff;
	position: absolute;
	transition: all .2s ease-in-out 0s;
}

.login-form .group label .icon:before {
	left: 3px;
	width: 5px;
	bottom: 6px;
	transform: scale(0) rotate(0);
}

.login-form .group label .icon:after {
	top: 6px;
	right: 0;
	transform: scale(0) rotate(0);
}

.login-form .group .check:checked+label {
	color: #fff;
}

.login-form .group .check:checked+label .icon {
	background: #1161ee;
}

.login-form .group .check:checked+label .icon:before {
	transform: scale(1) rotate(45deg);
}

.login-form .group .check:checked+label .icon:after {
	transform: scale(1) rotate(-45deg);
}

.login-html .sign-in:checked+.tab+.sign-up+.tab+.login-form .sign-in-htm
	{
	transform: rotate(0);
}

.login-html .sign-up:checked+.tab+.login-form .sign-up-htm {
	transform: rotate(0);
}

.hr {
	height: 2px;
	margin: 60px 0 50px 0;
	background: rgba(255, 255, 255, .2);
}

.foot-lnk {
	text-align: center;
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

		<section id="container">
			<div id="container_box">
				<main>


					<!--? Hero Area Start-->
					<div class="slider-area hero-bg1 hero-overly">
						<div
							class="single-slider hero-overly  slider-height1 d-flex align-items-center">

							<!-- <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-10 col-lg-10">
                            
                        </div>
                    </div>
                </div> -->

							<div class="login-wrap">
								<div class="login-html">
									<input id="tab-1" type="radio" name="tab" class="sign-in"
										checked><label for="tab-1" class="tab">Sign In</label>
									<input id="tab-2" type="radio" name="tab" class="sign-up"><label
										for="tab-2" class="tab">Sign Up</label>
									<div class="login-form">
										<form action="login.do" method="post">
											<div class="sign-in-htm">
												<div class="group">
													<label for="user_id1" class="label">Userid</label> <input
														id="user_id1" name="user_id" type="text" class="input"
														required="required">
												</div>
												<div class="group">
													<label for="member_pw1" class="label">Password</label> <input
														id="member_pw1" name="member_pw" type="password"
														class="input" data-type="password" required="required">
												</div>
												<div class="group">
													<input id="check" type="checkbox" class="check" checked>
													<label for="check"><span class="icon"></span> Keep
														me Signed in</label>
													<!-- 로그인 정보 저장 또는 자동 로그인 기능. 추가해야함 -->
												</div>
												<div class="group">
													<input type="submit" class="button" value="Sign In">
												</div>
												<div class="hr"></div>
												<div class="foot-lnk">
													<a href="#forgot">Forgot Password?</a>
													<!-- 비밀번호 찾기 기능. 추가해야함 -->
												</div>
											</div>
										</form>
										<form action="signUpDo.do" method="post">
											<div class="sign-up-htm">
												<div class="group">
													<label for="member_name" class="label">Username</label> <input
														id="member_name" name="member_name" type="text"
														class="input" required="required">
												</div>
												<div class="group">
													<label for="user_id" class="label">Userid</label> <input
														id="user_id" name="user_id" type="text" class="input">
												</div>
												<div class="group">
													<label for="member_pw" class="label">Password</label> <input
														id="member_pw" name="member_pw" type="password"
														class="input" data-type="password" required="required">
												</div>
												<!-- <div class="group"> 비밀번호 동일 유효성 검사 - 나중에
          <label for="password2" class="label">Repeat Password</label>
          <input id="password2" type="password" class="input" data-type="password">
        </div> -->
												<div class="group">
													<label class="label">Gender</label>
													<div class="switch-wrap d-flex justify-content-between">
														<p style="color: white">여자</p>
														<div class="primary-radio">
															<input type="radio" id="member_sex1" name="member_sex"
																value="0" checked> <label for="member_sex1"></label>
														</div>
														<p style="color: white">남자</p>
														<div class="primary-radio">
															<input type="radio" id="member_sex2" name="member_sex"
																value="1"> <label for="member_sex2"></label>
														</div>
													</div>

												</div>
												<div class="group">
													<label for="member_age" class="label">Age</label> <input
														id="member_age" name="member_age" type="text"
														class="input">
												</div>
												<div class="group">
													<label for="member_address" class="label">Address</label> <input
														id="member_address" name="member_address" type="text"
														class="input">
												</div>
												<div class="group">
													<label for="member_phone" class="label">Userphone</label> <input
														id="member_phone" name="member_phone" type="text"
														class="input">
												</div>
												<div class="group">
													<input type="submit" class="button" value="Sign Up"
														style="cursor: pointer">
												</div>
										</form>
										<div class="hr"></div>
										<div class="foot-lnk">
											<label for="tab-1">Already Member?</a>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
			</div>
			<!--Hero Area End-->

			</main>
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