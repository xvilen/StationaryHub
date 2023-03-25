package com.inventory.util;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnection {
	
	private static final String URL="jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USER_NAME="Admin";
	private static final String PASSWORD="root";

	private static Connection connection=null;
 
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection=DriverManager.getConnection(URL,USER_NAME,PASSWORD);
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery("select * from Users");
		while(rs.next()) {
			int a=rs.getInt("user_id");
			System.out.println(a);
		}
		return connection;
	}


}
