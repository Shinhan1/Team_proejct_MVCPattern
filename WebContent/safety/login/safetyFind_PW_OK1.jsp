<%@page import="com.exam.safety.dao.Join1_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>safetyFind_PW_OK1.jsp</title>
<%  /* 핸드폰으로 비밀번호 변경 */
String id = request.getParameter("id");
String hp1 = request.getParameter("hp1");
String hp2 = request.getParameter("hp2");
String hp = hp1+hp2;



Join1_DAO dao = new Join1_DAO();



boolean flg = dao.isExist_findID(id, hp);


if(flg){

	response.sendRedirect("sf_insert_PW_fom.jsp");/* 수정하기 창으로 가기 */

}else{
	%>
	  <script>
      alert("일치하는 아이디와 핸드폰 번호가  없습니다..");
      location.href = "safetyFind_PW.jsp";
  </script>
	<%
	}
	%>
</head>

<body>





</body>

</html>

