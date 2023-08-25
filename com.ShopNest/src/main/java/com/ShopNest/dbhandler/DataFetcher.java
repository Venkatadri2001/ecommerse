package com.ShopNest.dbhandler;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import product.Product;
public class DataFetcher {

	public static String fetchPassword(String uname) {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "system";
		String pwd = "system";
		String query = "select pass from customers where uname = ?";
		String dbpass = "";
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,user,pwd);
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, uname);
			ResultSet rs = ps.executeQuery();
			rs.next();
			dbpass = rs.getString(1);
			
			//ps.executeUpdate();
			
		}
		catch(Exception ex)
		{
			System.out.println("login issue");
			ex.printStackTrace();
			
			
		}
		return dbpass;
		
		
		
		
		
		
	
	}
	
	
	
	public static List fetchUserinfo() {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "system";
		String pwd = "system";
		String query = "select uname,mail,gender,address from customers";
		List ulist = new ArrayList();
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,user,pwd);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next())
			{
				String temp=rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4);
				ulist.add(temp);
			}
		}
		catch(Exception ex)
		{
			System.out.println("Problem in login ");
			ex.printStackTrace();
			
			
		}
		return ulist;
	
	}
	
	
	public static List fetchproductinfo() {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "system";
		String pwd = "system";
		String query = "select pid,pname,pdesc,pprice,pimg from products";
		List ilist = new ArrayList();
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,user,pwd);
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next())
			{
				String temp=rs.getInt(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getInt(4)+":"+rs.getString(5);
				ilist.add(temp);
			}
		}
		catch(Exception ex)
		{
			System.out.println("Problem in fetching product ");
			ex.printStackTrace();
			
			
		}
		return ilist;
	
	}
	
	public static Product getProductById(int pid)
	{
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "system";
		String pwd = "system";
		String query = "select pname,pprice from products where pid = ?";
		Product p = null;
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url,user,pwd);
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1,pid);
			ResultSet rs = ps.executeQuery();
			String pname = rs.getString(1);
			int pprice = rs.getInt(2);
			p = new Product(pid,pname,pprice);
		}
		catch (Exception e){
			System.out.println("problem in cart");
			e.printStackTrace();
		}
		return p;
	}

}
