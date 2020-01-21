package com.tadigital.trainingproject.customer.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

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
	 * This method finds customer using Email and SessionId.
	 */
	public boolean validateCustomerByEmailAndSesId(Customer customer) {
		LOGGER.info("execution starting.");
		boolean status = false;

		ResultSet rs = null;
		try {
			PreparedStatement pStmt = getCustomerPreparedStatement("LOGIN_SESSION");
			pStmt.setString(1, customer.getEmail());
			pStmt.setString(2, customer.getSesId());

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

		ResultSet rs = null;
		try {
			PreparedStatement pStmt = getCustomerPreparedStatement("REGISTER");
			pStmt.setString(1, customer.getFirstName());
			pStmt.setString(2, customer.getLastName());
			pStmt.setString(3, customer.getEmail());
			pStmt.setString(4, customer.getPassword());

			int row = pStmt.executeUpdate();
			int custId = 0;
			if (row != 0) {
				PreparedStatement pStmt1 = getCustomerPreparedStatement("RETRIEVE_CUSTOMER_USING_EMAIL");
				pStmt1.setString(1, customer.getEmail());

				rs = pStmt1.executeQuery();
				if (rs.next()) {
					custId = rs.getInt(1);
					PreparedStatement pStmt2 = getCustomerPreparedStatement("ADDRESS_ENROLL");
					pStmt2.setInt(1, custId);
					row = pStmt2.executeUpdate();
					if (row != 0) {
						status = true;
					}
				}
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

		ResultSet rs = null;
		try {
			PreparedStatement pStmt = getCustomerPreparedStatement("UPDATE_CUSTOMER");

			pStmt.setString(1, customer.getFirstName());
			pStmt.setString(2, customer.getLastName());
			pStmt.setString(3, customer.getGender());
			pStmt.setString(4, String.valueOf(customer.getMobile()));
			pStmt.setString(5, customer.getEmail());

			LOGGER.info("fname : "+customer.getFirstName()+" lname : "+customer.getLastName()+" gender : "+customer.getGender()+" mobile : "+customer.getMobile()+" Email : "+customer.getEmail());
			int row = pStmt.executeUpdate();
			int custId;
			if (row != 0) {
				LOGGER.info("Customer Details updated successfully");
				PreparedStatement pStmt1 = getCustomerPreparedStatement("RETRIEVE_CUSTOMER_USING_EMAIL");
				pStmt1.setString(1, customer.getEmail());

				rs = pStmt1.executeQuery();

				if (rs.next()) {
					custId = rs.getInt(1);
					PreparedStatement pStmt2 = getCustomerPreparedStatement("UPDATE_ADDRESS");
					pStmt2.setString(1, customer.getAddress());
					pStmt2.setString(2, customer.getCity());
					pStmt2.setString(3, String.valueOf(customer.getZip()));
					pStmt2.setString(4, customer.getState());
					pStmt2.setString(5, customer.getCountry());
					pStmt2.setInt(6, custId);

					row = pStmt2.executeUpdate();
					if (row != 0) {
						LOGGER.info("address updated successfully");
						status = true;
					}
				}
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
	 * This method is used to Update the Customer's Password.
	 */

	public boolean updatePassword(Customer customer, String oldPassword, String newPassword) {
		LOGGER.info("execution starting.");
		boolean status = false;

		try {
			PreparedStatement pStmt = getCustomerPreparedStatement("UPDATE_PASSWORD");
			pStmt.setString(1, newPassword);
			pStmt.setString(2, customer.getEmail());
			pStmt.setString(3, oldPassword);
			LOGGER.info("email :" + customer.getEmail());
			int row = pStmt.executeUpdate();
			if (row != 0) {
				LOGGER.info("password changed Successfully.");
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
