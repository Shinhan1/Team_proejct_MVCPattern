<%@page import="com.exam.safety.dao.board_FAQ_Dao"%>
<%@page import="com.exam.safety.dto.board_FAQ_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


			<table id="board">
				
				
				<c:forEach var="dto" items="${list }">
				
				<tr class="q-row" >
					<td class="col1">Q ${dto.faq_inquiry}</td>
					<td class="col2">[${dto.faq_subInquiry}] ${dto.faq_title}</td>
					<td class="col3"><img src="../image/down1.png" alt="아래" /></td>
				</tr>
				<tr class="a-row" hidden="hidden" >
					<td colspan="3">
						<div class="a-wrap">
							<h4>A</h4>
						</div>
						<div class="a-contents">
							<textarea name="ct" id="ct" cols="120" rows="" disabled>${dto.faq_contents}</textarea>
						</div>
						
					</td>
				</tr>				
				
				</c:forEach>
				
				
			</table>
			
			<c:if test="${sel == null }">
			
			<div class="page">
				<c:forEach var="i" begin="1" end="${currentPage + 1 }">
				
				
				<a href="./boardWriteFAQ.do?cp=${i }"><span id="page">[${i }]</span></a>
				</c:forEach>	
				
			</div>		
			</c:if>
			
			<c:if test="${sel != null }">
			<div class="page">
				<c:forEach var="i" begin="1" end="${currentPage1 + 1 }">
				<a href="./boardWriteFAQ.do?cp=${i }&cctxt=${sel}"><span id="page">[${i }]</span></a>
				</c:forEach> 		
			</div>
			</c:if>
				
				
			
			
			
			
			
			
			
			
			