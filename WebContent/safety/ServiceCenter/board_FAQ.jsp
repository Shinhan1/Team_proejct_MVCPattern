<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주묻는질문 등록하기</title>
<!-- boardFAQ.jsp -->
<!-- <link rel="stylesheet" href="../css/main.css" /> -->
<link rel="stylesheet" href="../css/board_FAQ.css" />
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
		$("#domain").val($("#email_sel option:selected").val());
		$("#email_sel").change(function(){
			$("#domain").val($("#email_sel option:selected").val());
		});

	});

	function submitForm(obj) {
		var flag = confirm("등록하시겠습니까?");

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
				<div class="boardBack_left">
				</div>

				<div class="boardBack_right">
					<h1>자주묻는 질문</h1>
						<jsp:include page="backBoard_right.jsp"></jsp:include>

						<div class="right_inner">
							<form action="board_FAQ_write.jsp" name="frm">
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
												<select id="inquiry_area" name="subinquiry_area">
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
											<td><input type="text" name="title" id="title" class="table_input" /></td>
										</tr>
										<tr>
											<th><span>내용</span></th>
											<td class="ta"><textarea name="ct" id="ct" cols="60" rows="20"></textarea></td>
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
										<input type="button" value="취소" class="table_Bt first" onclick="location.href='question_answer.jsp'" />
										<input type="button" value="등록" onclick="submitForm(this)" class="table_Bt second" />
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