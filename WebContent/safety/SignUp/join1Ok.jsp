<%@page import="com.exam.safety.dto.Join1_VO"%>
<%@page import="javax.print.DocFlavor.STRING"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.exam.safety.dao.Join1_DAO"%>
<%@ page import="com.exam.safety.project.SHA256"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8"); //사용자한테 받은 것
	String userID = null;
	String userName = request.getParameter("name");
	String userPassword = null;
	String userBirth = request.getParameter("birth1");
	String userEmail = null;
	String userAddr = null;
	int userPcode = Integer.parseInt(request.getParameter("pcode"));
	int userGender = Integer.parseInt(request.getParameter("radios"));
	int userHp = 0;

	if (request.getParameter("userId") != null) {
		userID = request.getParameter("userId");
	}
	if (request.getParameter("password1") != null) {
		userPassword = request.getParameter("password1");
	}
	if (request.getParameter("email1") != null && request.getParameter("email_select") != null) {
		userEmail = request.getParameter("email1") + "@" + request.getParameter("email_select");
	}
	if (request.getParameter("hp1") != null && request.getParameter("hp2") != null
			&& request.getParameter("hp3") != null) {
		userHp = Integer.parseInt(
				request.getParameter("hp1") + request.getParameter("hp2") + request.getParameter("hp3"));
	}
	if (request.getParameter("addr1") != null) {
		userAddr = request.getParameter("addr1") + request.getParameter("addr2") + request.getParameter("addr3")
				+ request.getParameter("addr4");
	}

	if (userID == null || userName == null || userPassword == null || userBirth == null || userEmail == null || userAddr == null || userPcode == 0 || userGender == 0 || userHp == 0 ) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert ('입력이 안된 사항이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
/* 
	out.println(userID + " 아이디 " + userName + " 이름 " + userPassword + " 비번 " + userBirth + " 생일 " + userEmail
			+ " 이메일  " + userAddr + " 주소 " + userPcode + " 우편번호 " + userGender + " 성별  " + userHp + "번호");
 */
	Join1_DAO dao = new Join1_DAO();
	Join1_VO vo = new Join1_VO( userID, userName,  userPassword,  userBirth,  userEmail, userAddr, userPcode, userGender,
			userHp);
	
	dao.addData(vo);
	


	
	/* 
	sendredirect는 파라미터로 값을 못 넘김 ! 
	
	response.sendRedirect("join4.jsp"); */
	

	request.setCharacterEncoding("UTF-8");
	request.getSession().setAttribute("userName", userName);
/* 	request.getSession().setAttribute("userEmail", userEmail); */
	response.sendRedirect("join4.jsp");
	
	
	
	
%>