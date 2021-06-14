<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Login</title>

<!--=======Font Open Sans======-->
<link href='https://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<!--=======Font Awesome======-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!--=======Custom Style======-->
<link rel="stylesheet" href="css/style.css">


<style>
* {
	box-sizing: border-box;
	padding: 0;
	margin: 0;
}

body {
	font-family: "HelveticaNeue-Light", "Helvetica Neue Light",
		"Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
	color: white;
	font-size: 12px;
	background: #333 url(/images/classy_fabric.png);
}

label {
	color: #666;
	display: block;
	padding-bottom: 9px;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 8px 5px;
	background: linear-gradient(#1f2124, #27292c);
	border: 1px solid #222;
	box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1);
	border-radius: 0.3em;
	margin-bottom: 20px;
}

label[for=remember] {
	color: white;
	display: inline-block;
	padding-bottom: 0;
	padding-top: 5px;
}

input[type=checkbox] {
	display: inline-block;
	vertical-align: top;
}

.p-container {
	padding: 0 20px 20px 20px;
}

.p-container:after {
	clear: both;
	display: table;
	content: "";
}

.p-container span {
	display: block;
	float: left;
	color: #0d93ff;
	padding-top: 8px;
}

input[type=submit] {
	padding: 5px 20px;
	border: 1px solid rgba(0, 0, 0, 0.4);
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.4);
	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.3), inset 0 10px 10px
		rgba(255, 255, 255, 0.1);
	border-radius: 0.3em;
	background: #0184ff;
	color: white;
	float: right;
	font-weight: bold;
	cursor: pointer;
	font-size: 13px;
}

input[type=submit]:hover {
	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.3), inset 0 -10px 10px
		rgba(255, 255, 255, 0.1);
}

input[type=text]:hover, input[type=password]:hover, label:hover ~ input[type=text],
	label:hover ~ input[type=password] {
	background: #27292c;
}

/* On small screens, set height to 'auto' for sidenav and grid */
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
</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">


				<ul class="nav navbar-nav navbar-right">

					<li><a href="main.jsp"> <span
							class="glyphicon glyphicon-home"></span> Home
					</a>
					<li><a href="login.jsp"> <span
							class="glyphicon glyphicon-log-in"></span> Login
					</a>
					<li><a href="join.jsp"> <span
							class="glyphicon glyphicon glyphicon-user"></span> Sign-up
					</a></li>

					</li>
				</ul>
	</nav>
	<div class="container">

		<div class="col-lg-4"></div>

		<div class="col-lg-4">

			<!-- 점보트론 -->

			<div class="jumbotron" style="padding-top: 20px;">

				<!-- 로그인 정보를 숨기면서 전송post -->

				<form method="post" action="joinAction.jsp">

					<h3 style="text-align: center; color:black;">Welcome!</h3>

					<div class="form-group">

						<input type="text" class="form-control" placeholder="ID"
							name="userID" maxlength="20">

					</div>

					<div class="form-group">

						<input type="password" class="form-control" placeholder="password"
							name="userPassword" maxlength="20">

					</div>

					<div class="form-group">

						<input type="text" class="form-control" placeholder="name"
							name="userName" maxlength="20">

					</div>

					<div class="form-group" style="text-align: center;">

						<div class="btn-group" data-toggle="buttons">

							<label class="btn btn-primary active"> <input
								type="radio" name="userGender" autocomplete="off" value="남자"
								checked>Men

							</label> <label class="btn btn-primary"> <input type="radio"
								name="userGender" autocomplete="off" value="여자">Women

							</label>

						</div>

					</div>

					<div class="form-group">

						<input type="text" class="form-control" placeholder="Email"
							name="userEmail" maxlength="50">

					</div>



					<input type="submit" class="btn btn-primary form-control"
						value="Join">





				</form>

			</div>

		</div>

	</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>