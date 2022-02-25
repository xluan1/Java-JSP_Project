package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShowCartController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException{
		RequestDispatcher dispatcher
			=this.getServletContext().getRequestDispatcher("/WEB-INF/views/shoppingcart/cart.jsp");
		dispatcher.forward(request, response);
	}
}
