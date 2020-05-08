<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의하기</title>
<!-- inquiry.jsp -->
<!-- <link rel="stylesheet" href="../css/main.css" /> -->
<link rel="stylesheet" href="safety/css/safetyNavi.css">
<link rel="stylesheet" href="safety/css/boardWrite.css" />
<link rel="stylesheet" href="safety/css/footer.css" />
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
		
		if($("#YN_email").is(":checked")) {
			console.log("체크 된 상태");
		}else {
			console.log("체크 안 된 상태")
		}


		
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
				<jsp:include page="backBoard_left.jsp"></jsp:include>
		
				<div class="boardBack_right">
				<h1>1:1 문의</h1>
						<jsp:include page="backBoard_right.jsp"></jsp:include>

						<div class="right_inner">
							<!-- <form action="boardWrite_Ok.jsp" name="frm"> -->
							<form action="./boardWriteQA.do" name="frm" method="post">
								<div id="container">
									<table class="inquiry_Table">
										<tr>
											<th><span>문의분야</span></th>
											<td>
												<select id="inquiry_area" name="inquiry_area">
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
											<td><input type="text" name="title" id="title" class="table_input" /></td>
										</tr>
										<tr>
											<th><span>내용</span></th>
											<td class="ta"><textarea name="ct" id="ct" cols="60" rows="20"></textarea></td>
										</tr>
										<tr>
											<th><span>이메일</span></th>
											<td class="ta">
												<div class="table_email_main"></div>
													<div class="table_email">
														<input type="text" name="email" id="email" class="table_input" />
														<span>@</span>
														<input type="text" name="domain" id="domain" class="table_input" />
														<select name="email_sel" id="email_sel">
															<option value="naver.com">naver.com</option>
															<option value="daum.com">daum.com</option>
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
															<input type="checkbox" name="YN_email" id="YN_email" title="이메일로 답변 받음" value="1"/>
															<!-- <i class="chk"></i> -->
															<span>이메일로 답변 받음</span>
														</label>
														<input type="hidden" name="YN_email" id="YN_email" value="0" />
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
										<input type="button" value="취소" class="table_Bt first" onclick="location.href='safety/ServiceCenter/inquiry.jsp'" />
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