<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<link rel = "stylesheet" type = "text/css" href = "style.css">
</head>
<body style="background-color:wheat">
	<h2 style="background-color:orange">Register here</h2><br>
		<div class = "register" >
			<form action = "reg" method = "post" id = "f" style="background-color:blue; border-radius:8px">
				<label><b>User Name:</b></label><br>
				<input type = "text" name = "uname" id  = "textBox" placeholder = "user name" required = "required" style="background-color:white">
				<br><br>
				<label><b>Mail:</b></label><br>
				<input type = "text" name = "mail" id  = "textBox" placeholder = "abc@gmail.com" style="background-color:white">
				<br><br>
				<label><b>Password:</b></label><br>
				<input type = "password" name = "pass" id  = "textBox" placeholder = "password" style="background-color:white">
				<br><br>
				<label><b>Gender:</b></label><br>
				<input type = "radio" name = "gender" value = "male" id  = "textBox" style="background-color:white">Male
				<input type = "radio" name = "gender" value = "female" id  = "textBox" style="background-color:white">Female
				<input type = "radio" name = "gender" value = "others" id  = "textBox" style="background-color:white">Others
				<br><br>
				<label><b>Address:</b></label><br>
				<textarea rows = "5" cols = "35" id = "textBox" class="form1" name = "address" style="background-color:white"></textarea>
				<br>
				<br>
				<input type = "submit" id = "sub" value = "REGISTER" style="background-color:white;color:red; border-radius:4px; ">
				<br><br>
				<a href = "login.jsp" style="color:white">Already Registered ? Login </a>
			</form>
		</div>
	


</body>
</html>