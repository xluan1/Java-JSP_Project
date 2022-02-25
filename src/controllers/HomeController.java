package controllers;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Product;
import models.Trade;
import models.UserAccount;
import services.DatabaseService;
import services.ProductService;
import services.TradeService;
import utils.CookieUtilities;

public class HomeController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		Connection conn = DatabaseService.getConnection();
		
		ProductService productService = new ProductService();
		List<Product> reitems = productService.getProductItems(conn);
		request.setAttribute("reitems", reitems);
		List<Product> catApparel = productService.getApparel(conn);
		request.setAttribute("catApparel", catApparel);
		List<Product> catElec = productService.getElectronic(conn);
		request.setAttribute("catElec", catElec);
		List<Product> cate = productService.getCategory(conn);
		request.setAttribute("cate", cate);
		List<Product> catDeal = productService.getCategoryDeal(conn);
		request.setAttribute("catDeal", catDeal);
		
		Product bestApparel = productService.getBestApparel(conn);
		request.setAttribute("bestApparel", bestApparel);
		Product bestElec = productService.getBestElectronic(conn);
		request.setAttribute("bestElec", bestElec);
		
		TradeService tradeService = new TradeService();
		List<Trade> services = tradeService.getTrade(conn);
		request.setAttribute("services", services);
		
		
		
		
		String errorString = null; List<Product> list = null;
		try {
			list= DatabaseService.queryProduct(conn);
		}
		catch(SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		}
		HttpSession session = request.getSession();
		UserAccount loginedUser = CookieUtilities.getLoginedUser(session);
		request.setAttribute("loginedUser", loginedUser);
		request.setAttribute("errorString", errorString);
		request.setAttribute("productList", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/home/home.jsp");
		dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
			doGet(request,response);
		}
	
}