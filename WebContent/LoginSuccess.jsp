<%@ page import="com.tadigital.trainingproject.customer.entity.Customer,java.util.Date" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Login Successful</title>
</head>
<body>
		<h2>
				<font color="green">
					Login Successful...
				</font>
				 <%
				 	String email=(String)session.getAttribute("email");
			    	
				 	out.print("<h2>Welcome to Our WebApplication </h2>");
	    			out.println("<h3 style='color:red'>"+email+"</h3>");
	    			
	    			out.println("<p>"+session.getId()+"</p>");
	    		   	out.println("<p>"+session.isNew()+"</p>");
	    		   	out.println("<p>"+new Date(session.getCreationTime())+"</p>");
	    			
	    			
				 %>
		</h2>
		<a href="productslist">View Products</a>
		<br/>
		<a href="customerslist">View Customers</a>
		<br/>
		<br/>
		<a href="Homepage.jsp">VISIT HOMEPAGE</a>
		
		
		<h1><a href="Logout.jsp">Logout</a></h1>
</body>
</html>