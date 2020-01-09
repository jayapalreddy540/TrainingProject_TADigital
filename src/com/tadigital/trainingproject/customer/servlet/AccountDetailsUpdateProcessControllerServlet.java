package com.tadigital.trainingproject.customer.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tadigital.trainingproject.customer.entity.Customer;
import com.tadigital.trainingproject.customer.service.CustomerService;

/*
 * This class is used for updation of Customer's Account Details.
 */
public class AccountDetailsUpdateProcessControllerServlet extends HttpServlet {

	CustomerService customerService = new CustomerService();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		/*
		 * Values form Account Details Update Form.
		 */
		String fname = req.getParameter("fname");
		String lname = req.getParameter("lname");
		String dob = req.getParameter("dob");
		String gender = req.getParameter("gender");
		String address = req.getParameter("address");
		String city = req.getParameter("city");
		int zip = Integer.parseInt(req.getParameter("zip"));
		String state = req.getParameter("state");
		String country = req.getParameter("country");
		long mobile = Long.parseLong(req.getParameter("mobile"));

		/*
		 * Creating a Customer Object for setting values.
		 */
		Customer customer = new Customer();
		customer.setFirstName(fname);
		customer.setLastName(lname);
		customer.setDateOfBirth("2019-12-28");
		customer.setGender(gender);
		customer.setAddress(address);
		customer.setCity(city);
		customer.setZip(zip);
		customer.setState(state);
		customer.setCountry(country);
		customer.setMobile(mobile);

		boolean status = customerService.updateCustomer(customer);
		if (status) {
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
		} else {
			RequestDispatcher rd = req.getRequestDispatcher("LoginFailure.jsp");
			rd.forward(req, resp);
		}
	}
}
