package com.tadigital.trainingproject.product.service;

import java.util.ArrayList;

import com.tadigital.trainingproject.product.dao.ProductDao;
import com.tadigital.trainingproject.product.entity.Product;

public class ProductService {
	ProductDao productDao=new ProductDao();
	public ArrayList<Product> getAllProducts() {
		ArrayList<Product> productsList=productDao.selectAllProducts();
		
		return productsList;
	}

}
