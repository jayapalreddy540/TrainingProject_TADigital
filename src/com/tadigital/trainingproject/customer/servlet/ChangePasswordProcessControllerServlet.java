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
 * This class is used for Customer's Password update.
 */
public class ChangePasswordProcessControllerServlet extends HttpServlet {
	private static final Logger LOGGER = Logger.getLogger(ChangePasswordProcessControllerServlet.class.getName());

	CustomerService customerService = new CustomerService();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		LOGGER.info("execution starting.");
		/*
		 * Retrieving Session Attributes.
		 */
		HttpSession httpSession = req.getSession();
		String email = (String) httpSession.getAttribute("SESSION_EMAIL");
		String password = (String) httpSession.getAttribute("SESSION_PASSWORD");

		/*
		 * values from Password Update Form.
		 */
		String oldPassword = req.getParameter("oldPassword");
		String newPassword = req.getParameter("newPassword");
		String retypePassword = req.getParameter("retypePassword");
		LOGGER.info("parameters from PasswordUpdate Form : oldPassword - " + oldPassword + "  newPassword - "
				+ newPassword);

		if (newPassword.equals(retypePassword) && password.equals(oldPassword)) {

			Customer customer = new Customer();
			customer.setNewPassword(newPassword);
			customer.setEmail(email);

			boolean status = customerService.changeCustomerPassword(customer);
			if (status) {
				LOGGER.info("dispatching to index.jsp");
				RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
				rd.forward(req, resp);
			} else {
				LOGGER.info("dispatching to RegistrationFailure.jsp");
				RequestDispatcher rd = req.getRequestDispatcher("RegistrationFailure.jsp");
				rd.forward(req, resp);
			}
		}
		LOGGER.info("execution ending.");
	}
}
