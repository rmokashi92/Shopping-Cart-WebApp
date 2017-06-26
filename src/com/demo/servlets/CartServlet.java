package com.demo.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



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
		String[] names = request.getParameterValues("products");
		ArrayList<String> products = new ArrayList<>();
		
		if((ArrayList<String>)(request.getSession().getAttribute("productInfo"))!=null)
		{
			ArrayList<String> basket = (ArrayList<String>)(request.getSession().getAttribute("productInfo"));
			for(int i = 0; i<basket.size(); i++)
			{
				products.add(basket.get(i));
			}
		}
		
		
		if(names.length>0)
		{
			for(int i = 0; i < names.length; i++)
			{
				products.add(names[i]);
			}
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("productInfo", products);
		//session.putValue("productInfo",products );
		
		RequestDispatcher view = request.getRequestDispatcher("checkout.jsp");
	    view.forward(request, response);
		
		
		
		
	}

}
