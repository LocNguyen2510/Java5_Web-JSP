package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class saveProduct
 */
@WebServlet("/save-product")
public class saveProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public saveProduct() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String maSanPham = request.getParameter("maSanPham");
		String tenSanPham = request.getParameter("tenSanPham");
		String giaBan_String = request.getParameter("giaBan");
		String giaNhap_String = request.getParameter("giaNhap");
		String hanSuDung_String = request.getParameter("hanSuDung");
		String vat_String = request.getParameter("vat");
		String moTa = request.getParameter("moTa");
		//check
		if(maSanPham==null || maSanPham.trim().length()==0) {
			request.setAttribute("", moTa);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
