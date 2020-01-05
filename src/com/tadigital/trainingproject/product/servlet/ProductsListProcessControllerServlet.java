package com.tadigital.trainingproject.product.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tadigital.trainingproject.product.entity.Product;
import com.tadigital.trainingproject.product.service.ProductService;

public class ProductsListProcessControllerServlet extends HttpServlet{
		ProductService productService=new ProductService();
		
		@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			ArrayList<Product> productsList=productService.getAllProducts();
			
			req.setAttribute("PRODUCTSLIST", productsList);
			RequestDispatcher rd=req.getRequestDispatcher("ProductsList.jsp");
			rd.forward(req, resp);
					
		}

}

