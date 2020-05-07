<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트맵</title>
<!-- siteMap.jsp -->
<link rel="stylesheet" href="../css/main.css" />
<link rel="stylesheet" href="../css/siteMap.css" />
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
	<jsp:include page="../etc/dona.jsp"></jsp:include>
	<div class="m">
		<jsp:include page="../etc/sf_nav.jsp"></jsp:include>
		<div class="main">
			<div class="customer">
				<h2>사이트맵</h2>
			</div>


			<div class="boardBack">
				<div class="bb_table1">
					<table class="siteMap_tb first">
						<tr>
							<th><a href="introduce.jsp">소개</a></th>
							<th><a href="">후원</a></th>
							<th><a href="../ServiceCenter/customer_center.jsp">고객센터</a></th>
							<th><a href="">후원하기</a></th>
						</tr>
						<tr>
							<td>
								<ul>
									<li><a href="siteMap.jsp">사이트맵</a></li>
									<li><a href="">기업</a></li>
									<li><a href="map.jsp">위치정보</a></li>
								</ul>
							</td>
							<td>
								<ul>
									<li><a href="">캠페인</a></li>
									<li><a href="">후원정보</a></li>
								</ul>
							</td>
							<td>
								<ul>
									<li><a href="../ServiceCenter/question_answer.jsp">Q & A</a></li>
									<li><a href="../ServiceCenter/help.jsp?fno=personal_infor">개인정보처리방침</a></li>
									<li><a href="../ServiceCenter/help.jsp?fno=access">이용약관</a></li>
								</ul>
							</td>
							<td>
								<ul>
									<li><a href="">후원하기 방식</a></li>
									<li><a href="">후원금 결제방식</a></li>
									<li><a href="">결제완료</a></li>
								</ul>
							</td>
						</tr>
					</table>
				</div>
				<div class="bb_table2">
					<table class="siteMap_tb second">
						<tr>
							<th><a href="">회원가입</a></th>
							<th><a href="">마이페이지</a></th>
							<th><a href="../ServiceCenter/help.jsp?fno=access">이용안내</a></th>
						</tr>
						<tr>
							<td>
								<ul>
									<li><a href="">로그인</a></li>
									<li><a href="">아이디 찾기</a></li>
									<li><a href="">비밀번호 찾기</a></li>
									<li><a href="">회원가입</a></li>
								</ul>
							</td>
							<td>
								<ul>
									<li><a href="">나의 후원내역</a></li>
									<li><a href="">후원 자료실</a></li>
									<li><a href="">나의 회원정보</a></li>
									<li><a href="../ServiceCenter/question_answer.jsp">FAQ</a></li>
									<li><a href="../ServiceCenter/inquiry.jsp">1:1 문의</a></li>
								</ul>
							</td>
							<td>
								<ul>
									<li><a href="../ServiceCenter/question_answer.jsp">FAQ</a></li>
									<li><a href="../ServiceCenter/help.jsp?fno=access">이용약관</a></li>
									<li><a href="../ServiceCenter/help.jsp?fno=personal_infor">개인정보처리방침</a></li>
									<li><a href="../ServiceCenter/help.jsp?fno=personal_info_collectUse">개인정보 수집 및 이용</a></li>
									<li><a href="map.jsp">오시는 길</a></li>
								</ul>
							</td>
						</tr>
					</table>
					<div class="bb_sns">
						<a href="http://www.facebook.com">
							<img src="../image/facebook.png" alt="페이스북" />
							<span>Facebook</span>
						</a>
						<a href="http://www.instagram.com">
							<img src="../image/instagram.png" alt="인스타그램" />
							<span>Instagram</span>
						</a>
						<a href="http://www.twitter.com">
							<img src="../image/twitter.png" alt="트위터" />
							<span>Twitter</span>
						</a>
						<a href="http://www.youtube.com">
							<img src="../image/youtube.png" alt="유튜브" />
							<span>Youtube</span>
						</a>
					</div>

				</div>
			</div>
		</div>
		<jsp:include page="../etc/project_footer.jsp"></jsp:include>
	</div>


</body>
</html>