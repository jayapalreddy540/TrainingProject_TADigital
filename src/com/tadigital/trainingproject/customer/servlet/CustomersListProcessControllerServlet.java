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

public class CustomersListProcessControllerServlet extends HttpServlet{
	CustomerService customerService=new CustomerService();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ArrayList<Customer> customersList=customerService.getAllCustomers();
		
		req.setAttribute("CUSTOMERSLIST", customersList);
		RequestDispatcher rd=req.getRequestDispatcher("CustomersList.jsp");
		rd.forward(req, resp);
				
	}

}
