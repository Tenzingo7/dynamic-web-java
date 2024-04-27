package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddProductController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/addproduct" })
public class AddProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/WEB-INF/view/AddProduct.jsp").forward(request, response);
		System.out.print("ola");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("productname");
		String description = request.getParameter("productdescription");
		String price = request.getParameter("productprice");
		String stock = request.getParameter("productstock");
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3325/mobile_phone" , "root", "root");
			
			
			out.println("Database connection established successfully!");

			
			String sql="insert into product (ProductName, ProductDescription, ProductPrice, ProductStock) values (?,?,?,?)";
			
			PreparedStatement pa=conn.prepareStatement(sql);
			
			pa.setString(1, name);
			pa.setString(2, description);
			pa.setString(3, price);
			pa.setString(4, stock);
			
			int rowsAffected = pa.executeUpdate();
            
            // Check if any rows were affected
            if (rowsAffected > 0) {
                response.getWriter().println("Product inserted successfully!");
            } else {
                response.getWriter().println("Failed to insert product!");
            }
            
			pa.close();
			conn.close();
			
		
		} catch (SQLException e) {
	    // If there's an exception while connecting, print the error
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
	    // If the MySQL driver class is not found, print the error
			e.printStackTrace();
		}
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

