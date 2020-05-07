<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후원하기</title>
<!-- donation.jsp -->
<link rel="stylesheet" href="../css/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

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

	});
</script>
</head>
<body>
	<input type="image" src="../image/dona.jpg" alt="후원하기" id="donaBtn" onclick="location.href='donation.jsp'"/>
	<div class="m">
	<div class="main">
		<jsp:include page="sf_nav.jsp"></jsp:include>

		<div class="customer">
			<h2>466802-04-160113 국민은행<br />후원하세요</h2>
		</div>
		<div class="boardBack">
			<br /> <br /> <br /> <br />
			<div class="under_bar">
				<div class="ub">
					<img src="../image/chat.png" alt="chat" />
					<h3>후원가이드</h3>
					<p>후원이 처음이세요?</p>
					<a href=""> <img src="../image/next1.png" alt=">" />
					</a>
				</div>
				<div class="ub">
					<img src="../image/inquiry.png" alt="inquiry" />
					<h3>1:1문의</h3>
					<p>원하는 답변이 없나요?</p>
					<a href="../ServiceCenter/inquiry.jsp"> <img src="../image/next1.png" alt=">" />
					</a>
				</div>

				<div class="ub">
					<img src="../image/call.png" alt="call" />
					<h3>전화문의</h3>
					<p>010-9953-5444</p>
					<!-- <br />(평일 오전9시30분 ~ 오후 6시 30분) -->
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="project_footer.jsp"></jsp:include>
	</div>


</body>
</html>