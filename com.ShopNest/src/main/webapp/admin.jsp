<%@ page import = "com.ShopNest.dbhandler.DataFetcher" %>
<%@ page import = "java.lang.String" %>
<%@ page import = "java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin home</title>
<link rel = "stylesheet" type = "text/css" href = "style.css">
</head>
<body>
	<%
		List userList = DataFetcher.fetchUserinfo();
		List productList = DataFetcher.fetchproductinfo();
	%>
	<div class = "panel">
		<div class = "button-container" align = "center">
			<!-- <button class = "active" >View customers info</button> -->
			<a  href = "#tab1"><button class = "active"  >View customers</button></a>
			<a  href = "#tab2"><button class = "active" >View Products</button></a>
			<a  href = "#tab3"><button class = "active" >Add Products</button></a>
		</div>
		<div class = "content-container">
		<!-- tab1 -->
			<div class = "tab-active" id = "tab1" align="center" >
			<h1 style = "background-color:black;color:white">CUSTOMER'S INFO</h1>
				<table  border = "1" cellspacing = "10" >
					<thead>
						<tr>
							<th>UserName</th>
							<th>Email</th>
							<th>Gender</th>
							<th>Address</th>
						</tr>
					</thead>
					<tbody>
						<%
							for(int i=0;i<userList.size();i++){
								String[] custArr = ((String)userList.get(i)).split(":");
							
						%>
						<tr>
							
							<td><%=custArr[0] %></td>
							<td><%=custArr[1] %></td>
							<td><%=custArr[2] %></td>
							<td><%=custArr[3] %></td>
						</tr>
						<% 
							}
						%>
							
					
					</tbody>
				</table>
			</div>
			<!-- tab2 -->
			
			<div class = "tab-active" id = "tab2" align = "center" >
			<h1 style = "background-color:black;color:white">PRODUCT'S INFO</h1>
				<table  border = "1" cellspacing = "10" >
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Description</th>
							<th>Price</th>
							<th>Image</th>
						</tr>
					</thead>
					<tbody>
						<%
							for(int i=0;i<productList.size();i++){
								String[] productArr = ((String)productList.get(i)).split(":");
							
						%>
						<tr>
							
							<td><%=productArr[0] %></td>
							<td><%=productArr[1] %></td>
							<td><%=productArr[2] %></td>
							<td><%=productArr[3] %></td>
							
							<td><img src= "productimg/<%=productArr[4] %>" alt = "product"></td>
							
						</tr>
						<% 
							}
						%>
							
					
					</tbody>
				</table>
			</div>
			
			
			
			
			
			
			
			
			
			<!-- tab3 -->
			<div class = "tab-active" id = "tab3" align ="center">
			<h1  style = "background-color:black;color:white">ADD NEW PRODUCTS</h1>
				<form action = "addp" method = "post">
					<div class = "form-group">
						<label for = "product-id" style = "color:black" >Product ID</label>
						<input type = "text" id = "product-id" name = "product-id" required>					
					</div><br><br>
					<div class = "form-group">
						<label for = "product-name" style = "color:black">Product Name</label>
						<input type = "text" id = "product-name" name = "product-name" required>					
					</div><br><br>
					<div class = "form-group">
						<label for = "product-description" style = "color:black;size:30px">Product Desc</label>
						<input type = "text" id = "product-desc" name = "product-desc" required>					
					</div><br><br>
					<div class = "form-group">
						<label for = "product-price" style = "color:black">Product Price</label>
						<input type = "text" id = "product-price" name = "product-price" required>					
					</div><br><br>
					<div class = "form-group">
						<label for = "product-image" style = "color:black">Product Image file name</label>
						<input type = "text" id = "product-image" name = "product-image" required>					
					</div><br><br>
					<button style = "background-color:rgba(20,8,25,0.8);color:white;padding:10px;cursor:pointer"type = "submit" >Submit</button><br><br>
				</form>
			</div>
		</div>
	</div>
</body>
</html>