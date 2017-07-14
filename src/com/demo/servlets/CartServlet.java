package com.demo.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

import com.data.HibernateConnect;
import com.demo.model.CartState;
//import com.data.ConnectDb;
import com.demo.model.Product;
import com.demo.model.User;
import com.demo.model.WishList;



/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		//boolean isUser = false;
		
		for(int i = 1;i<8;i++)
		{
			if(request.getParameter("Drop"+i)!=null)
			{
				ArrayList<CartState> deleteCart = (ArrayList<CartState>)(request.getSession().getAttribute("cartinfo"));
				int length = deleteCart.size();
				int del_index = i;
				boolean isdeleted = false;
				
				for(int j = 0; j<length; j++)
				{
					if(deleteCart.get(j).getProdinfo().getId() == del_index)
					{
						deleteCart.remove(j);
						isdeleted = true;
					}
					if(isdeleted)
					{
						break;
					}
				}
				HttpSession session = request.getSession();
				
				session.setAttribute("cartinfo", deleteCart);
				if(session.getAttribute("uname")!=null){
					RequestDispatcher view = request.getRequestDispatcher("checkout.jsp");
				    view.forward(request, response);
					}
					else{
						RequestDispatcher view = request.getRequestDispatcher("guestCheckout.jsp");
					    view.forward(request, response);
					}
				
				
			}
		}
		
		
		
		
		if(request.getParameter("viewcart")!= null || request.getParameter("addtocart")!=null)
		{
		String[] names = request.getParameterValues("products");
		
		ArrayList<Product> products = new ArrayList<>();
		
		ArrayList<CartState> prodcount = new ArrayList<>();
		
		
		
		if((ArrayList<CartState>)(request.getSession().getAttribute("cartinfo"))!=null)
		{
			ArrayList<CartState> basket = (ArrayList<CartState>)(request.getSession().getAttribute("cartinfo"));
			for(int i = 0; i<basket.size(); i++)
			{
				prodcount.add(basket.get(i));
			}
		}
		
		if(request.getParameter("addtocart")!=null)
		{
		if(names != null)
		{
			//products = ConnectDb.getProdList(names);
			//ArrayList<Product> result = ConnectDb.getProdList(names);
			ArrayList<Product> result = HibernateConnect.getProdList(names);
			
			
			if(prodcount.isEmpty())
			{
				for(int i = 0; i<result.size(); i++)
				{
					CartState cs = new CartState(result.get(i), 1);
					prodcount.add(cs);
				}
				 
			}
			else{
				boolean flag = false;
				for(int i = 0; i<result.size(); i++)
				{
					for(int j = 0; j<prodcount.size();j++)
					{
						if(result.get(i).getName().equals(prodcount.get(j).getProdinfo().getName())){
							int count = prodcount.get(j).getCount();
							prodcount.get(j).setCount(count+1);
							flag = true;
						}
						
					}
					if(!flag)
					{
							CartState cs = new CartState(result.get(i), 1);
							prodcount.add(cs);
					}
				}
			}
			
			
			
			/*for(int i = 0; i<result.size(); i++)
			{
				products.add(result.get(i));
			}*/
					
		}
		
		}
		
		HttpSession session = request.getSession();
		
		session.setAttribute("productInfo", products);
		session.setAttribute("cartinfo", prodcount);
		
		if(session.getAttribute("uname")!=null){
		RequestDispatcher view = request.getRequestDispatcher("checkout.jsp");
	    view.forward(request, response);
		}
		else{
			RequestDispatcher view = request.getRequestDispatcher("guestCheckout.jsp");
		    view.forward(request, response);
		}
		}
		else if(request.getParameter("viewwish")!= null || request.getParameter("wish")!=null)
		{
			HttpSession session = request.getSession();
			User u = (User)session.getAttribute("userInfo");
			
			if(request.getParameter("wish")!=null)
			{
				String[] names = request.getParameterValues("products");
				if(names!=null)
				{
					HibernateConnect.addWish(u.getUname(), names);
				}
			}	
			ArrayList<Product> wish = new ArrayList<>();
			wish = HibernateConnect.getWishList(u.getUname());			
			
			session.setAttribute("wishInfo", wish);
			//request.setAttribute("List", wish);
			RequestDispatcher view = request.getRequestDispatcher("wishList.jsp");
		    view.forward(request, response);
		
		
		
		}
	}

}
