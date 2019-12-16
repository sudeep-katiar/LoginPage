package com.sudeep;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/square")
public class SquareServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
		int k = (Integer)req.getAttribute("k");
		k = k * k;
		PrintWriter out = res.getWriter();
		out.println("Result : "+k);
	}

}
