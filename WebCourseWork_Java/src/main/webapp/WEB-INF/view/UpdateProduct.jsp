package DatabaseConnectionObjects;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import Entity.ProductEntity;

public class ProductDao {
	private Connection conn;
	private PreparedStatement statement;
	private ResultSet resultSet;
	
	

	public ProductEntity getProductById(int id) throws SQLException {
		 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3325/mobile_phone" , "root", "root");
		statement=conn.prepareStatement("select ProductID,ProductName,ProductDescription,ProductPrice,ProductStock from product where ProductId=?");
		statement.setInt(1, id);
		resultSet =statement.executeQuery();
		ProductEntity Product=new ProductEntity();
		if(resultSet.next())
		{
			Product.setProductID(resultSet.getInt("ProductID"));
			Product.setProductName(resultSet.getString("ProductName"));
			Product.setProductDescription(resultSet.getString("ProductDescription"));
			Product.setProductPrice(resultSet.getInt("ProductPrice"));
			Product.setProductStock(resultSet.getInt("ProductStock"));
		}
		return Product;
		
		
	}
	public ProductEntity updateProduct(ProductEntity product) throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3325/mobile_phone" , "root", "root");
		if(isProductnameTaken(product.getProductName(),product.getProductID()))
		{
			return null;
		}
		else
		{
			statement=conn.prepareStatement("update product set ProductName=?,ProductDescription=?,ProductPrice=?,ProductStock=? where ProductID=?");
		     statement.setString(1, product.getProductName());
		     statement.setString(2, product.getProductDescription());
		     statement.setInt(3, product.getProductPrice());
		     statement.setInt(4, product.getProductStock());
		     statement.setInt(5, product.getProductID());
		     
		     	statement.executeUpdate();
		      return product;
		}
	     
		
	      
	}
	


	private boolean isProductnameTaken(String ProductName, int ProductID) throws SQLException, ClassNotFoundException {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3325/mobile_phone" , "root", "root");
		statement=conn.prepareStatement("select count(*) as count_id from product where ProductName=? and ProductID!=?");
		statement.setString(1, ProductName);
		statement.setInt(2, ProductID);
		resultSet=statement.executeQuery();
		if(resultSet.next())
		{
			int row_number=resultSet.getInt("count_id");
			if(row_number>0)
			{
				return true;
			}
			
		}
		return false;
	}
	
	public int deleteProduct(int id) throws ClassNotFoundException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3325/mobile_phone" , "root", "root");
			PreparedStatement pstm = conn.prepareStatement("DELETE from product where ProductID = ?");
			pstm.setInt(1, id);
			pstm.executeUpdate();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
		
	}
}
