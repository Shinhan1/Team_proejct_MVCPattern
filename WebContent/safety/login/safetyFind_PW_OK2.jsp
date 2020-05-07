<%@page import="com.exam.safety.dto.Join1_VO"%>
<%@page import="com.exam.safety.dao.Join1_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>safetyFind_PW_OK2.jsp</title>
<%
String id = request.getParameter("id");
String email1 = request.getParameter("email1");
String email2 = request.getParameter("email2");

String email = email1+"@"+email2;

Join1_DAO dao = new Join1_DAO();




boolean flg = dao.isExist(id, email);

if(flg){

	response.sendRedirect("mailsend2.jsp?email="+email);

}else{
	%>
	  <script>
      alert("일치하는 이름과 이메일이 없습니다..");
      location.href = "safetyFind_ID.jsp";
  </script>
	<%
	}
	%>
</head>

<body>





</body>

</html>

