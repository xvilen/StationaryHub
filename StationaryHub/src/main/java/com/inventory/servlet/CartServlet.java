package com.inventory.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import com.inventory.dao.CartDao;
import com.inventory.model.Cart;
import com.inventory.model.User;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private List<Cart>cartList=null;
	CartDao cart=new CartDao();
    public CartServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 try {
			 User user=(User)request.getSession().getAttribute("auth");
			 if(user!=null) {
				 cartList=cart.GetAllCartItem(user.getUser_id());
					request.setAttribute("cart", cartList);
					request.getRequestDispatcher("cart.jsp").forward(request, response);
			 }else {
				 request.getRequestDispatcher("login.jsp").forward(request, response);
			 }
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}

}

