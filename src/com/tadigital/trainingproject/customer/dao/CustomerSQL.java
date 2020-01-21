package com.tadigital.trainingproject.customer.dao;

public interface CustomerSQL {
	/*
	 * SQL queries as constants for prepared Statements.
	 */
	public static final String LOGIN_CUSTOMER = "SELECT * FROM customer_personal_information WHERE cust_email=? AND cust_pwd=?";
	public static final String LOGIN_CUSTOMER_SESSION = "SELECT * FROM customer_personal_information WHERE cust_email=? AND cust_sesid=?";
	public static final String REGISTER_CUSTOMER = "INSERT INTO customer_personal_information(cust_fname,cust_lname,cust_email,cust_pwd) VALUES(?,?,?,?)";
	public static final String REGISTER_ADDRESS_ENROLL = "INSERT INTO customer_address_information(cust_id) VALUES(?)";
	public static final String CUSTOMER_SESSION_UPDATE = "UPDATE customer_personal_information SET cust_sesid=? WHERE cust_email=?";
	public static final String CUSTOMER_DETAILS_UPDATE = "UPDATE customer_personal_information SET cust_fname=?,cust_lname=?,cust_gender=?,"
			+ "cust_contact_no=? WHERE cust_email=?";
	public static final String CUSTOMER_ADDRESS_UPDATE = "UPDATE customer_address_information SET add_address=?,add_city=?,add_pincode=?,add_state=?,add_country=?"
			+ " WHERE cust_id=?";
	public static final String CUSTOMER_PASSWORD_UPDATE = "UPDATE customer_personal_information SET cust_pwd=? WHERE cust_email=? AND cust_pwd=?";
	public static final String SINGLE_CUSTOMER_DETAILS_USING_EMAIL = "SELECT * FROM customer_personal_information WHERE cust_email=?";
	public static final String ALL_CUSTOMER_DETAILS = "SELECT * FROM customer_info";
}
