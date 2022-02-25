package controllers;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Product;
import services.DatabaseService;
import services.ProductService;

public class ProductController  extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		int id=Integer.parseInt(request.getParameter("id"));
		Connection conn=DatabaseService.getConnection();
		
		ProductService productService=new ProductService();
		Product product=productService.getProduct(conn, id);
		request.setAttribute("product", product);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("WEB-INF/views/product/productdetail.jsp");
		dispatcher.forward(request, response);
	}
}