package com.tadigital.trainingproject.product.service;

import java.util.ArrayList;

import com.tadigital.trainingproject.product.dao.ProductDao;
import com.tadigital.trainingproject.product.entity.Product;

/*
 * This class is used for retrieving the details of all products.
 */
public class ProductService {
	ProductDao productDao = new ProductDao();

	public ArrayList<Product> getAllProducts() {
		return productDao.selectAllProducts();
	}
}
