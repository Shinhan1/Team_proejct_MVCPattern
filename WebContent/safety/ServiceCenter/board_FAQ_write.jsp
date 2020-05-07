<%@page import="com.exam.safety.dao.board_FAQ_Dao"%>
<%@page import="com.exam.safety.dto.board_FAQ_VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 작성</title>
</head>
<body>

	<%
		//사용자가 입력한 데이터를 브라우저 화면에 출력해 보세요 .
		//바로 dbms에 접근하지말고 확인하는 습관을 가지세요!
		// 브라우저 또는 콘솔에 먼저 출력합시다.
		String title = request.getParameter("title");
		String inquiry = request.getParameter("inquiry_area");
		String contents = request.getParameter("ct");
		String subinquiry = request.getParameter("subinquiry_area");



		//     out.println("write :" + id);
		//     out.println("title :" + title);
		//     out.println("contents :" + contents);

		//db에 연결후 write.jsp에서 전달해온 값을 저장
		board_FAQ_VO vo = new board_FAQ_VO();
		board_FAQ_Dao dao = new board_FAQ_Dao();
		
		vo.setFaq_title(title);
		vo.setFaq_inquiry(inquiry);
		vo.setFaq_contents(contents);
		vo.setFaq_subInquiry(subinquiry);
		
		dao.FAQ_addData(vo);

		//db에 저장이 잘 됐으면 게시판 메인으로 화면 이동
		response.sendRedirect("question_answer.jsp");
	%>

</body>
</html>