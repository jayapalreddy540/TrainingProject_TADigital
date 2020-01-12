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
		/*
		 * Session Attributes.
		 */
		HttpSession session = req.getSession();

		String staySignedIn = req.getParameter("remember");
		String email = req.getParameter("signinEmail");
		String pwd = req.getParameter("signinPassword");

		LOGGER.info("parameters : email - " + email);

		Customer customer = new Customer();
		customer.setEmail(email);
		customer.setPassword(pwd);

		boolean status = customerService.loginCustomerByEmailAndPassword(customer);

		if (status) {
			session.setAttribute("CUSTOMERDATA", customer);
			String sesId = session.getId();

			if (staySignedIn != null) {
				String cValue = email + "-" + sesId;
				LOGGER.info("email : " + email + "  session ID : " + sesId);
				Cookie cookie = new Cookie("TADigital", cValue);
				cookie.setMaxAge(60 * 60 * 24);
				resp.addCookie(cookie);

				LOGGER.info("COOKIE created as TADigital : " + cValue);

				boolean status1 = customerService.updateSession(email, sesId);
			}
			LOGGER.info("Dispatching to LoginSuccess.jsp");
			RequestDispatcher rd = req.getRequestDispatcher("LoginSuccess.jsp");
			rd.forward(req, resp);
		} else {
			LOGGER.info("Dispatching to LoginSuccess.jsp");
			RequestDispatcher rd = req.getRequestDispatcher("LoginFailure.jsp");
			rd.forward(req, resp);
		}
		LOGGER.info("execution ending.");
	}
}
