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

public class AccountDetailsUpdateProcessControllerServlet extends HttpServlet{
	
CustomerService customerService=new CustomerService();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession=req.getSession();
		String email=(String) httpSession.getAttribute("SESSION_EMAIL");
		String password=(String) httpSession.getAttribute("SESSION_PASSWORD");
		
		String fname=req.getParameter("fname");
		String lname=req.getParameter("lname");
		String dob=req.getParameter("dob");
		String gender=req.getParameter("gender");
		String address=req.getParameter("address");
		String city=req.getParameter("city");
		int zip=Integer.parseInt(req.getParameter("zip"));
		String state=req.getParameter("state");
		String country=req.getParameter("country");
		long mobile=Long.parseLong(req.getParameter("mobile"));
		
		Customer customer=new Customer(fname,lname,"2019-12-28",gender,address,city,zip,state,country,mobile);
		customer.setEmail(email);
		
		boolean status=customerService.updateCustomer(customer);
		if(status) {
			RequestDispatcher rd=req.getRequestDispatcher("LoginSuccess.jsp");
			rd.forward(req, resp);
		}else {

			RequestDispatcher rd=req.getRequestDispatcher("LoginFailure.jsp");
			rd.forward(req, resp);
		}
		
	}

}
