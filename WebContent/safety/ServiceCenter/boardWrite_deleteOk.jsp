<%@page import="com.exam.safety.dao.board_QA_Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- boardWrite_deleteOk.jsp -->

<%
	String b = request.getParameter("bno");
	
	if(b!=null){
		int bno = Integer.parseInt(b);
		
		board_QA_Dao dao = new board_QA_Dao();
		dao.deleteData(bno);
		
		response.sendRedirect("inquiry.jsp");
	}else  {
		
		response.sendRedirect("inquiry.jsp");
}

%>