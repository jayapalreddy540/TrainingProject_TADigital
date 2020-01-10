package com.tadigital.trainingproject.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class Dao {

	/*
	 * Propertied class Object containing database connectivity details.
	 */
	private static final Properties properties = new Properties();

	/*
	 * This static block is used to load the Driver class.
	 */
	static {
		InputStream inputStream = Thread.currentThread().getContextClassLoader().getResourceAsStream("db.properties");

		try {
			properties.load(inputStream);
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}

		try {
			String driverClass = properties.getProperty("db.driverclass");

			Class.forName(driverClass);
		} catch (ClassNotFoundException cnfEx) {
			cnfEx.printStackTrace();
		}
	}

	/*
	 * This method is used to create a Database Connection.
	 */

	protected Connection getConnection() {
		Connection con = null;

		try {

			String connectionUrl = properties.getProperty("db.connectionurl");
			String username = properties.getProperty("db.username");
			String password = properties.getProperty("db.password");

			con = DriverManager.getConnection(connectionUrl, username, password);
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		}

		return con;
	}

	/*
	 * This method is used to create a statement
	 */

	protected Statement getStatement(Connection con) {
		Statement stmt = null;

		try {
			stmt = con.createStatement();
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		}

		return stmt;
	}

	/*
	 * This method is used to close a Database Connection.
	 */

	protected void closeConnection(Connection con) {
		try {
			if (con != null) {
				con.close();
			}
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
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
			sqlEx.printStackTrace();
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
			sqlEx.printStackTrace();
		}
	}
}
