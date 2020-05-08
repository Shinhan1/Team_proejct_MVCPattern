package com.exam.safety.handler;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.safety.dao.board_FAQ_Dao;
import com.exam.safety.dto.board_FAQ_DTO;

public class sf_boardFAQ_Handler implements sf_Action {
	
	private static final String RESULT_VIEW = "/safety/ServiceCenter/question_answer.jsp";
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
		
		if(req.getMethod().equalsIgnoreCase("GET")) {
			return processPaging(req, resp);
		}else if(req.getMethod().equalsIgnoreCase("POST")) {
			return processPaging(req, resp);
		}else {
			resp.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	
	private String trim(String str) {
		return str == null ? null : str.trim();
	}	
	
	private String processPaging(HttpServletRequest req, HttpServletResponse resp) {
		board_FAQ_Dao dao = new board_FAQ_Dao();
		
		String cp = req.getParameter("cp");
		String cp1 = req.getParameter("cp");
		String sel = req.getParameter("sel");
		
		int currentPage = 0;
		int currentPage1 = 0;
		
		if(cp != null) {
			currentPage = Integer.parseInt(cp);
		}else {
			currentPage = 1;
		}
		
		if(cp1 != null) {
			currentPage1 = Integer.parseInt(cp);
		}else {
			currentPage1 = 1;
		}
		
		// 총 페이지 수
		int totalCount = dao.getTotalCount();
		int selCount = dao.getSelCount(sel);
		
		// 한 페이지 당 레코드 수 
		int recordByPage = 5;
		
		// 총 페이지 수
		int totalPage = (totalCount/recordByPage == 0) ? totalCount/recordByPage : totalCount/recordByPage+1;
		int selPage = (selCount/recordByPage == 0) ? selCount/recordByPage : selCount/recordByPage+1;			// 검색을 위한 삼항연산자
		
		int startNo = (currentPage-1) * recordByPage+1;
		int startNo1 = (currentPage1-1)*recordByPage+1;
		
		int endNo = currentPage * recordByPage;
		int endNo1 = currentPage1*recordByPage;
		
		ArrayList<board_FAQ_DTO> list = dao.getAllData(startNo, endNo, sel);
		
		req.setAttribute("list", list);
		req.setAttribute("currentPage", currentPage);
		req.setAttribute("currentPage1", currentPage1);
		
		return RESULT_VIEW;
		
	}
	
	
	

}
