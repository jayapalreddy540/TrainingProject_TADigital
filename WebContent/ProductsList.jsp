<%@ page import="com.tadigital.trainingproject.product.entity.Product,java.util.ArrayList,java.sql.DriverManager,java.sql.Connection,java.sql.ResultSet,java.sql.Statement,java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
</head>
<body>
	<table border='1' width='100%'>
		<tr>
			<th>Prod Id</th>
			<th>Product Name</th>
			<th>Product Price</th>
		</tr>
<% 
		ArrayList<Product> productsList=(ArrayList<Product>)request.getAttribute("PRODUCTSLIST");
		for(Product product :productsList)
			{
				int pId=product.getId();
				%>
				<tr>
					<td><%=pId %></td>
					<td><%=product.getName() %></td>
					<td><%=product.getPrice() %></td>
				</tr>
		<% 	} %>
	  </table>
</body>
</html>