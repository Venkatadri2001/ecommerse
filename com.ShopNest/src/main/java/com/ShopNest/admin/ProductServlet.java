package com.ShopNest.admin;
import java.io.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ShopNest.dbhandler.DataInjector;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/addp")
public class ProductServlet extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws IOException{
		int pid = Integer.parseInt(req.getParameter("product-id"));
		String pname = req.getParameter("product-name");
		String pdesc = req.getParameter("product-desc");
		int pprice = Integer.parseInt(req.getParameter("product-price"));
		String pimg = req.getParameter("product-image");
		DataInjector.addProduct(pid,pname,pdesc,pprice,pimg);
		
		
		
	}

}
