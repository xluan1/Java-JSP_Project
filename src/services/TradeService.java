package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Trade;

public class TradeService {
	
	public List<Trade> getTrade(Connection conn){
		List<Trade> list= new ArrayList<Trade>();
		try {
			String sql = "SELECT * FROM services";
			PreparedStatement pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			
			while(rs.next()) {
				int sid = rs.getInt("sid");
				String stitle = rs.getString("stitle");
				String sdescription = rs.getString("sdescription");
				String simage = rs.getString("simage");
				Trade trade = new Trade(sid,stitle,sdescription,simage);
				list.add(trade);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return list;
	}
}
