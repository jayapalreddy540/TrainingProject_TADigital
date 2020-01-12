package com.tadigital.trainingproject.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import org.apache.log4j.Logger;

import com.tadigital.trainingproject.customer.dao.CustomerSQL;

public class Dao {
	private static final Logger LOGGER = Logger.getLogger(Dao.class.getName());

	private static Connection con;
	private static PreparedStatement customerLoginPreparedStatement;
	private static PreparedStatement customerRegisterPreparedStatement;
	private static PreparedStatement customerSessionUpdatePreparedStatement;
	private static PreparedStatement customerDetailsUpdatePreparedStatement;
	private static PreparedStatement customerPasswordUpdatePreparedStatement;
	private static PreparedStatement selectAllCustomersPreparedStatement;
	/*
	 * Propertied class Object containing database connectivity details.
	 */
	private static final Properties properties = new Properties();

	/*
	 * This static block is used to load the Driver class.
	 */
	static {
		LOGGER.info("loading dataabase properties.");
		InputStream inputStream = Thread.currentThread().getContextClassLoader().getResourceAsStream("db.properties");

		try {
			properties.load(inputStream);
			LOGGER.info("database properties loaded successfully.");
			
			String driverClass = properties.getProperty("db.driverclass");
			String connectionUrl = properties.getProperty("db.connectionurl");
			String username = properties.getProperty("db.username");
			String password = properties.getProperty("db.password");

			Class.forName(driverClass);
			con = DriverManager.getConnection(connectionUrl, username, password);

			customerLoginPreparedStatement = con.prepareStatement(CustomerSQL.LOGIN_CUSTOMER);
			customerRegisterPreparedStatement = con.prepareStatement(CustomerSQL.REGISTER_CUSTOMER);
			customerSessionUpdatePreparedStatement = con.prepareStatement(CustomerSQL.CUSTOMER_SESSION_UPDATE);
			customerDetailsUpdatePreparedStatement = con.prepareStatement(CustomerSQL.CUSTOMER_DETAILS_UPDATE);
			customerPasswordUpdatePreparedStatement = con.prepareStatement(CustomerSQL.CUSTOMER_PASSWORD_UPDATE);
			selectAllCustomersPreparedStatement = con.prepareStatement(CustomerSQL.ALL_CUSTOMER_DETAILS);

		} catch (IOException ioe) {
			LOGGER.error(ioe);
		} catch (ClassNotFoundException cnfEx) {
			LOGGER.error(cnfEx);
		} catch (SQLException sqlEx) {
			LOGGER.error(sqlEx);
		}
	}

	/*
	 * This method is used to create a Prepared statement
	 */

	protected PreparedStatement getCustomerPreparedStatement(String process) {
		if (process.equals("LOGIN")) {
			return customerLoginPreparedStatement;
		} else if (process.equals("REGISTER")) {
			return customerRegisterPreparedStatement;
		} else if (process.equals("UPDATE_SESSION")) {
			return customerSessionUpdatePreparedStatement;
		} else if (process.equals("UPDATE_CUSTOMER")) {
			return customerDetailsUpdatePreparedStatement;
		} else if (process.equals("UPDATE_PASSWORD")) {
			return customerPasswordUpdatePreparedStatement;
		} else if (process.equals("RETRIEVE_ALL_CUSTOMERS")) {
			return selectAllCustomersPreparedStatement;
		}
		return null;
	}

	/*
	 * This method is used to create a statement
	 */

	protected Statement openStatement() {
		Statement stmt = null;
		try {
			stmt = con.createStatement();
		} catch (SQLException sqlEx) {
			LOGGER.error(sqlEx);
		}

		return stmt;
	}

	/*
	 * This method is used to close a Database Connection.
	 */

	protected void closeConnection() {
		try {
			if (con != null) {
				con.close();
			}
		} catch (SQLException sqlEx) {
			LOGGER.error(sqlEx);
		}
	}

	/*
	 * This method is used to close a statement.
	 */

	protected void closeStatement(Statement stmt) {
		try {
			if (stmt != null) {
				stmt.close();
			}
		} catch (SQLException sqlEx) {
			LOGGER.error(sqlEx);
		}
	}

	/*
	 * This method is used to close a Prepared statement.
	 */

	protected void closePreparedStatement(PreparedStatement pStmt) {
		try {
			if (pStmt != null) {
				pStmt.close();
			}
		} catch (SQLException sqlEx) {
			LOGGER.error(sqlEx);
		}
	}
	/*
	 * This method is used to close a ResultSet.
	 */

	protected void closeResultSet(ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException sqlEx) {
			LOGGER.error(sqlEx);
		}
	}
}
