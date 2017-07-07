package com.data;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

import com.demo.model.Login;
import com.demo.model.Product;
import com.demo.model.User;
import com.demo.model.WishList;

public class HibernateConnect {
	
	
	static Configuration config = new AnnotationConfiguration().configure();
	
	static SessionFactory factory = config.buildSessionFactory();
	static Session sess = factory.openSession();
	static Transaction transaction = sess.beginTransaction();
	
	public static ArrayList<Product> getProdList(String[] names){
		
		ArrayList<Product> result = new ArrayList<>();
	
		
		int length = names.length;
		for(int i = 0; i<length; i++)
		{
			Query query = sess.createQuery("from Product where name = :pname");
			query.setParameter("pname", names[i]);
			List<Product> list = query.list();
			
			for(Product p : list)
			{
				result.add(p);
			}
		}
		return result;
	}

	public static void addWish(String uname, String[] names) {
		int length = names.length;
		
		ArrayList<String> newnames = new ArrayList<>();
		Query query = sess.createQuery("from WishList where uname = :name");
		query.setParameter("name", uname);
		List<WishList> list = query.list();
		int size = list.size();
		boolean flag = false;
		
		for(int i = 0; i<length ; i++)
		{
			for(int j = 0; j<size; j++)
			{
				if(names[i].equals(list.get(j).getProduct()))
				{
					flag = true;
				}
			}
			if(!flag){
			newnames.add(names[i]);
			}
		}
		
		length = newnames.size();
		
		for(int i = 0; i< length; i ++)
		{
			
			//sess.beginTransaction();
			WishList w = new WishList(uname,newnames.get(i));
			sess.save(w);
			if(!transaction.wasCommitted())
			{
				transaction.commit();
			}
		}
		
	}

	public static ArrayList<Product> getWishList(String uname) {
		// TODO Auto-generated method stub
		ArrayList<Product> result = new ArrayList<>();
		ArrayList<String> names = new ArrayList<>();
		
		try{
			
			
			Query query = sess.createQuery("from WishList where uname = :pname");
			query.setParameter("pname", uname);
			
			
			List<WishList> wishes = query.list();
			
			int length = wishes.size();
			for(int i = 0; i<length ; i++)
			{
				names.add(wishes.get(i).getProduct());
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		String[] namearr = new String[names.size()];
		for(int i = 0;i<names.size(); i++)
		{
			namearr[i] = names.get(i);
		}
		
		result = getProdList(namearr);
		
		
		return result;
	}

	public static User sessionInfo(String uname) {
		// TODO Auto-generated method stub
		User myuser = null;
		try
		{
			/*ps = con.prepareStatement("select * from user_table where uname = ?;");
			ps.setString(1, uname);*/
			
			Query query = sess.createQuery("from User where uname = :name");
			query.setParameter("name", uname);
			List<User> list = query.list();
			myuser = list.get(0);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return myuser;
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
			
			/*ps = con.prepareStatement("select password from user_login where uname = ?;");
			ps.setString(1, u.getUname());*/
			
			Query query = sess.createQuery("from Login where uname = :name");
			query.setParameter("name", u.getUname());
			List<Login> login = query.list();
			
			pwd = login.get(0).getPassword();
			
			/*ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				 pwd = rs.getString("password");
			}*/
			
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
	
	
	public void registerNewUser(User u)
	{
		try{
		/*ps = con.prepareStatement("insert into user_table (fname,lname,uname,email,password)"
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
		*/
		sess.save(u);
		Login log = new Login(u.getUname(),u.getPassword());
		sess.save(log);
		if(!transaction.wasCommitted())
		{
			transaction.commit();
		}
		System.out.println("Inserted Successfully");
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	
	
	
	
}
