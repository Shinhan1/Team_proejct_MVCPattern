<%@page import="com.exam.safety.dto.Join1_VO"%>
<%@page import="com.exam.safety.dao.Join1_DAO"%>
<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	String email = request.getParameter("email");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String password = request.getParameter("password");
	String tel = request.getParameter("tel");

	
	int telphone = Integer.parseInt(tel);
		
		Join1_DAO dao = new Join1_DAO();
		Join1_VO vo = new Join1_VO();
		vo.setName(name);
		vo.setPw(password);
		vo.setBdate(birth);
		vo.setPhone(telphone);
		vo.setEmail(email);
		

		dao.updateData(vo);
		
		
		response.sendRedirect("myPage_detail1.jsp"); 
	

%>