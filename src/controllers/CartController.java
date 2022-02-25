package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.CartBean;



public class CartController {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws IOException, ServletException{
		response.setContentType("text/html;charset=UTF-8");
		
			String iAction = request.getParameter("action");
			if(iAction != null && !iAction.equals("")) {
				if(iAction.equals("Thêm vào giỏ hàng")) {
					addToCart(request);
				}
				else if(iAction.equals("Update")) {
					updateCart(request);
				}
				else if(iAction.equals("Delete")) {
					deleteCart(request);
				}
			}
			response.sendRedirect("cart.jsp");
	}
	
	protected void addToCart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		String iDescription = request.getParameter("description");
		String iPrice = request.getParameter("price");
		String iQuantity = request.getParameter("quantity");
		
		CartBean cartBean = null;
		
		Object objCartBean = session.getAttribute("cartBean");
		
		if(objCartBean !=null) {
			cartBean = (CartBean) objCartBean;
		}
		else {
			cartBean = new CartBean();
			session.setAttribute("cartBean", cartBean);
		}
		cartBean.addCart(iDescription, iPrice, iQuantity);
	}
	protected void deleteCart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String iSTT = request.getParameter("stt");
		CartBean cartBean = null;
		Object iObject = session.getAttribute("cart");
		if(iObject != null) {
			cartBean = (CartBean) iObject;
		}
		else {
			cartBean = new CartBean();
		}
		cartBean.deleteCart(iSTT);
	}
	protected void updateCart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String iQuantity = request.getParameter("quantity");
		String iSTT = request.getParameter("stt");
		CartBean cartBean = null;
		Object objCartBean = session.getAttribute("cart");
		if(objCartBean != null) {
			cartBean = (CartBean) objCartBean;
		}
		else {
			cartBean = new CartBean();
		}
		cartBean.updateCart(iSTT, iQuantity);
	}
}
