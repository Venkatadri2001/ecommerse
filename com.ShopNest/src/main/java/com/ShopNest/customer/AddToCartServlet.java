package com.ShopNest.customer;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ShopNest.dbhandler.DataFetcher;

import product.Cart;
import product.Product;
@WebServlet("/add-to-cart")
public class AddToCartServlet extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException {
		int ProductId = Integer.parseInt(req.getParameter("product-ID"));
		Product product = DataFetcher.getProductById(ProductId);
		HttpSession session = req.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
		cart.addItem(product);
		res.sendRedirect("cart.jsp");
		
	}

}
