<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Keria Real Perfume</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- 로고 이미지 logo free text site 활용-->
<!-- 전체 이미지 Unsplash site 활용-->
<style>
body, html {
	width: 100%;
}
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

h1 {
	font-family: Georgia, 'Times New Roman', Times, serif;
}

img {
	border: 1px solid rgb(223, 170, 214);
	border-radius: 4px;
	padding: 5px;
	width: 100%;
	/*이미지를 %로 해서 flex 사이즈에 딱맞게 함*/
	height: 100%;
	/*이미지를 %로 해서 flex 사이즈에 딱맞게 함*/
}

.navbar-brand {
	position: relative;
	background: url("images/keria.png");
	width: 80px;
	height: 50px;
	background-size: cover;
	background-position: center;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px;
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: white;
	height: 100%;
}

.carousel {
	width: 80%;
	margin-left: 11%;
}

.flex-container {
	display: flex;
	flex-wrap: nowrap;
	justify-content: center;
	font-style: italic;
}

.flex-container>div {
	background-color: rgb(245, 237, 237);
	width: 30%;
	margin: 20px 10px 10px;
	text-align: center;
	line-height: 30px;
	font-size: 15px;
	font-weight: bold;
	border-radius: 10px;
}

.flex-container>p {
	font-size: 120px;
}

.flex-container2 {
	display: flex;
	flex-wrap: nowrap;
	justify-content: center;
	font-style: italic;
}

.flex-container2>div {
	background-color: #f1f1f1;
	width: 30%;
	margin: 20px 10px;
	text-align: center;
	line-height: 20px;
	font-size: 15px;
	font-weight: bold;
	border-radius: 10px;
}

footer {
	background-color: #555;
	color: white;
	padding: 15px;
	text-align: center;
}

#fixed {
	position: fixed;
	bottom: 10%;
	right: 10px;
	width: 100px;
	padding: 5px;
	color: black;
}

@media screen and (max-width: 767px) {
	.sidenav {
		width: auto;
		height: 20%;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

#button {
	float: right;
}
</style>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

				<a class="navbar-brand" href="main.jsp"></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="main.jsp">Women</a></li>
					<li><a href="men.jsp">Men</a></li>
					<li><a href="brand.jsp">Brands</a></li>
					<li><a href="new.jsp">New</a></li>
				</ul>

				<%
					if (userID == null) {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="login.jsp"> <span
							class="glyphicon glyphicon-log-in"></span> Login
					</a>
					<li><a href="join.jsp"> <span
							class="glyphicon glyphicon glyphicon-user"></span> Sign-up
					</a></li>

					</li>
				</ul>

				<%
					} else {
				%>

				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropddown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expaned="false">Members<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="logoutAction.jsp">LOGOUT</a></li>
						</ul></li>
				</ul>
				<%
					}
				%>






				<form class="navbar-form navbar-left">
					<div class="form-group">
						<input type="text" class="form control" placeholder="What ? ">
					</div>
					<button type="submit" class="btn btn-default">search</button>
			</div>
		</div>

		</form>
	</nav>
	<!-- nav 끝 ---------------------------------------------------->






	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-1 sidenav">
				<p>
					<a href="#"> <span class="glyphicon glyphicon-shopping-cart"
						style="color: black;"></span>
					</a>
				</p>
				<p>
					<a href="#"> <span class="glyphicon glyphicon-bell"
						style="color: black;"></span>
					</a>
				</p>
				<p>
					<a href="#"> <span class="glyphicon glyphicon-earphone"
						style="color: black"></span>
					</a>
				</p>
			</div>
			<div class="col-sm-10 text-left">
				<h1 style="text-align: center;">Order</h1>

				<hr>
			</div>


			<div class="container">
				<div class="col-sm-6 text-left">
					<div class="left">
						<img src="images/w_flex1.jpg" alt="w_flex1">
					</div>
				</div>

				<div class="col-sm-6 text-left">
					<div class="right">
						<h2 class="text-center">Marbert man</h2>
						<h3 class="text-right" style="color: gray";>-10%</h3>
						<h2 class="text-right">
							<strong>108$</strong>
						</h2>
						<p>
							<br> <br> <br>
						</p>

						<ul class="list-group">
							<a href="#"><li class="list-group-item"
								style="text-align: center;">Buy</li></a>
							<a href="#"><li class="list-group-item"
								style="text-align: center;">Basket</li></a>
							<a href="#"><li class="list-group-item"
								style="text-align: center;">Steaming</li></a>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<hr>
	
	
	<div class="container">
			<div class="col-sm-6 text-left">
			<h4 class="text-center">next</h4>
			</div>
			</div>
	
	
	<div class="container">
		<h3 class="text-center">Contact</h3>
		<p class="text-center">
			<em>Can you send to me a message</em>
		</p>
		<div class="row test">
			<div class="col-md-4">
				<p>Why not boying?</p>
				<p>
					<span class="glyphicon glyphicon-map-marker"></span>Kosmo 4
				</p>
				<p>
					<span class="glyphicon glyphicon-phone"></span>Phone: +82
					01098765432
				</p>
				<p>
					<span class="glyphicon glyphicon-envelope"></span>Email:
					xorms8@naver.com
				</p>
			</div>
			<div class="col-md-8">
				<div class="row">
					<div class="col-sm-6 form-group">
						<input class="form-control" id="name" name="name"
							placeholder="Name" type="text" required="required">
					</div>
					<div class="col-sm-6 form-group">
						<input class="form-control" id="email" name="email"
							placeholder="Email" type="email" required="required">
					</div>
				</div>
				<textarea class="form-control" id="comments" name="comments"
					placeholder="Comment" rows="5"></textarea>
				<div class="row">
					<div class="col-md-12 form-group">
						<button type="submit" class="btn btn-default">SEND</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<div class="container">
			<br>
			<div class="footer">
				<p style="font-family: Verdana, Geneva, Tahoma, sans-serif;">
					<span>COMPANY : (주) Keria </span><span>OWNER : 임태근 </span><span>PRIVACY
						MANAGER : 임태근</span><br /> <span>ADDRESS : 서울 특별시 구로구 KOSMO 4층</span><br />
					<span>BUSINESS LICENSE : 1996 </span><span>MALL ORDER
						LICENSE : Well begun is half done.</span>
				<p>Copyright. (주)Keria-임태근 all rights reserved.</p>
				</p>
			</div>
		</div>
	</footer>
	<div id="fixed">
		<div style="cursor: pointer;" onclick="window.scrollTo(0,0);">
			<span class="glyphicon glyphicon-triangle-top"></span>
		</div>


		<!-- 야간모드 버튼 -->
</body>
</html>