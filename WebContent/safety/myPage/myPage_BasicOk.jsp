<%@page import="com.exam.safety.dto.Join1_VO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.exam.safety.dao.Join1_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	Join1_DAO dao = new Join1_DAO();
	String mem = (String)session.getAttribute("member");
	String password = dao.pwCheck(mem);
	String pw = request.getParameter("pw");

	if(pw.equals(password)) {
		response.sendRedirect("../myPage/myPage_info.jsp");
	}else {
		response.sendRedirect("../myPage/myPage_Basic.jsp");
	}



%>