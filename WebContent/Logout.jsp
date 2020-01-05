<%@ page import="java.util.Date" %>
<%
	
    Cookie[] allCookies= request.getCookies();
	if(allCookies !=null){
		for(Cookie cookie : allCookies){
			String cName =cookie.getName();
			if(cName.equals("abc")){				
				String cValue=cookie.getValue();
				cookie.setMaxAge(0);
				response.addCookie(cookie);
				break;
			}
		}
	}
	
	out.println("Logging out...");

	out.println("<p>"+session.getId()+"</p>");
	out.println("<p>"+session.isNew()+"</p>");
	out.println("<p>"+new Date(session.getCreationTime())+"</p>");
	
	session.invalidate();
    out.println("Logged out...");
    
    response.sendRedirect("index.jsp");
%>