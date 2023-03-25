package com.inventory.dao;

import java.sql.Connection;
import java.sql.Connection.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.sql.Statement;

import com.inventory.model.User;
import com.inventory.util.DBConnection;

public class UserDao implements IUserDao<User> {
	
	public UserDao()
	{
		
	}
	
	
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


	@Override
	public boolean userSignup(User user) throws ClassNotFoundException, SQLException {
		final Connection connection=DBConnection.getConnection();
		final String insertUpdate="insert into users (user_firstname , user_lastname, user_email ,user_contact, user_address,user_password)values(?,?,?,?,?,?)";
		final PreparedStatement preparedStatement=connection.prepareStatement(insertUpdate);
		preparedStatement.setString(1, user.getUser_firstname());
		preparedStatement.setString(2, user.getUser_lastname());
		preparedStatement.setString(3,user.getUser_email());
		preparedStatement.setLong(4,user.getUser_contact());
		preparedStatement.setString(5, user.getUser_address());
		preparedStatement.setString(6, user.getUser_password());
		final int noOrRows=preparedStatement.executeUpdate();
		if(noOrRows>0) {
			return true;
		}
		else {
			return false;
		}
	}

	

}
