<%@page import="com.exam.safety.dao.board_QA_Dao"%>
<%@page import="com.exam.safety.dto.board_QA_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardWrite_Ok</title>
</head>
<body>
		<%-- <%
			//사용자가 입력한 데이터를 브라우저 화면에 출력해 보세요 .
				//바로 dbms에 접근하지말고 확인하는 습관을 가지세요!
				// 브라우저 또는 콘솔에 먼저 출력합시다.
				String title = request.getParameter("title");
				String inquiry = request.getParameter("inquiry_area");
				String contents = request.getParameter("ct");
				String email = request.getParameter("email") + "@" + request.getParameter("domain");
				String checkBox = request.getParameter("YN_email");

				//     out.println("write :" + id);
				//     out.println("title :" + title);
				//     out.println("contents :" + contents);
				
				int check = Integer.parseInt(checkBox);

				//db에 연결후 write.jsp에서 전달해온 값을 저장
				board_QA_DTO vo = new board_QA_DTO();
				board_QA_Dao dao = new board_QA_Dao();

				vo.setQa_title(title);
				vo.setQa_inquiry(inquiry);
				vo.setQa_contents(contents);
				vo.setQa_email(email);
				vo.setQa_e_st(check);
				
				//사용자의 ip를 얻어오기
				String ip = request.getRemoteAddr();
				vo.setQa_ip(ip);

				dao.QA_addData(vo);

				//db에 저장이 잘 됐으면 게시판 메인으로 화면 이동 
				response.sendRedirect("inquiry.jsp");
		%> --%>
		
		<%
			response.sendRedirect("inquiry.jsp");
		%>


</body>
</html>