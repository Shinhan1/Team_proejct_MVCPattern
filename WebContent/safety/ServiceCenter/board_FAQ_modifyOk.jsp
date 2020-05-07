<%@page import="com.exam.safety.dao.board_FAQ_Dao"%>
<%@page import="com.exam.safety.dto.board_FAQ_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
	String no = request.getParameter("bno");
	String title = request.getParameter("title");
	String inquiry = request.getParameter("inquiry_area");
	String subinquiry = request.getParameter("subinquiry_area");
	String contents = request.getParameter("ct");
	
	
	if(no != null) {
		int bno = Integer.parseInt(no);
		
		board_FAQ_VO vo = new board_FAQ_VO();
		board_FAQ_Dao dao = new board_FAQ_Dao();
		
		vo.setFaq_bno(bno);
		vo.setFaq_title(title);
		vo.setFaq_inquiry(inquiry);
		vo.setFaq_subInquiry(subinquiry);
		vo.setFaq_contents(contents);
		
		dao.modifyData(vo);
		
		response.sendRedirect("question_answer_manager.jsp");
	}else {
		
		response.sendRedirect("question_answer_manager.jsp");
	}

%>