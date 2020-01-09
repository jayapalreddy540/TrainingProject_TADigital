package com.tadigital.trainingproject.customer.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.tadigital.trainingproject.customer.entity.Customer;
import com.tadigital.trainingproject.dao.Dao;

import java.sql.SQLException;

/*
 * This class is used for Database Communications for Customer related data.
 */
public class CustomerDao extends Dao {

	/*
	 * This method finds customer using email and password.
	 */
	public boolean selectCustomerByEmailAndPassword(Customer customer, String sql) {
		boolean status = false;

		Connection con = getConnection();
		Statement stmt = getStatement(con);
		ResultSet rs = null;

		try {
			if (sql.equals("")) {
				sql = "SELECT * FROM customer_info WHERE cust_email='" + customer.getEmail() + "' AND cust_pwd='"
						+ customer.getPassword() + "'";
			}
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				status = true;

				customer.setId(rs.getInt(1));
				customer.setFirstName(rs.getString(2));
				customer.setLastName(rs.getString(3));
				customer.setDateOfBirth(rs.getString(4));
			}
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		} finally {
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(con);
		}

		return status;
	}

	/*
	 * This method creates a new Customer
	 */

	public boolean insertCustomer(Customer customer) {
		boolean status = false;

		Connection con = getConnection();
		Statement stmt = getStatement(con);

		try {
			String sql = "INSERT INTO customer_info(cust_fname,cust_email,cust_pwd) VALUES('" + customer.getFirstName()
					+ "','" + customer.getEmail() + "','" + customer.getPassword() + "')";
			int row = stmt.executeUpdate(sql);
			if (row != 0) {
				status = true;
			}
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}

		return status;
	}

	/*
	 * This method is used to update the Session Id when the Customer logged In.
	 */

	public boolean updateSession(String email, String sesId) {
		boolean status = false;

		Connection con = getConnection();
		Statement stmt = getStatement(con);

		try {
			String sql = "UPDATE customer_info SET cust_sesid='" + sesId + "' WHERE cust_email='" + email + "'";

			int row = stmt.executeUpdate(sql);
			if (row != 0) {
				status = true;
			}
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}

		return status;
	}

	/*
	 * This method is used to Update the details of the Customer.
	 */

	public boolean updateCustomerDetails(Customer customer) {
		boolean status = false;

		Connection con = getConnection();
		Statement stmt = getStatement(con);

		try {
			String sql = "UPDATE customer_info SET cust_fname='" + customer.getFirstName() + "',cust_lname='"
					+ customer.getLastName() + "',cust_dob='" + customer.getDateOfBirth() + "',cust_gender='"
					+ customer.getGender() + "',cust_address='" + customer.getAddress() + "',cust_city='"
					+ customer.getCity() + "',cust_zip=" + customer.getZip() + ",cust_state='" + customer.getState()
					+ "',cust_country='" + customer.getCountry() + "',cust_mobile=" + customer.getMobile()
					+ " WHERE cust_email='" + customer.getEmail() + "'";
			int row = stmt.executeUpdate(sql);
			if (row != 0) {
				status = true;
			}
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}

		return status;
	}

	/*
	 * This method is used to Update the Customer's Password.
	 */

	public boolean updatePassword(Customer customer) {
		boolean status = false;

		Connection con = getConnection();
		Statement stmt = getStatement(con);

		try {
			String sql = "UPDATE customer_info SET cust_pwd='" + customer.getNewPassword() + "' WHERE cust_email='"
					+ customer.getEmail() + "'";
			int row = stmt.executeUpdate(sql);
			if (row != 0) {
				status = true;
			}
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}

		return status;
	}

	/*
	 * This method is used to retrieve all Customers.
	 */

	public ArrayList<Customer> selectAllCustomers() {
		ArrayList<Customer> customersList = new ArrayList<Customer>();

		Connection con = getConnection();
		Statement stmt = getStatement(con);
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM customer_info";
			rs = stmt.executeQuery(sql);
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
			sqlEx.printStackTrace();
		} finally {
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(con);
		}

		return customersList;
	}
}
