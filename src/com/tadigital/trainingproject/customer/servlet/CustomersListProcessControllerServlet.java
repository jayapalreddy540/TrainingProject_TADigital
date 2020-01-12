package com.tadigital.trainingproject.customer.servlet;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.tadigital.trainingproject.customer.entity.Customer;
import com.tadigital.trainingproject.customer.service.CustomerService;

/*
 * This class is used for retrieving the Details of All customers.
 */
public class CustomersListProcessControllerServlet extends HttpServlet {
	private static final Logger LOGGER = Logger.getLogger(CustomersListProcessControllerServlet.class.getName());

	CustomerService customerService = new CustomerService();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		LOGGER.info("execution starting.");
		ArrayList<Customer> customersList = customerService.getAllCustomers();

		req.setAttribute("CUSTOMERSLIST", customersList);
		LOGGER.info("dispatching to CustomersList.jsp");
		RequestDispatcher rd = req.getRequestDispatcher("CustomersList.jsp");
		rd.forward(req, resp);
		LOGGER.info("execution ending.");
	}
}
