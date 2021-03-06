<%@page import="com.exam.safety.dao.board_FAQ_Dao"%>
<%@page import="com.exam.safety.dto.board_FAQ_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 수정</title>
<!-- board_FAQ_modify.jsp -->
<!-- <link rel="stylesheet" href="../css/main.css" /> -->
<link rel="stylesheet" href="safety/css/safetyNavi.css">
<link rel="stylesheet" href="safety/css/footer.css" />
<link rel="stylesheet" href="safety/css/board_FAQ.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>

<script type="text/javascript">
	$(function() {

		$("#inquiry_area").val('${dto.faq_inquiry}').attr("selected", "selected");
		$(".subinquiry_area").val('${dto.faq_subInquiry}').attr("selected", "selected");


		
		$(".table_Bt.third").on('click', function(){
			var flag = confirm("정말 삭제하시겠습니까?");
			
			
		});
	});

	function modifyData(obj){
		var flag = confirm("정말 수정하시겠습니까?");
		
		if(flag) {
			obj.form.action = "./boardWriteFAQ.do?cmd=modifyOk";
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
				<div class="boardBack_left">
				</div>

				<div class="boardBack_right">
					<h1>자주묻는 질문</h1>
						<jsp:include page="backBoard_right.jsp"></jsp:include>

						<div class="right_inner">
							<form action="./boardWriteFAQ.do" name="frm" method="post">
								<input type="hidden" name="bno" value="${dto.faq_bno}" />
								<div id="container">
									<table class="inquiry_Table">
										<tr>
											<th><span>문의분야</span></th>
											<td>
												<select id="inquiry_area" name="inquiry_area">
													<option value="전체">전체</option>
													<option value="후원관련">후원관련</option>
													<option value="결제관련">결제관련</option>
													<option value="기부금영수증">기부금영수증</option>
													<option value="기타">기타</option>
												</select>
											</td>
										</tr>
										<tr>
											<th><span>세부분야</span></th>
											<td>
												<select id="inquiry_area" name="subinquiry_area" class="subinquiry_area">
													<option value="전체">전체</option>
													<option value="후원신청">후원신청</option>
													<option value="후원금">후원금</option>
													<option value="지원금">지원금</option>
													<option value="후원종료">후원종료</option>
													<option value="편지">편지</option>
													<option value="봉사">봉사</option>
													<option value="기타">기타</option>
												</select>
											</td>
										</tr>
										<tr>
											<th><span>제목</span></th>
											<td><input type="text" name="title" id="title" class="table_input" value="${dto.faq_title }" /></td>
										</tr>
										<tr>
											<th><span>내용</span></th>
											<td class="ta"><textarea name="ct" id="ct" cols="60" rows="20">${dto.faq_contents }</textarea></td>
										</tr>
										<!-- <tr>
											<th><span>답변</span></th>
											<td class="ta">
												<div class="table_answer">
													<textarea name="answer" id="ct" cols="60" rows="20"></textarea>
												</div>
											</td>
										</tr> -->
									</table>
									<div class="table_button">
										<input type="button" value="취소" class="table_Bt first" onclick="location.href='./boardWriteFAQ.do?cmd=manager'" />
										<input type="button" value="수정" onclick="modifyData(this)" class="table_Bt second" />
										<a href="./boardWriteFAQ.do?cmd=deleteOk&bno=${dto.faq_bno }">
										<input type="button" value="삭제" class="table_Bt third"/>
										</a>
									</div>
								</div>
							</form>
						</div>
						</div>

					</div>
				</div>
			</div>

			<jsp:include page="../etc/project_footer.jsp"></jsp:include>

</body>
</html>