package services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Product;
import models.UserAccount;

public class DatabaseService {
	public static Connection getConnection(){
		Connection conn = null;
		String loginUser = "postgres";
		String loginPassword = "123";
		String loginUrl = "jdbc:postgresql://localhost/alistyle";
		try{
			Class.forName("org.postgresql.Driver");
			conn = DriverManager.getConnection(loginUrl, loginUser, loginPassword);
		}
		catch(ClassNotFoundException ex) {
			System.out.println("ClassNotFound: " + ex.getMessage());
		}
		catch(SQLException ex) {
			System.out.println("SQLException" + ex.getMessage());
		}
		return conn;
	}
	
	public static void closeQuietly(Connection conn) {
		try {
			conn.close();
		}
		catch(Exception e) {
			
		}
	}
	
	public static void rollbackQuietly(Connection conn) {
		try {
			conn.rollback();
		}
		catch(Exception e) {
			
		}
	}
	
	public static UserAccount findUser(Connection conn,
			String userName, String password) throws SQLException{
		String sql = "SELECT user_name, password, gender, email, name, address, image FROM user_account "
				+ " WHERE user_name = ? and password = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);
		pstm.setString(2, password);
		ResultSet rs = pstm.executeQuery();
		if(rs.next()) {
			String gender = rs.getString("gender");
			String email = rs.getString("email");
			String address = rs.getString("address");
			String name = rs.getString("name");
			String image = rs.getString("image");
			UserAccount user = new UserAccount();
			user.setUserName(userName);
			user.setPassword(password);
			user.setGender(gender);
			user.setEmail(email);
			user.setAddress(address);
			user.setName(name);
			user.setImage(image);
			return user;
		}
		return null;
	}
	
	public static UserAccount findUser(Connection conn, String userName) throws SQLException{
		String sql = "SELECT user_name, password, gender FROM user_account "
				+ " WHERE user_name = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);
		ResultSet rs = pstm.executeQuery();
		if(rs.next()) {
			String password = rs.getString("password");
			String gender = rs.getString("gender");
			UserAccount user = new UserAccount();
			user.setUserName(userName);
			user.setPassword(password);
			user.setGender(gender);
			return user;
		}
		return null;
	}
	
	public static UserAccount checkAccountExist(Connection conn, String userName) throws SQLException{
		String sql = "SELECT user_name, password, gender, name FROM user_account "
				+ " WHERE [user_name] = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);
		ResultSet rs = pstm.executeQuery();
		while(rs.next()) {
			String password = rs.getString("password");
			String gender = rs.getString("gender");
			String name = rs.getString("name");
			UserAccount user = new UserAccount();
			user.setUserName(userName);
			user.setPassword(password);
			user.setName(gender);
			user.setName(name);
			
			return user;
		}
		return null;
	}
	
	public static List<Product>queryProduct(Connection conn) throws SQLException{
		String sql = "SELECT id, title, description, price, price_net FROM products";
		PreparedStatement pstm= conn.prepareStatement(sql);
		ResultSet rs=pstm.executeQuery();
		List<Product>list = new ArrayList<Product>();
		while(rs.next()) {
			int id = rs.getInt("id");
			String title = rs.getString("title");
			String description = rs.getString("description");
			double price = rs.getDouble("price");
			double price_net = rs.getDouble("price_net");
			Product product = new Product();
			product.setId(id);
			product.setTitle(title);
			product.setPrice(price);
			product.setPriceNet(price_net);
			product.setDescription(description);
			list.add(product);
		}
		return list;
	}
	
	public static void signup(Connection conn,
			String userName, String password) throws SQLException{
		
		try {
		String sql = "insert into user_account(user_name,password)"
				+ "values(?,?)";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);
		pstm.setString(2, password);
		pstm.executeQuery();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void updateProduct(Connection conn, Product product) throws SQLException{
		String sql = "UPDATE Product SET id =?, description=?, price=?, price_net=? WHERE id=?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, product.getId());
		pstm.setString(2, product.getTitle());
		pstm.setString(3, product.getDescription());
		pstm.setDouble(4, product.getPrice());
		pstm.setDouble(5, product.getPriceNet());
		pstm.executeUpdate();
	}
	
	public static void insertProduct(Connection conn, Product product) throws SQLException{
		String sql = "INSERT INTO Product(id,title,description,price,price_net) VALUES (?,?,?,?,?)";
		PreparedStatement pstm= conn.prepareStatement(sql);
		pstm.setInt(1, product.getId());
		pstm.setString(2, product.getTitle());
		pstm.setString(3, product.getDescription());
		pstm.setDouble(4, product.getPrice());
		pstm.setDouble(5, product.getPriceNet());
		pstm.executeUpdate();
	}
	
	public static void deleteProduct(Connection conn, String id) throws SQLException{
		String sql= "DELETE FROM product WHERE id=?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, id);
		pstm.executeUpdate();
	}
}
