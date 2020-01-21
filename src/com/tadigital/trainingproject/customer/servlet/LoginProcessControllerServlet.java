package com.tadigital.trainingproject.customer.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.tadigital.trainingproject.customer.entity.Customer;
import com.tadigital.trainingproject.customer.service.CustomerService;

/*
 * This class is used to for executing the Login Process.
 */
public class LoginProcessControllerServlet extends HttpServlet {
	private static final Logger LOGGER = Logger.getLogger(LoginProcessControllerServlet.class.getName());

	CustomerService customerService = new CustomerService();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		LOGGER.info("execution starting.");
		String email;
		String cValue;
		String pwd = null;
		String sesId = null;
		boolean status = false;

		/*
		 * Session Attributes.
		 */
		HttpSession session = req.getSession();
		cValue = (String) session.getAttribute("TADigital");
		session.setAttribute("sessionVerified", "false");
		String staySignedIn = req.getParameter("remember");

		Customer customer = new Customer();

		if (cValue == null) {
			email = req.getParameter("signinEmail");
			pwd = req.getParameter("signinPassword");
			customer.setEmail(email);
			customer.setPassword(pwd);

			status = customerService.loginCustomerByEmailAndPassword(customer);

			if (status) {
				req.setAttribute("CUSTOMERDATA", customer);
				session.setAttribute("CUSTOMERDATA", customer);
				session.setAttribute("USERNAME", customer.getFirstName() + " " + customer.getLastName());

				if (staySignedIn != null) {
					sesId = session.getId();
					cValue = email + "-" + sesId;
					Cookie cookie = new Cookie("TADigital", cValue);
					cookie.setMaxAge(60 * 24 * 30);
					resp.addCookie(cookie);
					LOGGER.info("cookie set as TADigital : " + cValue);
					
					session.setAttribute("sessionVerified", "true");
					customerService.updateSession(email, sesId);
				}

				LOGGER.info("Login successful, dispatching to LoginSuccess.jsp");
				RequestDispatcher rd = req.getRequestDispatcher("LoginSuccess.jsp");
				rd.forward(req, resp);
			} else {
				LOGGER.info("Login Failure, dispatching to LoginFailure.jsp");
				RequestDispatcher rd = req.getRequestDispatcher("LoginFailure.jsp");
				rd.forward(req, resp);
			}

		} else {
			String[] values = cValue.split("-");
			email = values[0];
			sesId = values[1];
			customer.setEmail(email);
			customer.setSesId(sesId);

			status = customerService.loginCustomerByEmailAndSession(customer);

			if (status) {
				req.setAttribute("CUSTOMERDATA", customer);

				session.setAttribute("CUSTOMERDATA", customer);
				session.setAttribute("USERNAME", customer.getFirstName() + " " + customer.getLastName());

				sesId = session.getId();
				customerService.updateSession(email, sesId);
				
				session.setAttribute("sessionVerified", "true");
				LOGGER.info("Session Verification Success, dispatching with LoginSuccess.jsp");
				RequestDispatcher rd = req.getRequestDispatcher("LoginSuccess.jsp");
				rd.forward(req, resp);
			} else {

				session.setAttribute("sessionVerified", "false");
				LOGGER.info("Session Verification Failed, dispatching to SignInSignUpForms.jsp");
				RequestDispatcher rd = req.getRequestDispatcher("Logout.jsp");
				rd.forward(req, resp);
			}
		}

		LOGGER.info("execution ending.");
	}
}
