package com.exam.safety.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.exam.safety.connection.OracleXEConnection;
import com.exam.safety.dao.board_FAQ_Dao;
import com.exam.safety.dto.board_FAQ_DTO;

public class sf_BoardWriteFAQ_Service {
	private board_FAQ_Dao faq_dao = new board_FAQ_Dao();
	
	public void writeBoard(board_FAQ_DTO faq_dto) {
		System.out.println("Service 까진 오나?");
		faq_dao.FAQ_addData(faq_dto);
			
		
	}
	
	public void modifyBoard(board_FAQ_DTO faq_dto) {
		
		faq_dao.modifyData(faq_dto);
			
		
	}
	
	public void deleteBoard(int bno) {
		
		faq_dao.deleteData(bno);
			
		
	}

}
