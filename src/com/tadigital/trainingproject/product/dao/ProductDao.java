package com.tadigital.trainingproject.product.dao;

import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.apache.log4j.Logger;

import com.tadigital.trainingproject.dao.Dao;
import com.tadigital.trainingproject.product.entity.Product;

public class ProductDao extends Dao {
	private static final Logger LOGGER = Logger.getLogger(ProductDao.class.getName());

	/*
	 * This method is used to retrieve all the Products.
	 */

	public ArrayList<Product> selectAllProducts() {
		ArrayList<Product> productsList = new ArrayList<Product>();

		Statement stmt = openStatement();
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
			LOGGER.error(sqlEx);
		} finally {
			closeResultSet(rs);
			closeStatement(stmt);
		}

		return productsList;
	}
}
