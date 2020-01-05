package com.tadigital.trainingproject.customer.dao;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.tadigital.trainingproject.customer.entity.Customer;

import java.sql.SQLException;

public class CustomerDao {
	public boolean selectCustomerByEmailAndPassword(Customer customer,String sql) {
		boolean status=false;
		
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_project","root","");
			stmt=con.createStatement();
			if(sql.equals("")) {
				 sql="SELECT * FROM customer_info WHERE cust_email='"+customer.getEmail()+"' AND cust_pwd='"+customer.getPassword()+"'";	
			}
			rs=stmt.executeQuery(sql);
			if(rs.next())
			{
				status=true;
				
				customer.setId(rs.getInt(1));
				customer.setFirstName(rs.getString(2));
				customer.setLastName(rs.getString(3));
				customer.setDateOfBirth(rs.getString(4));
			}
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
		
		return status;
	}
	
	public boolean insertCustomer(Customer customer) {
		boolean status=false;
		
		Connection con=null;
		Statement stmt=null;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_project","root","");
			stmt=con.createStatement();
			String sql="INSERT INTO customer_info(cust_fname,cust_email,cust_pwd) VALUES('"+customer.getFirstName()+"','"+customer.getEmail()+"','"+customer.getPassword()+"')";
			int row=stmt.executeUpdate(sql);
			if(row!=0)
			{
				status=true;
			}
	    }
		catch(ClassNotFoundException cnfEx) {
			cnfEx.printStackTrace();
		}catch(SQLException sqlEx) {
			sqlEx.printStackTrace();
		}finally {
			try {
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
		
		return status;
	}
	
	public boolean updateSession(String email,String sesId) {
		boolean status=false;
		
		Connection con=null;
		Statement stmt=null;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_project","root","");
			stmt=con.createStatement();
			String sql="UPDATE customer_info SET cust_sesid='"+sesId+"' WHERE cust_email='"+email+"'";
		
			int row=stmt.executeUpdate(sql);
			if(row!=0)
			{
				status=true;
			}
	    }
		catch(ClassNotFoundException cnfEx) {
			cnfEx.printStackTrace();
		}catch(SQLException sqlEx) {
			sqlEx.printStackTrace();
		}finally {
			try {
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
		
		return status;
	}
	
	public boolean updateCustomerDetails(Customer customer) {
		boolean status=false;
		
		Connection con=null;
		Statement stmt=null;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_project","root","");
			stmt=con.createStatement();
			
			String sql="UPDATE customer_info SET cust_fname='"+customer.getFirstName()+"',cust_lname='"+customer.getLastName()+
						"',cust_dob='"+customer.getDateOfBirth()+"',cust_gender='"+customer.getGender()+"',cust_address='"+customer.getAddress()+"',cust_city='"+customer.getCity()+"',cust_zip="
						+customer.getZip()+",cust_state='"+customer.getState()+"',cust_country='"+customer.getCountry()+"',cust_mobile="+customer.getMobile()+" WHERE cust_email='"+customer.getEmail()+"'";
			int row=stmt.executeUpdate(sql);
			if(row!=0)
			{
				status=true;
			}
	    }
		catch(ClassNotFoundException cnfEx) {
			cnfEx.printStackTrace();
		}catch(SQLException sqlEx) {
			sqlEx.printStackTrace();
		}finally {
			try {
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
		
		return status;
	}
	
	public boolean updatePassword(Customer customer) {
		boolean status=false;
		
		Connection con=null;
		Statement stmt=null;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_project","root","");
			stmt=con.createStatement();
					String sql="UPDATE customer_info SET cust_pwd='"+customer.getNewPassword()+"' WHERE cust_email='"+customer.getEmail()+"'";
					int row=stmt.executeUpdate(sql);
					if(row!=0)
					{
						status=true;
					}
			
	    }
		catch(ClassNotFoundException cnfEx) {
			cnfEx.printStackTrace();
		}catch(SQLException sqlEx) {
			sqlEx.printStackTrace();
		}finally {
			try {
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
		
		return status;
	}
	
	
	public ArrayList<Customer> selectAllCustomers() {
		ArrayList<Customer> customersList=new ArrayList<Customer>();
		
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/training_project","root","");
			stmt=con.createStatement();
			String sql="SELECT * FROM customer_info";
			rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				Customer customer=new Customer();
				
				customer.setId(rs.getInt(1));
				customer.setFirstName(rs.getString(2));
				customer.setLastName(rs.getString(3));
				customer.setDateOfBirth(rs.getString(4));
				customer.setEmail(rs.getString(5));
				customer.setPassword(rs.getString(6));
				
				customersList.add(customer);
			}
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
		
		return customersList;
	}
	
}
