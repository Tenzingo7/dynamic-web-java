package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Entity.Product;

public class PhoneDetail {
	public List<Product> getAllProduct(){
		List<Product> phoneDetails = new ArrayList<Product>();
		try {
			String sql="select * from product";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3325/mobile_phone" , "root", "root");
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				Product productObject = new Product();
				productObject.setProductID(rs.getInt("ProductID"));
				productObject.setProductName(rs.getString("ProductName"));
				productObject.setProductDescription(rs.getString("ProductDescription"));
				productObject.setProductPrice(rs.getInt("ProductPrice"));
				productObject.setProductStock(rs.getInt("ProductStock"));
				
				phoneDetails.add(productObject);
			}
			conn.close();
			st.close();
			rs.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (SQLException e) {
		// TODO Auto-generated catch block
			e.printStackTrace();	
		}
		return phoneDetails;
	}
}
