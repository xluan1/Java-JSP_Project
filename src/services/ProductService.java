package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import models.Product;

public class ProductService {
	

	public List<Product> getProductItems(Connection conn) {
		List<Product> list = new ArrayList<Product>();
		try {
			String sql = "SELECT * FROM products WHERE  hot_new=true and cover= false and trend=true";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				double price = rs.getDouble("price");
				String image = rs.getString("image");
				Product product = new Product(id, title, image, price);
				list.add(product);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list; 
	}
	
	public List<Product> getApparel(Connection conn) {
		List<Product> list = new ArrayList<Product>();
		try {
			String sql = "SELECT * FROM products WHERE hot_deal=true and hot_new=true and cover= false "
					+ "and category = '1'";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String address = rs.getString("address");
				String image = rs.getString("image");
				Product product = new Product(id, title, image, address);
				list.add(product);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list; 
	}

	public Product getBestApparel(Connection conn) {
		Product product = null;
		try {
			String sql = "SELECT * FROM products WHERE hot_new = false and cover = true and category = '1' "
					+ " and hot_best = true and hot_deal=false";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			rs.next();
			int id = rs.getInt("id");
			String title = rs.getString("title");
			String description = rs.getString("description");
			double price = rs.getDouble("price");
			String image = rs.getString("image");
			product = new Product(id, title, description, image, price);
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return product;
	}
	
	public Product getBestElectronic(Connection conn) {
		Product product = null;
		try {
			String sql = "SELECT * FROM products WHERE hot_new = false and cover = true and category = '2' "
					+ " and hot_best = false ";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			rs.next();
			int id = rs.getInt("id");
			String title = rs.getString("title");
			String description = rs.getString("description");
			double price = rs.getDouble("price");
			String image = rs.getString("image");
			product = new Product(id, title, description, image, price);
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return product;
	}

	public List<Product> getElectronic(Connection conn) {
		List<Product> list = new ArrayList<Product>();
		try {
			String sql = "SELECT * FROM products WHERE hot_deal=true and hot_new=true and cover= false "
					+ "and category = '2'";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String address = rs.getString("address");
				String image = rs.getString("image");
				Product product = new Product(id, title, image, address);
				list.add(product);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list; 
	}

	public List<Product> getCategory(Connection conn) {
		List<Product> list = new ArrayList<Product>();
		try {
			String sql = "SELECT * FROM products WHERE hot_deal=false and hot_new=false and cover= true ";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String catname = rs.getString("catname");
				String image = rs.getString("image");
				
				Product product = new Product(id, catname, image);
				list.add(product);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list; 
	}
	
	public List<Product> getCategoryDeal(Connection conn) {
		List<Product> list = new ArrayList<Product>();
		try {
			String sql = "SELECT * FROM products WHERE hot_best=true and latest_review =true and hot_deal= true";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String catname = rs.getString("catname");
				String image = rs.getString("image");
				int discount = rs.getInt("discount");
				
				Product product = new Product(id, catname, image, discount);
				list.add(product);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list; 
	}
	
	public  Product getProduct(Connection conn, int id)  {
		Product product= null;
		 try {
			 String sql = "SELECT * FROM products WHERE  id  = ?";
			 PreparedStatement pstm = conn.prepareStatement(sql);			 			 			 
			 pstm.setInt(1, id);
			 ResultSet rs = pstm.executeQuery();
			 rs.next();			 
		    	double price = rs.getDouble("price");
		    	double price_net = rs.getDouble("price_net");
		    	String title = rs.getString("title");
		    	String description = rs.getString("description");
		    	String manufacturer = rs.getString("manufacturer");
		    	int article_number = rs.getInt("article_number");
		    	String guarantee = rs.getString("guarantee");
		    	String delivery_time = rs.getString("delivery_time");
		    	String availability = rs.getString("availability");          
		    	String image = rs.getString("image");   
	         product = new Product(id, price, price_net, title, description, manufacturer, article_number,
	        		 guarantee, delivery_time, availability, image);
	            	        
		 } catch (SQLException ex) {
			 ex.printStackTrace();      
		 }
		 return product;
	} 
	
}