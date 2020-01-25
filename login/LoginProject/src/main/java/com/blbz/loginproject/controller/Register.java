package com.blbz.loginproject.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.xdevapi.Statement;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		Connection con = null;
//		Statement stmt = null;
		PrintWriter out = response.getWriter();

		String a = request.getParameter("first_name");
		String b = request.getParameter("middle_name");
		String c = request.getParameter("last_name");
		String d = request.getParameter("email_id");
		String e = request.getParameter("city");
		String f = request.getParameter("hired_date");
		String g = request.getParameter("phone_number");
		String h = request.getParameter("pincode");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/KTR", "sudeep", "sudeep123");
//			stmt = (Statement) con.createStatement();
			PreparedStatement ps = con.prepareStatement(
					"insert into registration (firstname, middlename, lastname, emailid, hiredcity, hireddate, phonenumber, permanentpincode) values(?,?,?,?,?,?,?,?)");
			ps.setString(1, a);
			ps.setString(2, b);
			ps.setString(3, c);
			ps.setString(4, d);
			ps.setString(5, e);
			ps.setString(6, f);
			ps.setString(7, g);
			ps.setString(8, h);
			
			int i = ps.executeUpdate();
			if (i > 0)
				response.sendRedirect("success.jsp");
			
			con.close(); 
		} catch (Exception e2) {
			System.out.println(e2);
		}

	}

}
