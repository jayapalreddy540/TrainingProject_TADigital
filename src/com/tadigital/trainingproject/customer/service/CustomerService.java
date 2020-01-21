package com.tadigital.trainingproject.customer.service;

import java.util.ArrayList;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.log4j.Logger;

import com.tadigital.trainingproject.customer.dao.CustomerDao;
import com.tadigital.trainingproject.customer.entity.Customer;
import com.tadigital.trainingproject.service.Service;

/*
 * This class is used for executing Business Operations of Customer.
 */
public class CustomerService extends Service {
	private static final Logger LOGGER = Logger.getLogger(CustomerService.class.getName());
	
	CustomerDao customerDao = new CustomerDao();

	/*
	 * This method is used to verify user using Email and Password.
	 */
	public boolean loginCustomerByEmailAndPassword(Customer customer) {
		return customerDao.validateCustomerByEmailAndPassword(customer);
	}
	
	/*
	 * This method is used to verify user using Email and Session.
	 */
	public boolean loginCustomerByEmailAndSession(Customer customer) {
		return customerDao.validateCustomerByEmailAndSesId(customer);
	}

	/*
	 * This method is responsible for Registering a Customer.
	 */
	public boolean registerCustomerByEmailAndPassword(Customer customer) {
		return customerDao.createCustomerByEmailAndPassword(customer);
	}

	/*
	 * This method is used to Update the Customer's data.
	 */
	public boolean updateCustomer(Customer customer) {
		return customerDao.updateCustomerDetails(customer);
	}

	/*
	 * This method is used to Update the Password of Customer.
	 */
	public boolean changeCustomerPassword(Customer customer,String oldPassword,String newPassword) {
		return customerDao.updatePassword(customer,oldPassword,newPassword);
	}

	/*
	 * This method returns the status of Updation of the Session of Customer.
	 */
	public boolean updateSession(String email, String sesId) {
		return customerDao.updateSession(email, sesId);
	}

	/*
	 * This method is used to get the Customer's list as ArrayList.
	 */
	public ArrayList<Customer> getAllCustomers() {
		return customerDao.selectAllCustomers();
	}

	/*
	 * This method is used to send an Email And to be used if registration is
	 * successful.
	 */
	public boolean sendWelcomeEmail(String email, String name) {
		boolean status = false;

		Properties properties = mailServerConfiguration();

		// CONNECT TO MAIL SERVER
		Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(getEmail(), getEmailPassword());
			}
		});

		try {
			// COMPOSE MESSAGE
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress(getEmail()));
			mimeMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			mimeMessage.setSubject("Welcome to TA Digital Online Shopping Portal.");
			String msg = "Dear " + name + ",\n\n" + "Thanks for Registering on our portal."
					+ "\nWelcome to TA Digital Family." + "\n\nThanks & Regards" + "\nTA Digital";
			mimeMessage.setText(msg);

			// SEND MAIL
			Transport.send(mimeMessage);

			status = true;
		} catch (MessagingException mex) {
			LOGGER.error(mex);
		}
		return status;
	}
}
