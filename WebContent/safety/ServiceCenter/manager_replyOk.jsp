<%@page import="com.exam.safety.dto.board_QA_DTO"%>
<%@page import="com.exam.safety.dto.board_QA_Re_VO"%>
<%@page import="com.exam.safety.dao.board_QA_Re_Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- manager_replyOk.jsp -->

<%
	String b = request.getParameter("bno");
	String id = "Admin";
	String contents = request.getParameter("re");
	String checkbox = request.getParameter("check");

	int check;

	if(checkbox != null) {
		check = Integer.parseInt(checkbox);
	}else {
		check = 0;
	}

	if(b!=null){
		int bno = Integer.parseInt(b);

		/*
		out.println("bno : " + bno);
		out.println("id : " + id);
		out.println("contents : " + contents);
		*/

		board_QA_Re_Dao dao = new board_QA_Re_Dao();
		board_QA_Re_VO vo = new board_QA_Re_VO();

		vo.setQa_re_id(id);
		vo.setQa_re_contents(contents);
		vo.setQa_re_ref(bno);
		board_QA_DTO v = new board_QA_DTO();
		v.setQa_status(check);

		dao.insertReply(vo);
		dao.getStatus(bno);

		response.sendRedirect("inquiry.jsp");
	}else {
		response.sendRedirect("inquiry.jsp");

	}
%>