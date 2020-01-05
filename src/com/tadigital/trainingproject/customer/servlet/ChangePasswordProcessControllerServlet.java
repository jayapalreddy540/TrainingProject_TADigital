package com.tadigital.trainingproject.customer.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.trainingproject.customer.entity.Customer;
import com.tadigital.trainingproject.customer.service.CustomerService;

public class ChangePasswordProcessControllerServlet extends HttpServlet{
	
	
CustomerService customerService=new CustomerService();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession=req.getSession();
		String email=(String) httpSession.getAttribute("SESSION_EMAIL");
		String password=(String) httpSession.getAttribute("SESSION_PASSWORD");
		
		String oldPassword=req.getParameter("oldPassword");
		String newPassword=req.getParameter("newPassword");
		String retypePassword=req.getParameter("retypePassword");
		 System.out.println(email+" "+password+" "+oldPassword+" "+newPassword+" "+retypePassword);
		
		if(newPassword.equals(retypePassword) && password.equals(oldPassword)) {
			
			Customer customer=new Customer();
			customer.setNewPassword(newPassword);
			customer.setEmail(email);
			
			boolean status=customerService.changeCustomerPassword(customer);
			if(status) {
				RequestDispatcher rd=req.getRequestDispatcher("RegistrationSuccess.jsp");
				rd.forward(req, resp);
			}else {
	
				RequestDispatcher rd=req.getRequestDispatcher("RegistrationFailure.jsp");
				rd.forward(req, resp);
			}
	  }
		
	}


}
