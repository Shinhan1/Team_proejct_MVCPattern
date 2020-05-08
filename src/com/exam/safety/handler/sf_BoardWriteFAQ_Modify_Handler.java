package com.exam.safety.handler;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.safety.dao.board_FAQ_Dao;
import com.exam.safety.dto.board_FAQ_DTO;
import com.exam.safety.service.sf_BoardWriteFAQ_Service;

public class sf_BoardWriteFAQ_Modify_Handler implements sf_Action {
	private static final String VIEW = "/safety/ServiceCenter/board_FAQ_modify.jsp";
	private static final String RETURN_VIEW = "/safety/ServiceCenter/board_FAQ_modifyOk.jsp";
	private static final String ERROR_VIEW = "safety/ServiceCenter/board_FAQ.jsp";
	
	private sf_BoardWriteFAQ_Service FAQService = new sf_BoardWriteFAQ_Service();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
		if(req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, resp);
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
		String title = req.getParameter("title");
		String inquiry = req.getParameter("inquiry_area");
		String subinquiry = req.getParameter("subinquiry_area");
		String contents = req.getParameter("ct");
		
		if(no != null) {
			int bno = Integer.parseInt(no);
			
			board_FAQ_DTO dto = new board_FAQ_DTO();
			
			dto.setFaq_bno(bno);
			dto.setFaq_title(title);
			dto.setFaq_inquiry(inquiry);
			dto.setFaq_subInquiry(subinquiry);
			dto.setFaq_contents(contents);
			
			FAQService.modifyBoard(dto);
			
			return RETURN_VIEW;
			
		}else {
			return ERROR_VIEW;
		}
		
		
		
		
	}
	
}
