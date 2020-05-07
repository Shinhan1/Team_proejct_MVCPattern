<%@page import="com.exam.safety.dao.board_QA_Dao"%>
<%@page import="com.exam.safety.dto.board_QA_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
	String no = request.getParameter("bno");
	board_QA_DTO vo = new board_QA_DTO();
	board_QA_Dao dao = new board_QA_Dao();
	
	if (no != null) {
		int bno = Integer.parseInt(no);
		// 선택한 bno의 데이터 가져오기
		vo = dao.getData(bno);
	} else {
		response.sendRedirect("inquriy.jsp");
	}
	
	// DB에 저장되는 email 형식은 ****@****.com
	// 이런식으로 되어있기 때문에 @를 기준으로 앞 뒤를 따서 email, domain 선언
	String email_domain = vo.getQa_email();
	int pos = email_domain.indexOf('@');
	String email = email_domain.substring(0, pos);
	String domain = email_domain.substring(pos+1, email_domain.length());
%>


<html>
<head>
<meta charset="UTF-8">
<title>수정/삭제하기</title>
<!-- boardWrite_detail.jsp -->
<!-- <link rel="stylesheet" href="../css/main.css" /> -->
<link rel="stylesheet" href="../css/boardWrite_detail.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
	
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
		
		//- index 값으로 주기
		//$("#selBox option:eq(0)").attr("selected", "selected");

		//- value 값으로 주기
		<%-- $("#domain").val("<%= domain %>").attr("selected", "selected"); --%>
		
		
		$("#inquiry_area").val('<%= vo.getQa_inquiry() %>').attr("selected", "selected");
		$("#email_sel").val(domain).attr("selected", "selected");
		$("#email_sel").change(function(){
			$("#domain").val($("#email_sel option:selected").val());
		});
		

		
		$(".table_Bt.third").on('click', function(){
			var flag = confirm("정말 삭제하시겠습니까?");
			
			
		});
		
	});
	
	function modifyData(obj){
		var flag = confirm("정말 수정하시겠습니까?");
		
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
							<form action="boardWrite_modify.jsp" name="frm">
								<input type="hidden" name="bno" value="<%= vo.getQa_bno() %>" />
								<div id="container">
									<table class="inquiry_Table">
										<tr>
											<th><span>문의분야</span></th>
											<td>
												<select id="inquiry_area" name="inquiry_area" >
													<option value="전체">전체</option>
													<option value="후원신청">후원신청</option>
													<option value="후원자정보">후원자정보</option>
													<option value="결제정보">결제정보</option>
													<option value="기부금영수증">기부금영수증</option>
													<option value="해외결연후원">해외결연후원</option>
													<option value="기타">기타</option>
												</select>
											</td>
										</tr>
										<tr>
											<th><span>제목</span></th>
											<td><input type="text" name="title" id="title" class="table_input" value="<%= vo.getQa_title() %>" /></td>
										</tr>
										<tr>
											<th><span>내용</span></th>
											<td class="ta"><textarea name="ct" id="ct" cols="60" rows="20"><%= vo.getQa_contents() %></textarea></td>
										</tr>
										<tr>
											<th><span>이메일</span></th>
											<td class="ta">
												<div class="table_email_main"></div>
													<div class="table_email">
														<input type="text" name="email" id="email" class="table_input" value="<%= email %>" />
														<span>@</span>
														<input type="text" name="domain" id="domain" class="table_input" value="<%= domain %>"/>
														<select name="email_sel" id="email_sel" >
															<option value="naver.com">naver.com</option>
															<option value="daum.net">daum.net</option>
															<option value="gmail.com">gmail.com</option>
															<option value="hanmail.com">hanmail.com</option>
															<option value="nate.com">nate.com</option>
															<option value="yahoo.com">yahoo.com</option>
															<option value="dreamwiz.com">dreamwiz.com</option>
															<option value="">직접 입력</option>
														</select>
													</div>
													<div class="email_check">
														<label for="YN_email" class="checkbox">
															<input type="checkbox" name="YN_email" id="YN_email" title="이메일로 답변 받음" value="Y"/>
															<!-- <i class="chk"></i> -->
															<span>이메일로 답변 받음</span>
														</label>
														<input type="hidden" name="YN_email" id="YN_email" value="Y" />
													</div>
													<div>
														<ul class="email_ul">
															<li>이메일로 답변 받길 원하시면, '이메일로 답변 받음'에 체크해주세요.
															<br />
															위에 입력하신 주소로 답변을 보내드리며, 마이페이지 > 나의 회원정보에 등록된 이메일 주소가 함께 변경됩니다. <br /><br />
															</li>
															<li>답변이 완료되면 등록된 휴대폰 번호로 답변 완료 알림을 보내드리며, 상세내용은 마이페이지>1:1문의에서 확인 가능합니다.</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>
									</table>
									<div class="table_button">
										<input type="button" value="취소" class="table_Bt first" onclick="location.href='inquiry.jsp'" />
										<input type="button" value="수정" onclick="modifyData(this)" class="table_Bt second" />
										<a href="boardWrite_deleteOk.jsp?bno=<%= vo.getQa_bno()%>">
										<input type="button" value="삭제" class="table_Bt third" />
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