package utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.UserAccount;



public class CookieUtilities {
	public static final String ATT_NAME_CONNECTION = "ATTRIBUTE_FOR_CONNECTION";
		private static final String ATT_NAME_USER_NAME=
			"ATTRIBUTE_FOR_STORE_USER_IN_COOKIE";
		public static void storeLoginUser(HttpSession session, UserAccount loginedUser) {
			session.setAttribute("loginedUser",loginedUser);
		}
		public static UserAccount getLoginedUser(HttpSession session) {
			UserAccount loginedUser = (UserAccount) session.getAttribute("loginedUser");
			return loginedUser;
		}
		public static void storeUserCookie(HttpServletResponse response, UserAccount user) {
			System.out.println("Store user cookie");
			Cookie cookieUserName= new Cookie(ATT_NAME_USER_NAME, user.getUserName());
			cookieUserName.setMaxAge(24*60*60);
			response.addCookie(cookieUserName);
		}
	public static String getUserNameInCookie(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie cookie:cookies) {
				if(ATT_NAME_USER_NAME.equals(cookie.getName())) {
					return cookie.getValue();
				}
			}
		}
		return null;
	}
	public static void deleteUserCookie(HttpServletResponse response) {
		Cookie cookieUserName = new Cookie(ATT_NAME_USER_NAME,null);
		cookieUserName.setMaxAge(0);
		response.addCookie(cookieUserName);
	}
}
