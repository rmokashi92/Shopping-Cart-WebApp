package com.data;

import java.sql.*;
import java.util.ArrayList;

import com.demo.model.Login;
import com.demo.model.User;

public class ConnectDb {
	
	static Connection con;
	static PreparedStatement ps;

	
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
		
		ps = con.prepareStatement("insert into user_login values (?,?);");
		ps.setString(1, u.getUname());
		ps.setString(2, u.getPassword());
		
		ps.executeUpdate();
		
		System.out.println("Inserted Successfully");
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	
	public static User sessionInfo(String uname)
	{
		
		String fname = new String();
		String lname = new String();
		String email = new String();
		String pwd = new String();
		
		try
		{
			ps = con.prepareStatement("select * from user_table where uname = ?;");
			ps.setString(1, uname);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				 fname = rs.getString("fname");
				 lname = rs.getString("lname");
				 email = rs.getString("email");
				 pwd = rs.getString("password");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return new User(fname,lname,uname,email,pwd);
	}
	
	
	public boolean validate(Login u) {
		// TODO Auto-generated method stub
		String pwd = new String();
		
		try
		{
			if(u.getUname().equals(""))
			{
				return false;
			}
			
			ps = con.prepareStatement("select password from user_login where uname = ?;");
			ps.setString(1, u.getUname());
			
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				 pwd = rs.getString("password");
			}
			
			if(pwd.equals(u.getPassword()))
			{
				return true;
			}
			else
			{
				return false;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
		
	}



	public static void addWish(String uname, String[] names) {
		// TODO Auto-generated method stub
		int length = names.length;
		
		for(int i = 0; i<length; i++)
		{
			try{
				ps = con.prepareStatement("insert into wishlist (uname,product) values(?,?);");
				ps.setString(1, uname);
				ps.setString(2, names[i]);
				
				ps.executeUpdate();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		
		
	}



	public static ArrayList<String> getWishList(String uname) {
		// TODO Auto-generated method stub
		ArrayList<String> result = new ArrayList<>();
		
		try{
			ps = con.prepareStatement("select * from wishlist where uname = ?;");
			ps.setString(1, uname);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				result.add(rs.getString("product"));
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return result;
		
	}
	
	
	
}
