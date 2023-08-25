<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login page</title>
<link rel= "stylesheet" type = "text/css"  href = "style.css">
</head>
<body style="background-color:ivory">
<h2 style="background-color:orange">Login Here</h2><br><br>
<div class = "login">
	<form action = "log" method = "post" id = "f" style="background-color:blue;border-radius:6px;">
		<label class = "lab" style = "colr:red"><b>User Name:</b></label><br>
		<input type = "text" name = "uname" id = "textBox" placeholder = "username" required = "required" style="background-color:white">
		<br><br>
		<label class = "lab"><b>Password:</b></label><br>
		<input type = "password" name = "pass" id = "textBox" placeholder = "password" required = "required" style="background-color:white">
		<br><Br>
		<input type = "submit" value = "LOGIN" id = "sub" style="background-color:white;color:red;border-radius:4px"><br><br>
		<a href = "register.jsp" style = "color :white">New user? Register here</a>
	</form>
</div>

</body>
</html>