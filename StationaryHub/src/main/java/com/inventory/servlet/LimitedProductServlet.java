//package com.inventory.servlet;
//
//import java.io.IOException;
//import java.sql.SQLException;
//import java.util.List;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.inventory.dao.ProductDao;
//import com.inventory.model.Product;
//
///**
// * Servlet implementation class LimitedProductServlet
// */
//@WebServlet("/")
//public class LimitedProductServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		ProductDao p=new ProductDao();
//		
//		
//		try {
//			List<Product> q= p.findLimitedProducts();
//			
//			request.setAttribute("limitedproducts",q);
//			request.setAttribute("name", "unnati");
//			request.getSession().setAttribute("name", "muhafiz");
//			request.getRequestDispatcher("index.jsp").forward(request, response);
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//	
//		
//	}
//
//}
