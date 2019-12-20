<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
<h2>Database</h2>
</head>
<body>
	<%
		try {
			/* Create string of connection url within specified format with machine
			name, port number and database name. Here machine name id localhost and 
			database name is student. */
			String connectionURL = "jdbc:mysql://localhost:3306/KTR";
			// declare a connection by using Connection interface
			Connection connection = null;
			/* declare object of Statement interface that is used for executing sql 
			statements. */
			Statement statement = null;
			// declare a resultset that uses as a table for output data from tha table.
			ResultSet rs = null;
			// Load JBBC driver "com.mysql.jdbc.Driver"
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			/* Create a connection by using getConnection() method that takes parameters 
			of string type connection url, user name and password to connect to database.*/
			connection = DriverManager.getConnection(connectionURL, "sudeep", "sudeep123");
			/* createStatement() is used for create statement object that is used for 
			sending sql statements to the specified database. */
			statement = connection.createStatement();
			// sql query to retrieve values from the secified table.
			String QueryString = "SELECT * from registration";
			rs = statement.executeQuery(QueryString);
	%>
	<TABLE cellpadding="15" border="1" style="background-color: #ffd4d4;">
		<%
			while (rs.next()) {
		%>
		<TR>
			<TD><%=rs.getInt(1)%></TD>
			<TD><%=rs.getString(2)%></TD>
			<TD><%=rs.getString(3)%></TD>
			<TD><%=rs.getString(4)%></TD>
			<TD><%=rs.getString(5)%></TD>
			<TD><%=rs.getString(6)%></TD>
			<TD><%=rs.getString(7)%></TD>
			<TD><%=rs.getLong(8)%></TD>
			<TD><%=rs.getInt(9)%></TD>
			<TD><%=rs.getTimestamp(10)%></TD>
		</TR>
		<%
			}
		%>
		<%
			// close all the connections.
				rs.close();
				statement.close();
				connection.close();
			} catch (Exception ex) {
		%>
		</font>
		<font size="+3" color="red"></b>
		<%
			out.println("Unable to connect to database.");
			}
		%>
	</TABLE>
	<TABLE>
		<TR>
			<TD><FORM ACTION="register.jsp" method="post">
					<button type="submit"><-- back</button>
				</FORM></TD>
		</TR>
	</TABLE>
	</font>

</body>
</html>