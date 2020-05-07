package com.exam.safety.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.exam.safety.connection.OracleXEConnection;
import com.exam.safety.dao.board_QA_Dao;
import com.exam.safety.dto.board_QA_DTO;

public class sf_BoardWriteQA_Service {
	private board_QA_Dao qa_dao = new board_QA_Dao();
	
	public void writeBoard(board_QA_DTO qa_vo) {
		
		try(Connection conn = OracleXEConnection.getInstance().getConnection()) {
			qa_dao.QA_addData(qa_vo);;
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	

}
