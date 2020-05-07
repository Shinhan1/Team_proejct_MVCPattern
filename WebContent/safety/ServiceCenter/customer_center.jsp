<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<!-- customer_center.jsp -->
<link rel="stylesheet" href="../css/main.css" />
<link rel="stylesheet" href="../css/customer_center.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {

	$('.smb').mouseover(function() {

		$(this).css("border", "1px solid red");

	});

	$('.smb').mouseout(function() {

		$(this).css("border", "1px solid #BDBDBD");

	});

});
</script>
</head>
<body>
	<jsp:include page="../etc/dona.jsp" />
	<div class="m">
		<jsp:include page="../etc/sf_nav.jsp"></jsp:include>
		<div class="main">
			<div style=""></div>

			<div class="subMenu">
				<div class="subMenu_bar">
				<a href="question_answer.jsp">Q & A</a>
				<a href="help.jsp?fno=personal_infor">개인정보처리방침</a>
				<a href="help.jsp?fno=access">이용약관</a>
				</div>
			</div>

			<div class="customer">
				<div class="main_div">
				<p id="mainP">나눔과 참여로 더 큰 행복을 만들어 갑니다.</p>
				<p id="subp">Q & A</p>
				<p id="subp1">궁금한 점이 있다면 여기서 확인해주세요!</p>
				<div class="under_bar">
					<div class="ub">
						 <img class="img9" src="../image/sf_후원가이드.png" alt="chat" />
						<a href="../support/caminfor.jsp"><p class="tewh">후원가이드</p>
						<p class="tewh2">후원이 처음이세요?</p>
						</a>

					</div>
					<div class="ub">
					<img class="img9" src="../image/sf_1대1문의.png" alt="inquiry" />
							<a href="inquiry.jsp"><p class="tewh">1:1문의</p>
						<p class="tewh2">원하는 답변이 없나요?</p>
						</a>
					</div>
					<div class="ub">
						<img class="img9" src="../image/sf_전화문의.png" alt="call" />
						<p class="tewh">전화문의</p>
						<p class="tewh2">010-9953-5444</p>
						<!-- <br />(평일 오전9시30분 ~ 오후 6시 30분) -->
					</div>
				</div>
				</div>

			</div>

			<div class="secDiv">
				<div class="main_div second">

					<h2 id="h2_1">이용안내</h2>


						<div class="second_img">
							<img src="../image/newicon3.png" alt="" />
						</div>

						<div>
						<div class="sub">
						<div class="smb access">
							<img src="../image/이용약관.png" alt="" />
							<a href="help.jsp?fno=access"><h3>이용약관</h3></a>
						</div>
						<div class="smb p_info">
							<img src="../image/ci소개.png" alt="" />
							<a href="../Introduce/safety_ci.jsp"><h3>ci소개</h3></a>
						</div>
						<div class="smb p_info_cu">
							<img src="../image/개인정보.png" alt="" />
							<a href="help.jsp?fno=personal_infor"><h3>개인정보</h3></a>
						</div>
						</div>


						<div class="sub1">
						<div class="smb access">
							<img src="../image/사이트맵.png" alt="" />
							<a href="../Introduce/siteMap.jsp"><h3>사이트맵</h3></a>
						</div>
						<div class="smb p_info">
							<img src="../image/캠페인.png" alt="" />
							<a href="../activity/campaign.jsp"><h3>캠페인</h3></a>
						</div>
						<div class="smb p_info_cu">
							<img src="../image/후원하기.png" alt="" />
							<a href="help.jsp?fno=personal_info_collectUse"><h3>후원하기</h3></a>
						</div>
						</div>
						</div>
				</div>
			</div>

		</div>

		<jsp:include page="../etc/project_footer.jsp"></jsp:include>
	</div>
</body>
</html>