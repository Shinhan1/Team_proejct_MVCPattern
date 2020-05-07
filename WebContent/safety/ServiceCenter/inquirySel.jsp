<%-- <%@page import="tim_Project_Dao.board_QA_Dao"%>
<%@page import="tim_Project_VO.board_QA_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색기능</title>
<!-- inquirySel.jsp -->
</head>
<body>
	<%
		String sel = request.getParameter("ri_in_sel");
	
		board_QA_VO vo = new board_QA_VO();
		board_QA_Dao dao = new board_QA_Dao();
		
		dao.getData(sel);
		
		response.sendRedirect("inquiry.jsp");
	
	%>

</body>
</html> --%>