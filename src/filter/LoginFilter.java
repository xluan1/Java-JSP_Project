package filter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import models.UserAccount;
import services.DatabaseService;
import utils.CookieUtilities;


public class LoginFilter implements Filter {
	public LoginFilter() {
		
	}
	@Override
	public void init(FilterConfig fConfig) throws ServletException{
		
	}
	@Override
	public void destroy() {
		
	}
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
		throws IOException,ServletException{
			HttpServletRequest req = (HttpServletRequest) request;
			HttpSession session= req.getSession();
			UserAccount userInSession = CookieUtilities.getLoginedUser(session);
			if(userInSession != null) {
				session.setAttribute("COOKIE_CHECKED", "CHECKED");
				chain.doFilter(request, response);
				return;
			}
			Connection conn= DatabaseService.getConnection();
			String checked = (String) session.getAttribute("COOKE_CHECKED");
			if(checked==null && conn!=null) {
				String userName = CookieUtilities.getUserNameInCookie(req);
				try {
					UserAccount user = DatabaseService.findUser(conn, userName);
					CookieUtilities.storeLoginUser(session, user);
				}
				catch(SQLException e) {
					e.printStackTrace();
				}
				session.setAttribute("COOKIE_CHECKED", "CHECKED");
			}
			chain.doFilter(request, response);
	}
}
