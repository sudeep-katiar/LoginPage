<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");

		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.jsp");
		}
	%>

	<form action="Register" method="post">
		Enter First Name : <input type="text" name="first_name"><br>
		Enter Middle Name : <input type="text" name="middle_name"><br>
		Enter Last Name : <input type="text" name="last_name"><br>
		Enter Email Id : <input type="text" name="email_id"><br>
		Enter Hired City : <select name="city">
			<option value="city1">Enter City</option>
			<option value="Bengaluru">Bengaluru</option>
			<option value="Hyderabad">Hyderabad</option>
			<option value="Chennai">Chennai</option>
			<option value="Mumbai">Mumbai</option>
			<option value="Kolkata">Kolkata</option>
			<option value="New Delhi">New Delhi</option>
			<option value="Pune">Pune</option>
		</select><br> Enter Hired Date : <input type="date" name="hired_date"><br>
		Enter Phone Number : <select><option value>+91</option></select><input
			type="text" name="phone_number"><br> Enter Permanent
		Pincode : <input type="text" name="pincode"><br> <input
			type="submit" value="Register">
	</form>
	<form action="LogoutServlet" method="post">
		<input type="submit" value="Logout">
	</form>

</body>
</html>