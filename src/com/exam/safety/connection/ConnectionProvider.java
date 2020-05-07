package com.exam.safety.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {

	public static Connection getConnection() throws SQLException {
		Connection conn = null;
		
		try {
			Class.forName("org.apache.commons.dbcp2.PoolingDriver");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn = DriverManager.getConnection("jdbc:apache:commons:dbcp:mvc");
			
			System.out.println("conn : " + conn);
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
		
	}
}
