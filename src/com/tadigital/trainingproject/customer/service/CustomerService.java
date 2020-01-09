package com.tadigital.trainingproject.customer.service;

import java.util.ArrayList;

import com.tadigital.trainingproject.customer.dao.CustomerDao;
import com.tadigital.trainingproject.customer.entity.Customer;

/*
 * This class is used for executing Business Operations of Customer.
 */
public class CustomerService {
	CustomerDao customerDao = new CustomerDao();

	/*
	 * This method is used to verify user using email and password.
	 */
	public boolean validateCustomerByEmailAndPassword(Customer customer, String sql) {
		return customerDao.selectCustomerByEmailAndPassword(customer, sql);
	}

	/*
	 * This method is responsible for Registering a Customer.
	 */
	public boolean registerCustomer(Customer customer) {
		return customerDao.insertCustomer(customer);
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
	public boolean changeCustomerPassword(Customer customer) {
		return customerDao.updatePassword(customer);
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
}
