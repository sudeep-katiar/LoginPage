package com.blbz.loginproject.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import sun.security.pkcs11.Secmod.DbMode;

@SuppressWarnings("unused")
public class UserRepository {

	private static Connection dbConnection() throws ClassNotFoundException, SQLException {
		String url="jdbc:mysql://localhost:3306/KTR";
		String username="sudeep";
		String password="sudeep123";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		return con;
	}
	public static boolean authentication(String username, String pswd) throws ClassNotFoundException, SQLException {
		String query = "Select * from login where username=? and password=?";
		try(PreparedStatement pstmt = dbConnection().prepareStatement(query)){
			pstmt.setString(1, username);
			pstmt.setString(2, pswd);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		}
		return false;
	}

}
