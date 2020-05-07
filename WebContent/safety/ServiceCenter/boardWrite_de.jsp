<%@page import="com.exam.safety.dao.board_QA_Re_Dao"%>
<%@page import="com.exam.safety.dto.board_QA_Re_VO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.exam.safety.dao.board_QA_Dao"%>
<%@page import="com.exam.safety.dto.board_QA_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String no = request.getParameter("bno");
	board_QA_DTO vo = new board_QA_DTO();
	board_QA_Dao dao = new board_QA_Dao();

	board_QA_Re_VO rvo = new board_QA_Re_VO();
	board_QA_Re_Dao rdao = new board_QA_Re_Dao();

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
<title>문의 상세보기</title>
<!-- boardWrite_de.jsp -->
<!-- <link rel="stylesheet" href="../css/main.css" /> -->
<link rel="stylesheet" href="../css/boardWrite_de.css" />

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
							<form action="boardWrite_modify.jsp" name="frm">
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
											int cnt = rdao.getReplyCount(bno);
											if(cnt == 0) {
										%>

										<tr>
											<th><span>답변</span></th>
											<td class="ta">
												<!-- 답변 // 즉, 댓글 -->
												<div class="re_board">
													<textarea name="re" id="re" cols="60" rows="0" disabled>답변된 내용이 없습니다.</textarea>
												</div>
											</td>
										</tr>

										<%
											}else {
												ArrayList<board_QA_Re_VO> list = rdao.getAllReply(bno);

												for(board_QA_Re_VO revo : list) {
													if(revo.getQa_re_contents() != null) {


										%>
										<tr>
											<th><span>답변</span></th>
											<td class="ta">
												<!-- 답변 // 즉, 댓글 -->
												<div class="re_board">
													<textarea name="re" id="re" cols="60" rows="0" disabled><%= revo.getQa_re_contents() %></textarea>
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
													<textarea name="re" id="re" cols="60" rows="0" disabled>이메일을 확인해 주세요</textarea>
												</div>
											</td>
										</tr>

										<%
													}
												}
											}
										%>

									</table>
									<div class="table_button" >
										<input type="button" value="취소" class="table_Bt first" onclick="location.href='inquiry.jsp'" />
										<a href="boardWrite_detail.jsp?bno=<%= vo.getQa_bno() %>">
											<input type="button" value="수정" class="table_Bt second" />
										</a>
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