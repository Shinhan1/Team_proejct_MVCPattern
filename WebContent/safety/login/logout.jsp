<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>logout.jsp</title>
<%
	session.invalidate();
	out.println("<script>alert('로그아웃되었습니다'); history.back();</script>");
	response.sendRedirect("../mainpage/main.jsp");
%>



</head>
<body>

</body>
</html>