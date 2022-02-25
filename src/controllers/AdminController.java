package controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Product;
import models.UserAccount;
import services.DatabaseService;
import utils.CookieUtilities;



public class AdminController {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserAccount loginedUser = CookieUtilities.getLoginedUser(session);
		if(loginedUser == null) {
			response.sendRedirect(request.getContextPath() + "/login");
			return;
		}
		Connection conn= DatabaseService.getConnection();
		String errorString =null; List<Product> list=null;
		try {
			list= DatabaseService.queryProduct(conn);
		}
		catch(SQLException e) {
			e.printStackTrace();
			errorString= e.getMessage();
		}
		
		request.setAttribute("errorString", errorString);
		request.setAttribute("productList", list);
		
		
		
		RequestDispatcher dispatcher= request.getServletContext()
				.getRequestDispatcher("/WEB-INF/views/account/admin.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException,IOException{
			doGet(request,response);
	}
}
