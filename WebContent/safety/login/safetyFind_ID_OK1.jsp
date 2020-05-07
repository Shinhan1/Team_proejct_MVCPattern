<%@page import="org.apache.catalina.util.URLEncoder"%>

<%@page import="com.exam.safety.dao.Join1_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>safetyFind_ID_OK1.jsp</title>
<%
	String name = request.getParameter("name");
	String hp1 = request.getParameter("hp1");
	String hp2 = request.getParameter("hp2");
	String hp = hp1+hp2;
	System.out.println(hp);

	Join1_DAO dao = new Join1_DAO();

	boolean flg = dao.isExist_findID(name, hp);


	if(flg){

		response.sendRedirect("sf_insert_ID_fom.jsp");

	}else{
		%>
		  <script>
	        alert("일치하는 아이디가 없습니다.");
	        location.href = "safetyFind_ID.jsp";
	    </script>
		<%
		}
		%>
</head>

<body>



</body>

</html>

