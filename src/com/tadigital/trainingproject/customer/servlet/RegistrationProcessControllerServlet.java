package com.tadigital.trainingproject.customer.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.tadigital.trainingproject.customer.entity.Customer;
import com.tadigital.trainingproject.customer.service.CustomerService;

/*
 * This class is used for executing Registration Process.
 */
public class RegistrationProcessControllerServlet extends HttpServlet {
	private static final Logger LOGGER = Logger.getLogger(RegistrationProcessControllerServlet.class.getName());

	CustomerService customerService = new CustomerService();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		LOGGER.info("execution starting.");
		/*
		 * values from Registration Form.
		 */
		String name = req.getParameter("signupName");
		String email = req.getParameter("signupEmail");
		String password = req.getParameter("signupPassword");

		LOGGER.info("parameters from Registration Form : name - " + name + "  email - " + email);
		/*
		 * Creating Customer Object to for the process of registering customer.
		 */
		Customer customer = new Customer();
		customer.setFirstName(name);
		customer.setEmail(email);
		customer.setPassword(password);

		boolean status = customerService.registerCustomerByEmailAndPassword(customer);
		if (status) {
			customerService.sendWelcomeEmail(email, name);
			LOGGER.info("dispatching to RegistrationSuccess.jsp");
			RequestDispatcher rd = req.getRequestDispatcher("RegistrationSuccess.jsp");
			rd.forward(req, resp);
		} else {
			LOGGER.info("dispatching to RegistrationFailure.jsp");
			RequestDispatcher rd = req.getRequestDispatcher("RegistrationFailure.jsp");
			rd.forward(req, resp);
		}
	}
}
