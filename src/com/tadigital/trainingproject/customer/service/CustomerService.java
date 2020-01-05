package com.tadigital.trainingproject.customer.service;

import java.util.ArrayList;

import com.tadigital.trainingproject.customer.dao.CustomerDao;
import com.tadigital.trainingproject.customer.entity.Customer;

public class CustomerService {
	CustomerDao customerDao=new CustomerDao();
	public boolean validateCustomerByEmailAndPassword(Customer customer,String sql) {
		boolean status=customerDao.selectCustomerByEmailAndPassword(customer,sql);
		
		return status;
	}
	
	public boolean registerCustomer(Customer customer) {
		boolean status=customerDao.insertCustomer(customer);
		
		return status;
	}
	
	public boolean updateCustomer(Customer customer) {
		boolean status=customerDao.updateCustomerDetails(customer);
		
		return status;
	}
	
	public boolean changeCustomerPassword(Customer customer) {
		boolean status=customerDao.updatePassword(customer);
		
		return status;
	}
	
	public boolean updateSession(String email,String sesId) {
		boolean status=customerDao.updateSession(email,sesId);
		
		return status;
	}
	
	public ArrayList<Customer> getAllCustomers(){
		ArrayList<Customer> customersList=customerDao.selectAllCustomers();
		return customersList;
	}
}
