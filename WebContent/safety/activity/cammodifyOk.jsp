<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.exam.safety.dto.CampaignVO"%>
<%@page import="com.exam.safety.dao.CampaignDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%

 	String saveDir = request.getRealPath("upload");

	int maxFileSize = 1024*1024*10;

	MultipartRequest mr =
			new MultipartRequest(request, saveDir, maxFileSize,  "UTF-8", new DefaultFileRenamePolicy());


 	String link = mr.getParameter("li");
 	String title = mr.getParameter("ti");
 	String contents = mr.getParameter("ct");


 	String img = mr.getOriginalFileName("img");



 	CampaignDAO dao = new CampaignDAO();
 	CampaignVO vo = new CampaignVO();

 	vo.setCamimg("../upload/" + img);
 	vo.setCamlink(link);
 	vo.setCamtitle(title);
 	vo.setCamcontents(contents);


 	dao.addData(vo);


 	response.sendRedirect("campaign.jsp");




 %>
