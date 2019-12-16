package com.sudeep;

import javax.servlet.http.HttpServletRequest;

public class AddServlet extends HttpServlet
{
	public void service(HttpServletRequest req, HttpServletResponse res)
	{
		int i = Integer.parseInt(req.getParameter("num1"));
		int j = Integer.parseInt(req.getParameter("num2"));
		int k = i+j;
		System.out.println("result is : "+k);
	}
}
