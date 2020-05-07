<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.exam.safety.dto.CampaignVO"%>
<%@page import="com.exam.safety.dao.CampaignDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 	// 사용자가 입력한 데이터를 브라우저 화면에 출력해보세요
 	// 바로 DBMS에 접근하지 말고 확인하는 습관을 가지세요!
 	// 브라우저 또는 콘솔에 먼저 출력해보세요
 	String saveDir = request.getRealPath("upload");

	int maxFileSize = 1024*1024*10;

	MultipartRequest mr =
			new MultipartRequest(request, saveDir, maxFileSize,  "UTF-8", new DefaultFileRenamePolicy());


 	String link = mr.getParameter("li");
 	String title = mr.getParameter("ti");
 	String contents = mr.getParameter("ct");


 	String img = mr.getOriginalFileName("img");




 	// DB에 연결 후 write.jsp에서 전달해온 값을 저장
 	CampaignDAO dao = new CampaignDAO();
 	CampaignVO vo = new CampaignVO();

 	vo.setCamimg("../upload/" + img);
 	vo.setCamlink(link);
 	vo.setCamtitle(title);
 	vo.setCamcontents(contents);

 	//사용작의 IP를 얻어오기
 	/* String ip = request.getRemoteAddr();
 	vo.setIp(ip); */

 	dao.addData(vo);

 	 //DB에 저장이 잘 됐으면 게시판 메인으로 화면 이동
 	response.sendRedirect("campaign.jsp");



 %>