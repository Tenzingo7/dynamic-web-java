package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Entity.ProductEntity;

public class ProductModel {
	public List<ProductEntity> getAllProduct(){
		List<ProductEntity> phoneList = new ArrayList<ProductEntity>();
		try {
			String sql="select * from product";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3325/mobile_phone" , "root", "root");
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				ProductEntity productObject = new ProductEntity();
				productObject.setProductID(rs.getInt("ProductID"));
				productObject.setProductName(rs.getString("ProductName"));
				productObject.setProductDescription(rs.getString("ProductDescription"));
				productObject.setProductPrice(rs.getInt("ProductPrice"));
				productObject.setProductStock(rs.getInt("ProductStock"));
				
				phoneList.add(productObject);
			}
			conn.close();
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (SQLException e) {
		// TODO Auto-generated catch block
			e.printStackTrace();	
		}
		return phoneList;
	}
	
	
}
