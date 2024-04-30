package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entity.ProductEntity;
import Model.ProductModel;

/**
 * Servlet implementation class AdminController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/admin" })
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductModel phones = new ProductModel();
		List<ProductEntity> list = phones.getAllProduct();
		//fetch the record form database

		// finally set the list as request attribute
		request.setAttribute("productObject",list);
		request.getRequestDispatcher("/WEB-INF/view/Admin.jsp").forward(request, response);
		System.out.print("heellooooo");
		System.out.println(list);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
