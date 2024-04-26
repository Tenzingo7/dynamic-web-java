package Database;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	final private static String url = "jdbc:mysql://localhost:3325/mobile_phone";
	final private static String username = "root";
	final private static String password = "root";
			
			
	public static Connection DeployConnection(){
		try {
		    Class.forName("com.mysql.cj.jdbc.Driver");
		    Connection conn = DriverManager.getConnection(url,username,password);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
