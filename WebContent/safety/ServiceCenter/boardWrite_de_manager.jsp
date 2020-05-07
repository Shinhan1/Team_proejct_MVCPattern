<%@page import="com.exam.safety.dao.board_QA_Dao"%>
<%@page import="com.exam.safety.dto.board_QA_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.exam.safety.dto.board_QA_Re_VO"%>
<%@page import="com.exam.safety.dao.board_QA_Re_Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String no = request.getParameter("bno");
	board_QA_DTO vo = new board_QA_DTO();
	board_QA_Dao dao = new board_QA_Dao();
	
	board_QA_Re_Dao rdao = new board_QA_Re_Dao();
	board_QA_Re_VO rvo = new board_QA_Re_VO();
	
	int bno = 0;
	
	if (no != null) {
		bno = Integer.parseInt(no);
		// 조회수 증가 메소드 추가
		dao.raiseHits(bno);
		
		vo = dao.getData(bno);
	} else {
		response.sendRedirect("inquriy.jsp");
	}
	
	String email_domain = vo.getQa_email();
	int pos = email_domain.indexOf('@');
	String email = email_domain.substring(0, pos);
	String domain = email_domain.substring(pos+1, email_domain.length());
%>


<html>
<head>
<meta charset="UTF-8">
<title>문의 상세보기 - 관리자</title>
<!-- boardWrite_de_manager.jsp -->
<!-- <link rel="stylesheet" href="../css/main.css" /> -->
<link rel="stylesheet" href="../css/boardWrite_de_manager.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
	var domain = '<%= domain %>';
	$(function() {

		$('.nav').mouseover(function() {

			$(this).css("border-bottom", "2px solid red");

		});

		$('.nav').mouseout(function() {

			$(this).css("border-bottom", "none");

		});

		$('.ub').mouseover(function() {

			$(this).css("border", "1px solid red");

		});

		$('.ub').mouseout(function() {

			$(this).css("border", "1px solid #BDBDBD");

		});	
		
		
		$(".table_Bt.third").on('click', function(){
			var flag = confirm("정말 삭제하시겠습니까?");
			
			
		});
		
	});
	
	
	function inquiryReply(obj){
		var flag = confirm("정말 작성하시겠습니까?");
		
		if(flag) {
			obj.form.submit();
			
		}
		
	}
	
	
	
	
</script>
</head>
<body>
	<jsp:include page="../etc/dona.jsp"></jsp:include>
	<div class="m">
			<jsp:include page="../etc/sf_nav.jsp"></jsp:include>
			
			
		<div class="main">
			<div class="customer">
			</div>
			<div class="boardBack">
				<jsp:include page="backBoard_left.jsp"></jsp:include>
		
				<div class="boardBack_right">
					<h1>1:1 문의</h1>
						<jsp:include page="backBoard_right.jsp"></jsp:include>

						<div class="right_inner">
							<form action="manager_replyOk.jsp">
								<input type="hidden" name="bno" value="<%= vo.getQa_bno() %>" />
								<div id="container">
									<table class="inquiry_Table">
										<tr>
											<th><span>문의분야</span></th>
											<td>
												<input type="text" name="inquiry_area" id="inquiry_area" 
												value="<%= vo.getQa_inquiry() %>" disabled />
											</td>
										</tr>
										<tr>
											<th><span>제목</span></th>
											<td><input type="text" name="title" id="title" class="table_input" 
											value="<%= vo.getQa_title() %>" disabled /></td>
										</tr>
										<tr>
											<th><span>내용</span></th>
											<td class="ta">
												<textarea name="ct" id="ct" cols="60" rows="20" disabled><%= vo.getQa_contents() %></textarea>
											</td>
										</tr>
										<tr>
											<th><span>이메일</span></th>
											<td class="ta">
												<div class="table_email">
													<input type="text" name="email" id="email" class="table_input" value="<%= email %>" disabled />
													<span>@</span>
													<input type="text" name="domain" id="domain" class="table_input" value="<%= domain %>" disabled />
												</div>
													
											</td>
										</tr>
										<% 
											int check = vo.getQa_e_st();
											if(check == 0) {
										%>
										<tr>
											<th><span>답변</span></th>
											<td class="ta">
												<!-- 답변 // 즉, 댓글 -->
												<div class="re_board">
													<textarea name="re" id="re" cols="60" rows="0"></textarea>
												</div>
									
											</td>
										</tr>
										
										<%
											}else {
										%>
										
										<tr>
											<th><span>답변</span></th>
											<td class="ta">
												<!-- 답변 // 즉, 댓글 -->
												<div class="re_board">
													<textarea name="re" id="re" cols="60" rows="0" disabled>이메일로 답변 받음</textarea>
												</div>
									
											</td>
										</tr>
										<tr>
											<th><span>답변완료</span></th>
											<td class="ta1">
												<!-- 답변완료 // -->
												<input type="checkbox" name="check" id="check" title="답변 완료" value="1"/>
												<input type="hidden" name="check" id="check" value="0" />
									
											</td>
										</tr>
										<%
											}
										%>
										
										
									</table>
									<div class="table_button" >
										<input type="button" value="취소" class="table_Bt first" onclick="location.href='inquiry_manager.jsp'" />
										<%-- <a href="boardWrite_detail.jsp?bno=<%= vo.getQa_bno() %>"> --%>
										<input type="button" value="작성" class="table_Bt second" onclick="inquiryReply(this)" />
										<!-- </a> -->
									</div>
								
								</form>
							</div>
						</div>		<!-- boardBack_right end -->
						
					</div>
				</div>
			</div>
		
			<jsp:include page="../etc/project_footer.jsp"></jsp:include>
		

</body>
</html>