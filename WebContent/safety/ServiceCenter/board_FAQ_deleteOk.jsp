<%@page import="com.exam.safety.dao.board_FAQ_Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- board_FAQ_deleteOk.jsp -->

<%
	String b = request.getParameter("bno");
	
	if(b!=null){
		int bno = Integer.parseInt(b);
		
		board_FAQ_Dao dao = new board_FAQ_Dao();
		dao.deleteData(bno);
		
		response.sendRedirect("question_answer_manager.jsp");
	}else  {
		
		response.sendRedirect("question_answer_manager.jsp");
}

%>