package com.inventory.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inventory.dao.CartDao;
import com.inventory.model.User;


@WebServlet("/cart/add-product")
public class CartAddProductServlet extends HttpServlet {
	
    public CartAddProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int ProductID=Integer.parseInt(request.getParameter("productID"));
		
		User user=(User)request.getSession().getAttribute("auth");
		if(user!=null) {
			CartDao cart=new CartDao();
			try {
				boolean isCreated=cart.createCartItem(user.getUser_id(), ProductID);
				
				if(isCreated) {
					response.sendRedirect("/Stationary/");
				}
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
