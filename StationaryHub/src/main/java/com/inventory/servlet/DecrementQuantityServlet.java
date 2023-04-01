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

/**
 * Servlet implementation class DecrementQuantityServlet
 */
@WebServlet("/cart/decrement")
public class DecrementQuantityServlet extends HttpServlet {

       
  
    public DecrementQuantityServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cartItemId=Integer.parseInt(request.getParameter("cartItemID")) ;
		int ProductId=Integer.parseInt(request.getParameter("productId")) ;
		
		User user=(User)request.getSession().getAttribute("auth");
		if(user!=null) {
			CartDao cart=new CartDao();
			try {
				Cart singleCart=cart.GetSingleCartItem(user.getUser_id(), ProductId);
				if(singleCart.getQuantity()==1) {
					boolean isdeleted=cart.RemoveCartItem(singleCart.getCartItemId(), user.getUser_id());
					if(isdeleted) {response.sendRedirect("/Stationary/CartServlet");}
				}else {
				boolean isUpdated=cart.DecrementQuantity(cartItemId, ProductId);
				if(isUpdated) {response.sendRedirect("/Stationary/CartServlet");}
				else {response.sendRedirect("/Stationary/CartServlet");}
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
