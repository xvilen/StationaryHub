package com.inventory.dao;

import java.sql.Connection;
import java.sql.Connection.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.inventory.model.User;
import com.inventory.util.DBConnection;

public class UserDao implements IUserDao<User> {
	
	
    @Override
	public User userLogin(String email , String password) throws ClassNotFoundException, SQLException {
    	User user =null;
    	final Connection connection=DBConnection.getConnection();
    	final String query="Select * from users where user_email=? and user_password =?";
    	final PreparedStatement pst = connection.prepareStatement(query);
    	pst.setString(1, email);
    	pst.setString(2, password);
        final	ResultSet rs  = pst.executeQuery();
        
        if(rs.next())
        {
        	user = new User();
        	user.setUser_id(rs.getInt("user_id"));
        	user.setUser_firstname(rs.getString("user_firstname"));
        	user.setUser_email(rs.getString("user_email"));
        }
    	
		return user;
	}

	

}
