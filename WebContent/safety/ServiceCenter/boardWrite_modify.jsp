<%@page import="com.exam.safety.dao.board_QA_Dao"%>
<%@page import="com.exam.safety.dto.board_QA_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String no = request.getParameter("bno");
	String title = request.getParameter("title");
	String inquiry = request.getParameter("inquiry_area");
	String contents = request.getParameter("ct");
	String email = request.getParameter("email") + "@" + request.getParameter("domain");
	
	/* System.out.println(no);
	System.out.println(title);
	System.out.println(inquiry);
	System.out.println(contents);
	System.out.println(email); */
	
	
	if(no != null) {
		int bno = Integer.parseInt(no);
		
		board_QA_DTO vo = new board_QA_DTO();
		board_QA_Dao dao = new board_QA_Dao();
		
		vo.setQa_bno(bno);
		vo.setQa_title(title);
		vo.setQa_inquiry(inquiry);
		vo.setQa_contents(contents);
		vo.setQa_email(email);
		
		dao.modifyData(vo);
		
		response.sendRedirect("inquiry.jsp");
	}else {
		
		response.sendRedirect("inquiry.jsp");
	}
%>