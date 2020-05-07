<%@page import="com.exam.safety.dao.Join1_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>safetyFind_ID_OK2.jsp</title>
<%
String name = request.getParameter("name");
String email1 = request.getParameter("email1");
String email2 = request.getParameter("email2");

String email = email1+"@"+email2;

Join1_DAO dao = new Join1_DAO();

boolean flg = dao.isExist(name, email);

if(flg){

	response.sendRedirect("safety_ID_insert_fom.jsp");

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
<div id ="inner">
	<div id="title">
		<h1>아이디 찾기</h1>
		<h5>회원님이 아이디는 <%= %></h5>
	</div>

		<div>
			<input type="button" value="로그인하기" class ="btn1" />
		</div>


	</div> <!--inner end-->
	<jsp:include page="../etc/project_footer.jsp" />







</body>

</html>

