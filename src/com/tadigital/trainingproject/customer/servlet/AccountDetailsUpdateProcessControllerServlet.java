package com.tadigital.trainingproject.customer.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.tadigital.trainingproject.customer.entity.Customer;
import com.tadigital.trainingproject.customer.service.CustomerService;

/*
 * This class is used for updating  Customer's Account Details.
 */
public class AccountDetailsUpdateProcessControllerServlet extends HttpServlet {
	private static final Logger LOGGER = Logger.getLogger(AccountDetailsUpdateProcessControllerServlet.class.getName());

	CustomerService customerService = new CustomerService();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		LOGGER.info("execution starting.");
		
		HttpSession session = req.getSession();
		/*
		 * Values form Account Details Update Form.
		 */
		String fname = req.getParameter("fname");
		String lname = req.getParameter("lname");
		String gender = req.getParameter("gender");
		String address = req.getParameter("address");
		String city = req.getParameter("city");
		int pincode = Integer.parseInt(req.getParameter("pincode"));
		String state = req.getParameter("state");
		String country = req.getParameter("country");
		long contactNumber = Long.parseLong(req.getParameter("contactnumber"));

		LOGGER.info("parameters from CustomerDetails Update Form: ");
		LOGGER.info("fname: " + fname + " lname: " + lname + " gender: " + gender + " address: "
				+ address + " city: " + city + " zip: " + pincode + " state: " + state + " country: " + country
				+ " mobile: " + contactNumber);

		/*
		 * Creating a Customer Object for setting values.
		 */

		Customer sessionCustomer = (Customer)session.getAttribute("CUSTOMERDATA");
		
		Customer customer = new Customer();
		customer.setFirstName(fname);
		customer.setLastName(lname);
		customer.setGender(gender);
		customer.setAddress(address);
		customer.setCity(city);
		customer.setZip(pincode);
		customer.setState(state);
		customer.setCountry(country);
		customer.setMobile(contactNumber);
		customer.setEmail(sessionCustomer.getEmail());
		
		boolean status = customerService.updateCustomer(customer);
		if (status) {
			LOGGER.info("Details updated successfully, dispatching to index.jsp");
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
		} else {
			LOGGER.info("Details not updated, dispatching to UpdateAccountDetails.jsp");
			RequestDispatcher rd = req.getRequestDispatcher("UpdateAccountDetails.jsp");
			rd.forward(req, resp);
		}
		LOGGER.info("execution ending");
	}
}
