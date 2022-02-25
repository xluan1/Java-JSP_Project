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

public class RegisterController extends HttpServlet {
private static final long serialVersionUID = 1L;
	
	public RegisterController() {
		super();
	}
	@Override
	protected void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException, IOException{
		RequestDispatcher dispatcher
			=this.getServletContext().getRequestDispatcher("/WEB-INF/views/account/register.jsp");
		dispatcher.forward(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		response.setContentType("text/html;charset=UTF-8");
		
		String userName= request.getParameter("userName");
		String first_name= request.getParameter("first_name");
		String last_name= request.getParameter("last_name");
		String password= request.getParameter("password");
		String re_pass= request.getParameter("re_pass");
		String email = request.getParameter("email");
		
		UserAccount user= null; boolean hasError= false; String errorString= null;
		if(first_name==null || password==null || first_name.length()==0 || password.length()==0 || last_name==null ||
				last_name.length()==0 || re_pass==null || re_pass.length()==0 || email==null || email.length()==0) {
			hasError=true;
			errorString= "Bắt buộc nhập thông tin đầy đủ!";
		}
		else {
			Connection conn= DatabaseService.getConnection();
			try {
				user= DatabaseService.checkAccountExist(conn, userName);
				if(user==null) {
					hasError=false;
					errorString="Tên người dùng chưa có";
				}
			}
			catch(SQLException e) {
				e.printStackTrace();
				hasError=true;
				errorString= e.getMessage();
			}
		}
		
		if(hasError == true) {
			user= new UserAccount();
			user.setUserName(userName);
			user.setPassword(password);
			user.setEmail(email);
			user.setFirstName(first_name);
			user.setLastName(last_name);
			
			request.setAttribute("errorString", errorString);
			request.setAttribute("user", user);
			RequestDispatcher dispatcher  //
				= this.getServletContext().getRequestDispatcher("/WEB-INF/views/account/login.jsp");
			dispatcher.forward(request, response);
		}
		else {
			HttpSession session = request.getSession();
			CookieUtilities.storeLoginUser(session, user);
			RequestDispatcher dispatcher  //
			= this.getServletContext().getRequestDispatcher("/WEB-INF/views/account/register.jsp");
		dispatcher.forward(request, response);
		}
	}
	
}
