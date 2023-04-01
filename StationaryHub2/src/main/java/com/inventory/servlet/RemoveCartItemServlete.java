package com.inventory.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inventory.dao.CartDao;
import com.inventory.model.Cart;
import com.inventory.model.User;


@WebServlet("/cart/remove")
public class RemoveCartItemServlete extends HttpServlet {
    public RemoveCartItemServlete() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int CartId=Integer.parseInt(request.getParameter("cartID"));
		User user=(User)request.getSession().getAttribute("auth");
		if(user!=null) {
		CartDao cart=new CartDao();
		try {
			boolean isRemoved=cart.RemoveCartItem(CartId, user.getUser_id());
	
			response.sendRedirect("/Stationary/CartServlet");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}else {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
