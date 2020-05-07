<%@page import="com.exam.safety.dto.Join1_VO"%>
<%@page import="com.exam.safety.dao.Join1_DAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String mem = (String)session.getAttribute("member");
Join1_DAO dao = new Join1_DAO();
ArrayList<Join1_VO> list = dao.getAllData1(mem);

for(Join1_VO vo : list){
%>

<div class="boardBack_left">
	<div class="profile">
		<img src="../image/user1.png" alt="" />
		<p><%= vo.getName() %>님</p>
		<p>2020L0407</p>
	</div>
	<%
}
	%>
	<div class="inner_nav">
		<ul class="in_nav">
			<li><a href="#"><span class="in_nav_span one">나의 후원내역</span></a></li>
			<li><a href="#"><span class="in_nav_span two">마이페이지</span></a></li>
			<li><a href="#"><span class="in_nav_span three">나의
						해외결연</span></a></li>
			<li><a href="#"><span class="in_nav_span four">후원 자료실</span></a></li>
			<li><a href="../myPage/myPage_Basic.jsp"><span class="in_nav_span five">나의
						회원정보</span></a></li>
			<li><a href="../ServiceCenter/myPage_FAQ.jsp"><span class="in_nav_span six">FAQ</span></a></li>
			<li><a href="../ServiceCenter/inquiry.jsp"><span class="in_nav_span seven">1:1
						문의</span></a></li>
			<li><a href="#"><span class="in_nav_span eight">기부금영수증</span></a></li>
		</ul>
	</div>

</div>









