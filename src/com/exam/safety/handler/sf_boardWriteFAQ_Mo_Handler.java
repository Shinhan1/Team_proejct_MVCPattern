package com.exam.safety.handler;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.safety.dao.board_FAQ_Dao;
import com.exam.safety.dto.board_FAQ_DTO;

public class sf_boardWriteFAQ_Mo_Handler implements sf_Action {
	
	private static final String VIEW = "/safety/ServiceCenter/board_FAQ_modify.jsp";
	private static final String RETURN_VIEW = "safety/ServiceCenter/question_answer_manager.jsp";
	
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
		board_FAQ_DTO dto = new board_FAQ_DTO();
		board_FAQ_Dao dao = new board_FAQ_Dao();
		
		int bno = 0;
		
		if (no != null) {
			bno = Integer.parseInt(no);
			
			dto = dao.getData(bno);
			
			req.setAttribute("dto", dto);
			
			
			return VIEW;
		} else {
			return RETURN_VIEW;
		}
		
		
		
		
	}
	
	
}
