package com.demo.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

import com.data.HibernateConnect;
//import com.data.ConnectDb;
import com.demo.model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Configuration config = new AnnotationConfiguration().configure();
		
		SessionFactory factory = config.buildSessionFactory();
		Session sess = factory.openSession();
		
		
		
		
		HttpSession session = request.getSession();
		
	  
		
		//User userInfo = ConnectDb.sessionInfo(response.getHeader("uname"));
		User userInfo = HibernateConnect.sessionInfo(response.getHeader("uname"));
		
		
		session.setAttribute("userInfo", userInfo);
		session.setAttribute("uname", userInfo.getFname());
		
		Cookie ck=new Cookie("name",userInfo.getFname());  
        response.addCookie(ck);
		
		RequestDispatcher view = request.getRequestDispatcher("Home.jsp");
	    view.forward(request, response);
	    
	}

}
