package com.jlcindia.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "showMyCart",urlPatterns = "/showMyCart.jlc")
public class ShowCartServlet extends HttpServlet {

	public void service(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		
		System.out.println("---ShowCartServlet----");
		
	    //No Imput Data
		
		//2. Do Processing
		String page="showCart.jsp";
	
//		HttpSession session = request.getSession();
//		List<String> mycart = (List<String>)session.getAttribute("MyCart");
//		System.out.println(mycart);
		
		//3. Forward
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request,response);
	}
}


