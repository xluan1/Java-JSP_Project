package controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.UserAccount;
import services.DatabaseService;
import utils.CookieUtilities;




public class LoginController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public LoginController() {
		super();
	}
	@Override
	protected void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException{
		RequestDispatcher dispatcher
			=this.getServletContext().getRequestDispatcher("/WEB-INF/views/account/login.jsp");
		dispatcher.forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
			response.setContentType("text/html;charset=UTF-8");
		
			String userName= request.getParameter("userName");
			String password= request.getParameter("password");
			String rememberMeStr= request.getParameter("rememberMe");
			
			boolean remember = "Y".equals(rememberMeStr);
			UserAccount user= null; boolean hasError= false; String errorString= null;
			if(userName==null || password==null || userName.length()==0 || password.length()==0) {
				hasError=true;
				errorString= "Bắt buộc nhập tên người dùng và mật khẩu!";
			}
			else {
				Connection conn= DatabaseService.getConnection();
				try {
					user= DatabaseService.findUser(conn, userName, password);
					if(user==null) {
						hasError=true;
						errorString="Tên người dùng hoặc mật khẩu không đúng";
					}
				}
				catch(SQLException e) {
					e.printStackTrace();
					hasError=true;
					errorString= e.getMessage();
				}
			}
			
			if(hasError) {
				user= new UserAccount();
				user.setUserName(userName);
				user.setPassword(password);
				request.setAttribute("errorString", errorString);
				request.setAttribute("user", user);
				RequestDispatcher dispatcher  //
					= this.getServletContext().getRequestDispatcher("/WEB-INF/views/account/login.jsp");
				dispatcher.forward(request, response);
			}
			else {
				HttpSession session = request.getSession();
				CookieUtilities.storeLoginUser(session, user);
				if(remember) {
					CookieUtilities.storeUserCookie(response, user);
				}
				else {
					CookieUtilities.deleteUserCookie(response);
				}
				RequestDispatcher dispatcher  //
				= this.getServletContext().getRequestDispatcher("/WEB-INF/views/account/admin.jsp");
			dispatcher.forward(request, response);
			}
			
	}
}
