package com.exam.safety.handler;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.safety.dto.board_FAQ_DTO;
import com.exam.safety.service.sf_BoardWriteFAQ_Service;

public class sf_boardWriteFAQ_Delete_Handler implements sf_Action {
	private static final String VIEW ="/safety/ServiceCenter/question_answer_manager.jsp";
	private static final String DELETE_VIEW ="/safety/ServiceCenter/board_FAQ_deleteOk.jsp";
	private sf_BoardWriteFAQ_Service FAQService = new sf_BoardWriteFAQ_Service();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
		if(req.getMethod().equalsIgnoreCase("GET")) {
			return processSubmit(req, resp);
		}else if(req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, resp);
		}else {
			resp.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	private String trim(String str) {
		return str == null ? null : str.trim();
	}
	
	private String processForm(HttpServletRequest req, HttpServletResponse resp) {
		
		return VIEW;
	}
	
	
	private String processSubmit(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String no = req.getParameter("bno");
		
		if(no != null) {
			int bno = Integer.parseInt(no);
			
			FAQService.deleteBoard(bno);
			
			return DELETE_VIEW;
			
		}else {
			return VIEW;
		}
		
		
		
		
	}
	
	
}
