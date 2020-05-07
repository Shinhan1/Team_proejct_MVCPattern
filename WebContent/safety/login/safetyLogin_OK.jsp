<%@page import="com.exam.safety.dao.Join1_DAO"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>safetyLogin_OK.jsp</title>

</head>

<body>
<%
	// id, pw 정보를 받아와서 DB에 접근
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");




	Join1_DAO dao = new Join1_DAO();

	// 그 DB에 회원이 있는지 확인!
	boolean flg2 = dao.isExist_admin(id, pw);
	boolean flg = dao.isExist_id(id, pw);				// isOk에서 true, false가 출력

	// 회원이면 로그인 가능 -> 섹션을 이용!!
	if(flg){
		String userID = URLEncoder.encode(id, "UTF-8");  // 엔코딩 한글 깨지지말 라고 하는것
		session.setAttribute("member",id);


		response.sendRedirect("../mainpage/main.jsp");

	}else{
		%>
		  <script>
	        alert("아이디 및 비번이 틀렸습니다.");
	        location.href = "safetyLogin.jsp";
	    </script>
		<%
		}
		%>

<%
if(flg2){
	String userID = URLEncoder.encode(id, "UTF-8");  // 엔코딩 한글 깨지지말 라고 하는것
	session.setAttribute("admin",id);


	response.sendRedirect("../mainpage/main.jsp");

}else{
	%>
	  <script>
        alert("아이디 및 비번이 틀렸습니다.");
        location.href = "safetyLogin.jsp";
    </script>
	<%
	}
	%>









<script type="text/javascript">

</script>



</body>

</html>

