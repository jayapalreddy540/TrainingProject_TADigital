package com.tadigital.trainingproject.customer.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tadigital.trainingproject.customer.entity.Customer;
import com.tadigital.trainingproject.customer.service.CustomerService;

public class RegistrationProcessControllerServlet extends HttpServlet {
	
CustomerService customerService=new CustomerService();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("signupName");
		String email=req.getParameter("signupEmail");
		String password=req.getParameter("signupPassword");
		
		Customer customer=new Customer();
		customer.setFirstName(name);
		customer.setEmail(email);
		customer.setPassword(password);
		
		boolean status=customerService.registerCustomer(customer);
		if(status) {
			RequestDispatcher rd=req.getRequestDispatcher("RegistrationSuccess.jsp");
			rd.forward(req, resp);
		}else {

			RequestDispatcher rd=req.getRequestDispatcher("RegistrationFailure.jsp");
			rd.forward(req, resp);
		}
		
	}

}
