package Controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DatabaseConnectionObjects.ProductDao;

/**
 * Servlet implementation class DeleteProductController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/deleteProduct" })
public class DeleteProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductDao Dao;
	
	public void init(ServletConfig config) throws ServletException {
		System.out.print("hellloooooooooboiiiiii");
		// TODO Auto-generated method stub
		super.init(config);
		Dao=new ProductDao();
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/WEB-INF/view/Admin.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String data = request.getParameter("id");
		int id = Integer.parseInt(data);
		System.out.println(id);
		try {
			Dao.deleteProduct(id);
						
		}catch(Exception e) {
			
		}
		doGet(request, response);
	}

}

