package com.exam.safety.handler;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.safety.dao.board_QA_Dao;
import com.exam.safety.dto.board_QA_DTO;
import com.exam.safety.service.sf_BoardWriteQA_Service;

public class sf_BoardWriteQA_Handler implements sf_Action {
	
	private static final String VIEW = "/safety/ServiceCenter/boardWrite.jsp";
	private static final String RETURN_VIEW = "/safety/ServiceCenter/boardWrite_Ok.jsp";
	
	private sf_BoardWriteQA_Service QAService = new sf_BoardWriteQA_Service();
	
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
//		System.out.println("일로옴?");
		
		String title = req.getParameter("title");
		String inquiry = req.getParameter("inquiry_area");
		String contents = req.getParameter("ct");
		String email = req.getParameter("email") + "@"
				+ req.getParameter("domain");
		String checkBox = req.getParameter("YN_email");
		
		int check = Integer.parseInt(checkBox);
		
		board_QA_DTO dto = new board_QA_DTO();
		board_QA_Dao dao = new board_QA_Dao();
		
		dto.setQa_title(title);
		dto.setQa_inquiry(inquiry);
		dto.setQa_contents(contents);
		dto.setQa_email(email);
		dto.setQa_e_st(check);
		
		String ip = req.getRemoteAddr();
		dto.setQa_ip(ip);

		dao.QA_addData(dto);
		
		
		
		return RETURN_VIEW;
		
	}
	
	
	
	
	
}
