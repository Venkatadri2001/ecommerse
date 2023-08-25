<%@ page import = "com.ShopNest.dbhandler.DataFetcher" %>
<%@ page import = "java.lang.String" %>
<%@ page import = "java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet" type = "text/css" href = "style.css">
</head>
<body style="text-align: center;padding: 20px;background-color:wheat">
<h1 style="background-color:orange">WELCOME TO SHOPNEST</h1>
	<%

		List productList = DataFetcher.fetchproductinfo();
	%>
	<header>
		<h1>SHOPNEST</h1>
		<nav>
			<ul>
				<li>
				<a href = "#" class = "view-cart">
					<i class = fas fa-shopping-cart>
					<span>
						<a href="#"><button class = "add-to cart">View Cart</button></a>
					</span>
					</i>
				</a>
				</li>
			</ul>
		</nav>
	</header>
	<br/><br/>
	<main>
		<%
			for(int i=0;i<productList.size();i++){
				String[] prodArr = ((String)productList.get(i)).split(":");
							
		%>
		<section class = "product">
		<img src= "productimg/<%=prodArr[4] %>" alt = "product">
		<h3><%=prodArr[1] %></h3>
		<p><%=prodArr[2] %></p>
		<span class = "price" ><%=prodArr[3] %></span>
		<form method = "post" action = "add-to-cart">
		<input type = "hidden" name = "product-ID" value = "<% 
		Integer.parseInt(prodArr[0]);
		%>">
		<input type = "submit" value = "add to cart">	</form><br><br>
		<h1>-----------------------------------------------------------------------------</h1>
		</section>
		<%}
		%>
		
	</main>

</body>
</html>