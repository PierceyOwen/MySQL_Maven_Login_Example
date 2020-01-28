<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<html>

<head>
<meta charset="UTF-8">

<title>Login</title>

<style>
@import url(http://fonts.googleapis.com/css?family=Exo:100,200,400);

@import
	url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300)
	;

body {
	background-color: #1f2228;
	background-size: cover;
	-webkit-filter: blur(0px);
}

.header {
}

.center {
	margin: auto;
}

.header div {
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 40px;
	font-weight: 200;
	margin-top: 150px;
}

.header div span {
	color: #ff0000;
	margin-top: 33%;
}

.top {
	margin-top: calc(25%);
	width: 100%;
}

.left {
	margin-left: calc(20%);
	height: 50%;
}

input[type=text] {
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255, 255, 255, 0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

input[type=password] {
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255, 255, 255, 0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
	margin-bottom: 15px;
}

input[type=submit] {
	width: 252px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #ff0000;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
}
</style>
</head>

<body>
		
		<div class="header" align="center">
			<div>guard<span>Mate</span></div>
		</div>

		<div class="Log" align="center">
			<form action="Log">
				<input type="text" placeholder="Username" name="uname"><br>
				<input type="password" placeholder="Password" name="pass"><br>
				<input type="submit" value="Login"><br>
			</form>
		</div>

</body>

</html>
