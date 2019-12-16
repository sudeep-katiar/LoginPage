package com.blblz.loginregister;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blblz.loginregister.dao.LoginDao;

/**
 * Servlet implementation class Login
 */
@SuppressWarnings("serial")
public class Login extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		LoginDao dao = new LoginDao();

		if (dao.checkDetails(username, password)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			response.sendRedirect("welcome.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
	}

}
