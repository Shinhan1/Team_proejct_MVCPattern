package com.exam.safety.connection;

import java.sql.SQLException;

public class ConnTest {
	public static void main(String[] args) {
		OracleXEConnection.getInstance().getConnection();
//		try {
//			ConnectionProvider.getConnection();\
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	}
}
