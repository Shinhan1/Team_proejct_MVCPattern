
<%@page import="com.exam.safety.dao.CampaignDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String b = request.getParameter("bno");

	//out.println(b);
	if(b!=null){
		int bno = Integer.parseInt(b);

		CampaignDAO dao = new CampaignDAO();
		dao.deleteData(bno);

		response.sendRedirect("campaign.jsp");
	}else{
		response.sendRedirect("campaign.jsp");
	}



%>