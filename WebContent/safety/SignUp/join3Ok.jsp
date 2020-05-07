<%@page import="com.exam.safety.dto.Join3_VO"%>
<%@page import="com.exam.safety.dao.Join3_DAO"%>
<%@page import="com.exam.safety.dto.Join2_VO"%>
<%@page import="com.exam.safety.dao.Join2_DAO"%>

<%@page import="javax.print.DocFlavor.STRING"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.exam.safety.project.SHA256"%>
<%@ page import="java.io.PrintWriter"%>
<%
	request.setCharacterEncoding("UTF-8"); //사용자한테 받은 것
	

	String groupNumber = request.getParameter("groupNumber");
	String groupName = request.getParameter("groupName");
	String userID = null;
	String userPassword = null;
	int userHp = 0;
	String userAddr = null;
	int userPcode = Integer.parseInt(request.getParameter("pcode"));
	String userName = request.getParameter("name");	
	String userEmail = null;

	if (request.getParameter("userId") != null) {
		userID = request.getParameter("userId");
	}
	if (request.getParameter("password1") != null) {
		userPassword = request.getParameter("password1");
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
	if (request.getParameter("email1") != null && request.getParameter("email_select") != null) {
		userEmail = request.getParameter("email1") + "@" + request.getParameter("email_select");
	}

	if (userID == null || userPassword == null || userEmail == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert ('입력이 안된 사항이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	
	if (groupNumber == null || groupName == null || userID == null || userPassword == null || userHp == 0 || userAddr == null || userPcode == 0 || userName == null || userEmail == null ) {
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
	Join3_DAO dao = new Join3_DAO();
	Join3_VO vo = new Join3_VO(groupNumber, groupName,  userID,  userPassword,  userHp, userAddr, userPcode, userName,
			userEmail);

	dao.addData(vo);
	
	out.println(vo.getEmail());
	
	

	request.setCharacterEncoding("UTF-8");
	request.getSession().setAttribute("userName", userName);
	response.sendRedirect("join4.jsp");
	

%>