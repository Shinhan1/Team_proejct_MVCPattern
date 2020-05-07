
<%@page import="com.exam.safety.project.MailSend"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<%
	request.setCharacterEncoding("UTF-8");

	String email = request.getParameter("email");

	String key = new MailSend().mailSend(email);		//받은 인증키

	out.println(key);


%>