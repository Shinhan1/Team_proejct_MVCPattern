<%@page import="com.exam.safety.dto.Join2_VO"%>
<%@page import="com.exam.safety.dao.Join2_DAO"%>

<%@page import="javax.print.DocFlavor.STRING"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.exam.safety.project.SHA256"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8"); //사용자한테 받은 것
	

	String groupNumber = request.getParameter("groupNumber");
	String userName = request.getParameter("name");	
	String groupName = request.getParameter("groupName");
	String userID = request.getParameter("userId");
	
	String userPassword = request.getParameter("password1");
	int userHp = 0;
	String userAddr = null;
	int userPcode = Integer.parseInt(request.getParameter("pcode"));
	String userEmail = null;


	if (request.getParameter("hp1") != null && request.getParameter("hp2") != null
			&& request.getParameter("hp3") != null) {
		userHp = Integer.parseInt(
				request.getParameter("hp1") + request.getParameter("hp2") + request.getParameter("hp3"));
	}
	if (request.getParameter("addr1") != null) {
		userAddr = request.getParameter("addr1") + request.getParameter("addr2") + request.getParameter("addr3")
				+ request.getParameter("addr4");
	}
	if (request.getParameter("email1") != null && request.getParameter("email_select") != null) {
		userEmail = request.getParameter("email1") + "@" + request.getParameter("email_select");
	}

	if (userID == null ) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert ('아이디 입력이 안됬습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	if (userPassword == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert ('비밀번호 입력이 안됬습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	if (userEmail == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert ('이메일 입력이 안됬습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	} 

	if (groupNumber == null || userName == null || groupName == null || userID == null || userPassword == null || userHp == 0 || userAddr == null || userPcode == 0 || userEmail == null ) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert ('입력이 안된 사항이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	
/* 	out.println(groupNumber + " groupNumber " + userName + " userName " + groupName + " groupName " + userID + " userID " + userPassword
			+ " userPassword  " + userHp + " 주소userHp " + userAddr + " userAddr " + userPcode + " userEmail  " + userEmail + "번호");
  */
	Join2_DAO dao = new Join2_DAO();
	Join2_VO vo = new Join2_VO(groupNumber, userName,  groupName,  userID,  userPassword, userHp, userAddr, userPcode,
			userEmail);

	dao.addData(vo);
	
	

	request.setCharacterEncoding("UTF-8");
	request.getSession().setAttribute("userEmail", userEmail);
	response.sendRedirect("join4.jsp");
	
	
	

/* session.setAttribute("userID", userID);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href='emailSendAction.jsp'");
		script.println("</script>");
		script.close();
		return;  */ 
%>