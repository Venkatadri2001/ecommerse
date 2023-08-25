package com.ShopNest.customer;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ShopNest.dbhandler.DataInjector;

import java.io.*;
import javax.servlet.annotation.WebServlet;
@WebServlet("/reg")
public class RegisterServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse resp)throws IOException{
		String uname = req.getParameter("uname");
		String mail = req.getParameter("mail");
		String pass = req.getParameter("pass");
		String gender = req.getParameter("gender");
		String address = req.getParameter("address");
		
		String status = DataInjector.addCustomer(uname,mail,pass,gender,address);
		resp.sendRedirect("login.jsp");
	}

}
