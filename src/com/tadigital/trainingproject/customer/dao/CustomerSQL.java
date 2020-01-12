package com.tadigital.trainingproject.customer.dao;

public interface CustomerSQL {
	/*
	 * SQL queries as constants for prepared Statements.
	 */
	public static final String LOGIN_CUSTOMER = "SELECT * FROM customer_info WHERE cust_email=? AND cust_pwd=?";
	public static final String REGISTER_CUSTOMER = "INSERT INTO customer_info(cust_fname,cust_email,cust_pwd) VALUES(?,?,?)";
	public static final String CUSTOMER_SESSION_UPDATE = "UPDATE customer_info SET cust_sesid=? WHERE cust_email=?";
	public static final String CUSTOMER_DETAILS_UPDATE = "UPDATE customer_info SET cust_fname=?,cust_lname=?,cust_dob=?,cust_gender=?,"
														+ "cust_address=?,cust_city=?,cust_zip=?,cust_state=?,cust_country=?,"
														+ "cust_mobile=? WHERE cust_email=?";
	public static final String CUSTOMER_PASSWORD_UPDATE = "UPDATE customer_info SET cust_pwd=? WHERE cust_email=?";
	public static final String ALL_CUSTOMER_DETAILS = "SELECT * FROM customer_info";
}
