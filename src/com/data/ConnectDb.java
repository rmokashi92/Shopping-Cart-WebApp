package com.data;

import java.sql.*;

import com.demo.model.User;

public class ConnectDb {
	
	Connection con;
	PreparedStatement ps;

	
	public ConnectDb() {
		// TODO Auto-generated constructor stub
				
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/mydata","root","password");
			
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	
	public void registerNewUser(User u)
	{
		try{
		ps = con.prepareStatement("insert into user_table (fname,lname,uname,email,password)"
				+ "values(?,?,?,?,?);");
		ps.setString(1,u.getFname());
		ps.setString(2,u.getLname());
		ps.setString(3,u.getUname());
		ps.setString(4,u.getEmail());
		ps.setString(5,u.getPassword());
		
		ps.executeUpdate();
		
		System.out.println("Inserted Successfully");
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	
	
}
