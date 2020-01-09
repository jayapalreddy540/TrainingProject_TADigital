package com.tadigital.trainingproject.customer.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.trainingproject.customer.entity.Customer;
import com.tadigital.trainingproject.customer.service.CustomerService;

/*
 * This class is used to for executing the Login Process.
 */
public class LoginProcessControllerServlet extends HttpServlet {

	CustomerService customerService = new CustomerService();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email;
		String pwd;
		String cValue;
		String sql;

		/*
		 * Session Attributes.
		 */
		HttpSession session = req.getSession();
		cValue = (String) session.getAttribute("COOKIEVALUE");
		String staySignedIn = req.getParameter("remember");
		String sesId;

		pwd = req.getParameter("signinPassword");

		if (cValue == null) {
			email = req.getParameter("signinEmail");
			sql = "";
		} else {
			String[] values = cValue.split("-");
			email = values[0];
			sesId = values[1];
			sql = "SELECT * FROM customer_info WHERE cust_email='" + email + "' AND cust_sesid='" + sesId + "'";
		}

		Customer customer = new Customer();
		customer.setEmail(email);
		customer.setPassword(pwd);

		boolean status = customerService.validateCustomerByEmailAndPassword(customer, sql);
		session.setAttribute("email", email);
		sesId = session.getId();

		if (status) {
			req.setAttribute("CUSTOMERDATA", customer);
			if (staySignedIn != null) {
				cValue = email + "-" + sesId;
				Cookie cookie = new Cookie("TADigital", cValue);
				cookie.setMaxAge(60 * 60 * 24 * 30);
				resp.addCookie(cookie);

				boolean status1 = customerService.updateSession(email, sesId);

				if (status1) {
					session.setAttribute("COOKIEVALUE", cValue);
				}
			}
			RequestDispatcher rd = req.getRequestDispatcher("LoginSuccess.jsp");
			rd.forward(req, resp);
		} else {
			RequestDispatcher rd = req.getRequestDispatcher("LoginFailure.jsp");
			rd.forward(req, resp);
		}
	}
}
