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
		//System.out.println("here");
		
		
		
		
		if(request.getParameter("viewcart")!= null || request.getParameter("addtocart")!=null)
		{
		String[] names = request.getParameterValues("products");
		
		ArrayList<Product> products = new ArrayList<>();
		
		
		
		if((ArrayList<Product>)(request.getSession().getAttribute("productInfo"))!=null)
		{
			ArrayList<Product> basket = (ArrayList<Product>)(request.getSession().getAttribute("productInfo"));
			for(int i = 0; i<basket.size(); i++)
			{
				products.add(basket.get(i));
			}
		}
		
		if(request.getParameter("addtocart")!=null)
		{
		if(names != null)
		{
			//products = ConnectDb.getProdList(names);
			//ArrayList<Product> result = ConnectDb.getProdList(names);
			ArrayList<Product> result = HibernateConnect.getProdList(names);
			
			
			for(int i = 0; i<result.size(); i++)
			{
				products.add(result.get(i));
			}
					
		}
		
		}
		
		HttpSession session = request.getSession();
		
		session.setAttribute("productInfo", products);
		
		RequestDispatcher view = request.getRequestDispatcher("checkout.jsp");
	    view.forward(request, response);
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
