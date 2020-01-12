package com.tadigital.trainingproject.customer.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.apache.log4j.Logger;

import com.tadigital.trainingproject.customer.entity.Customer;
import com.tadigital.trainingproject.dao.Dao;

import java.sql.SQLException;

/*
 * This class is used for Database Communications for Customer related data.
 */
public class CustomerDao extends Dao {
	private static final Logger LOGGER = Logger.getLogger(CustomerDao.class.getName());

	/*
	 * This method finds customer using email and password.
	 */
	public boolean validateCustomerByEmailAndPassword(Customer customer) {
		LOGGER.info("execution starting.");
		boolean status = false;

		ResultSet rs = null;
		try {
			PreparedStatement pStmt = getCustomerPreparedStatement("LOGIN");
			pStmt.setString(1, customer.getEmail());
			pStmt.setString(2, customer.getPassword());

			rs = pStmt.executeQuery();
			if (rs.next()) {
				status = true;

				customer.setId(rs.getInt(1));
				customer.setFirstName(rs.getString(2));
				customer.setLastName(rs.getString(3));
				customer.setDateOfBirth(rs.getString(4));
			}
		} catch (SQLException sqlEx) {
			LOGGER.error(sqlEx);
		} finally {
			closeResultSet(rs);
		}
		LOGGER.info("execution ending.");
		return status;
	}

	/*
	 * This method creates a new Customer
	 */

	public boolean createCustomerByEmailAndPassword(Customer customer) {
		LOGGER.info("execution starting.");
		boolean status = false;

		try {
			PreparedStatement pStmt = getCustomerPreparedStatement("REGISTER");
			pStmt.setString(1, customer.getFirstName());
			pStmt.setString(2, customer.getEmail());
			pStmt.setString(3, customer.getPassword());

			int row = pStmt.executeUpdate();
			if (row != 0) {
				status = true;
			}
		} catch (SQLException sqlEx) {
			LOGGER.error(sqlEx);
		}
		LOGGER.info("execution ending.");
		return status;
	}

	/*
	 * This method is used to update the Session Id when the Customer logged In.
	 */

	public boolean updateSession(String email, String sesId) {
		LOGGER.info("execution starting.");
		boolean status = false;

		try {
			PreparedStatement pStmt = getCustomerPreparedStatement("UPDATE_SESSION");
			pStmt.setString(1, sesId);
			pStmt.setString(2, email);

			int row = pStmt.executeUpdate();
			if (row != 0) {
				status = true;
			}
		} catch (SQLException sqlEx) {
			LOGGER.error(sqlEx);
		}
		LOGGER.info("execution ending.");
		return status;
	}

	/*
	 * This method is used to Update the details of the Customer.
	 */

	public boolean updateCustomerDetails(Customer customer) {
		LOGGER.info("execution starting.");
		boolean status = false;

		try {
			PreparedStatement pStmt = getCustomerPreparedStatement("UPDATE_CUSTOMER");

			pStmt.setString(1, customer.getFirstName());
			pStmt.setString(2, customer.getLastName());
			pStmt.setString(3, customer.getDateOfBirth());
			pStmt.setString(4, customer.getGender());
			pStmt.setString(5, customer.getAddress());
			pStmt.setString(6, customer.getCity());
			pStmt.setInt(7, customer.getZip());
			pStmt.setString(8, customer.getState());
			pStmt.setString(9, customer.getCountry());
			pStmt.setLong(10, customer.getMobile());
			pStmt.setString(11, customer.getEmail());

			int row = pStmt.executeUpdate();
			if (row != 0) {
				status = true;
			}
		} catch (SQLException sqlEx) {
			LOGGER.error(sqlEx);
		}
		LOGGER.info("execution ending.");
		return status;
	}

	/*
	 * This method is used to Update the Customer's Password.
	 */

	public boolean updatePassword(Customer customer) {
		LOGGER.info("execution starting.");
		boolean status = false;

		try {
			PreparedStatement pStmt = getCustomerPreparedStatement("UPDATE_PASSWORD");
			pStmt.setString(1, customer.getNewPassword());
			pStmt.setString(2, customer.getEmail());

			int row = pStmt.executeUpdate();
			if (row != 0) {
				status = true;
			}
		} catch (SQLException sqlEx) {
			LOGGER.error(sqlEx);
		}
		LOGGER.info("execution ending.");
		return status;
	}

	/*
	 * This method is used to retrieve all Customers.
	 */

	public ArrayList<Customer> selectAllCustomers() {
		LOGGER.info("execution starting.");
		ArrayList<Customer> customersList = new ArrayList<Customer>();
		ResultSet rs = null;

		try {
			PreparedStatement pStmt = getCustomerPreparedStatement("RETRIEVE_ALL_CUSTOMERS");
			rs = pStmt.executeQuery();
			while (rs.next()) {
				Customer customer = new Customer();

				customer.setId(rs.getInt(1));
				customer.setFirstName(rs.getString(2));
				customer.setLastName(rs.getString(3));
				customer.setDateOfBirth(rs.getString(4));
				customer.setEmail(rs.getString(5));
				customer.setPassword(rs.getString(6));

				customersList.add(customer);
			}
		} catch (SQLException sqlEx) {
			LOGGER.error(sqlEx);
		} finally {
			closeResultSet(rs);
		}
		LOGGER.info("execution ending.");
		return customersList;
	}
}
