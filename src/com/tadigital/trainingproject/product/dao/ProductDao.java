package com.tadigital.trainingproject.product.dao;

import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.tadigital.trainingproject.product.entity.Product;

public class ProductDao {
	public ArrayList<Product> selectAllProducts() {
		ArrayList<Product> productsList=new ArrayList<Product>();
		
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_project","root","");
			stmt=con.createStatement();
			String sql="SELECT * FROM product_info";
			rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				Product product=new Product();
				product.setId(rs.getInt(1));
				product.setName(rs.getString(2));
				product.setPrice(rs.getDouble(3));
				
				productsList.add(product);
			}
			System.out.println("Total Customers : " + productsList.size());
	    }
		catch(ClassNotFoundException cnfEx) {
			cnfEx.printStackTrace();
		}catch(SQLException sqlEx) {
			sqlEx.printStackTrace();
		}finally {
			try {
				if(rs!=null) {
					rs.close();
				}
				if(stmt!=null) {
					stmt.close();
				}
				if(con!=null) {
					con.close();
				}
			}catch(SQLException sqlEx) {
				sqlEx.printStackTrace();
			}
		}
		
		return productsList;
	}
	
}
