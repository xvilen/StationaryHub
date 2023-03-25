package com.inventory.dao;

import java.sql.SQLException;

import com.inventory.model.User;

public interface IUserDao<T> {
	 
	  T userLogin( String email, String password) throws ClassNotFoundException, SQLException;

}
