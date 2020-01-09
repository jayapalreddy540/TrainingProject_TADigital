package com.tadigital.trainingproject.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Dao {

	/*
	 * This static block is used to load the Driver class.
	 */
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException cnfEx) {
			cnfEx.printStackTrace();
		}
	}

	/*
	 * This method is used to create a Database Connection.
	 */

	public Connection getConnection() {
		Connection con = null;

		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/training_project", "root", "");
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		}

		return con;
	}

	/*
	 * This method is used to create a statement
	 */

	public Statement getStatement(Connection con) {
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

	public void closeConnection(Connection con) {
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

	public void closeStatement(Statement stmt) {
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

	public void closeResultSet(ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		}
	}
}
