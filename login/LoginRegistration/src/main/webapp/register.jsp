


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

	<form action="Register">
		Enter First Name : <input type="text" name="first name"><br>
		Enter Middle Name : <input type="text" name="middle name"><br>
		Enter Last Name : <input type="text" name="last name"><br>
		Enter Email Id : <input type="text" name="email id"><br>
		Enter Hired City : <select>
			<option value>Enter City</option>
			<option value>Bengaluru</option>
			<option value>Hyderabad</option>
			<option value>Chennai</option>
			<option value>Mumbai</option>
			<option value>Kolkata</option>
			<option value>New Delhi</option>
			<option value>Pune</option></select><br> 
		Enter Hired Date : <input type="date" name="hired date"><br>
		Enter Phone Number : <select><option value>+91</option></select><input type="text" name="phone number"><br>
		Enter Permanent Pincode : <input type="text" name="pincode"><br>
		Enter Hired City : <select><option value>
		Enter City</option>
			<option value>Bengaluru</option>
			<option value>Hyderabad</option>
			<option value>Mumbai</option></select><br>
			<input type="submit" value="Register">
	</form>
	<form action="Logout1">
		<input type="submit" value="Logout">
	</form>

</body>
</html>