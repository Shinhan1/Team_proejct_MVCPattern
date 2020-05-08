<%@page import="com.exam.safety.dao.board_FAQ_Dao"%>
<%@page import="com.exam.safety.dto.board_FAQ_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- FAQ_table_mypage.jsp -->
<!-- FAQ 테이블 - mypage -->
<%
	/* 페이징 처리 */
	
	// 현재 페이지(currentPage) 얻어오기
	String cp = request.getParameter("cp");
	String cp1 = request.getParameter("cp");
	String sel = request.getParameter("cctxt");

	int currentPage = 0;
	int currentPage1 = 0;
	
	if(cp != null) {
		currentPage = Integer.parseInt(cp);
	}else {
		currentPage = 1;
	}
	if(cp1 != null) {
		currentPage1 = Integer.parseInt(cp);
	}else {
		currentPage1 = 1;
	}
	
	board_FAQ_Dao dao = new board_FAQ_Dao();
	
	// 총 게시글 수
	int totalCount = dao.getTotalCount();
	int selCount = dao.getSelCount(sel);
	
	/* System.out.println(sel);
	System.out.println(selCount); */
	// 한 페이지당 레코드 수 : 5
	int recordByPage = 5;
	
	// 총 페이지 수
	int totalPage = (totalCount/recordByPage == 0) ? totalCount/recordByPage : totalCount/recordByPage+1;	// 삼항연산자
	int selPage = (selCount/recordByPage == 0) ? selCount/recordByPage : selCount/recordByPage+1;			// 검색을 위한 삼항연산자
	/* System.out.println(selPage); */
	
	// 현재 페이지 - 레코드 시작번호
	int startNo = (currentPage-1)*recordByPage+1;
	int startNo1 = (currentPage1-1)*recordByPage+1;
	
	// 현재 페이지 - 레코드 끝번호
	int endNo = currentPage*recordByPage;
	int endNo1 = currentPage1*recordByPage;
	//System.out.println(sel);
%> 


			<table id="board">
				<!--  사용자가 작성한 게시글을 전부 출력해보세요 -->
				<%
					/* if(sel == null) {		 */
							ArrayList<board_FAQ_DTO> list = dao.getAllData(startNo, endNo, sel);
							/* if(sel.equals("")){ */
											
							for (board_FAQ_DTO vo : list) {
				%>
				
				<tr class="q-row" >
					<td class="col1">Q <%= vo.getFaq_inquiry() %></td>
					<td class="col2">[<%= vo.getFaq_subInquiry() %>] <%= vo.getFaq_title() %></td>
					<td class="col3"><img src="../image/down1.png" alt="아래" /></td>
				</tr>
				<tr class="a-row" hidden="hidden" >
					<td colspan="3">
						<div class="a-wrap">
							<h4>A</h4>
						</div>
						<div class="a-contents">
							<textarea name="ct" id="ct" cols="120" rows="" disabled><%= vo.getFaq_contents() %></textarea>
						</div>
						
					</td>
				</tr>
				
				
				<% 
						} 
					/*}
					else {
						ArrayList<board_FAQ_VO> li = dao.selectData(sel);
						for(board_FAQ_VO vo1 : li) { */
				%>
				
				<%-- <tr class="q-row" >
					<td class="col1">Q <%= vo1.getFaq_inquiry() %></td>
					<td class="col2">[<%= vo1.getFaq_subInquiry() %>] <%= vo1.getFaq_title() %></td>
					<td class="col3"><img src="../image/down1.png" alt="아래" /></td>
				</tr>
				<tr class="a-row" hidden="hidden" >
					<td colspan="3">
						<div class="a-wrap">
							<h4>A</h4>
						</div>
						<div class="a-contents">
							<textarea name="ct" id="ct" cols="120" rows="" disabled><%= vo1.getFaq_contents() %></textarea>
						</div>
						
					</td>
				</tr>
				
				
				<% 
						}
					}
				
				%> --%>
				
				
			</table>
			<%
				if(sel == null){
					/* System.out.println("null"); */
				
			%>
			
			<div class="page">
				<% 
					for(int i = currentPage-10; i <= currentPage+10; i++) {
					    if(i <= 0) {
					      	continue;
					    }else if (i > totalPage) {
					      	break;
					    }else {
					      			
				%>
				<a href="myPage_FAQ.jsp?cp=<%= i %>"><span id="page">[<%= i %>]</span></a>
					      		
				<%
						}	// if() end
					      		
					 }	// for() end
				
			%>
			</div>		
		
			<% 
				}else{
			%>
			
			<div class="page">
				<% 
					for(int i = currentPage1-10; i <= currentPage1+10; i++) {
					    if(i <= 0) {
					      	continue;
					    }else if (i > selPage) {
					      	break;
					    }else {
					      			
				%>
				<a href="question_answer.jsp?cp=<%= i %>&cctxt=<%= sel %>"><span id="page">[<%= i %>]</span></a>
				<%
						}	// if() end
					      		
					 }	// for() end
					 %>      		
			</div>	
				<%
				}
				%>
			
			
			
			
			
			
			
			
			
			
			
			