<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet"href="style.css">
</head>
<body>
	<form action="LoginServlet" method="post">
		Enter username : <input type="text" name="username"><br>
		Enter password : <input type="password" name="password"><br>
		<input type="submit" value="signin">
	</form>

</body>
</html>