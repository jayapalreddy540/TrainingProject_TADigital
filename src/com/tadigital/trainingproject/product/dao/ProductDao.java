package com.tadigital.trainingproject.product.dao;

import java.sql.SQLException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.tadigital.trainingproject.dao.Dao;
import com.tadigital.trainingproject.product.entity.Product;

public class ProductDao extends Dao {

	/*
	 * This method is used to retrieve all the Products.
	 */

	public ArrayList<Product> selectAllProducts() {
		ArrayList<Product> productsList = new ArrayList<Product>();

		Connection con = getConnection();
		Statement stmt = getStatement(con);
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM product_info";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				Product product = new Product();
				product.setId(rs.getInt(1));
				product.setName(rs.getString(2));
				product.setPrice(rs.getDouble(3));

				productsList.add(product);
			}
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		} finally {
			closeResultSet(rs);
			closeStatement(stmt);
			closeConnection(con);
		}

		return productsList;
	}
}
