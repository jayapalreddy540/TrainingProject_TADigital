<%@ page import="com.tadigital.trainingproject.customer.entity.Customer,java.util.ArrayList,java.sql.DriverManager,java.sql.Connection,java.sql.ResultSet,java.sql.Statement,java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customers List</title>
</head>
<body>
	<table border='1' width='100%'>
		<tr>
			<th>Customer Id</th>
			<th>Name</th>
			<th>Email</th>
		</tr>
<% 
		ArrayList<Customer> customersList=(ArrayList<Customer>)request.getAttribute("CUSTOMERSLIST");
		for(Customer customer :customersList)
			{
				int cId=customer.getId();
				%>
				<tr>
					<td><%=cId %></td>
					<td><%=customer.getFirstName() %></td>
					<td><%=customer.getEmail() %></td>
				</tr>
		<% 	} %>
	  </table>
</body>
</html>