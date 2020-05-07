<%-- <%@page import="tim_Project_Dao.board_QA_Dao"%>
<%@page import="tim_Project_VO.board_QA_VO"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%-- <%
	String no = request.getParameter("bno");
	board_QA_VO vo = new board_QA_VO();
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
 --%>

<html>
<head>
<meta charset="UTF-8">
<title>수정/삭제하기</title>
<!-- boardWrite_detail.jsp -->
<!-- <link rel="stylesheet" href="../css/main.css" /> -->
<style type="text/css">
@charset "UTF-8";
/* 오른쪽 하단 후원하기 버튼 */
#donaBtn {
	position: fixed;
	bottom: 50px;
	right: 50px;
	opacity: 0.7;
	width: 180px;
	height: 100px;
}

.header {
	height: 71px;
	border-bottom: 1px solid #8C8C8C;
}
/* 로고 css */
#logo {
	height: 70px;
	width: 150px;
	margin-left: 10px;
	float: left;
	margin-right: 60px;
}
/* nav바 */
.navi_li {
	margin: 20px 0 0 0;
	display: inline;
	float: left;
}

/* nav바 */
.nav {
	padding: 60px 60px 23px 60px;
	text-decoration: none;
	font-size: 20px;
	color: black;
}
/* nav바 밑 서브메뉴들 */
.hide_menu {
	position: absolute;
	top: 88px;
	left: 230px;
	background-color: white;
	display: none;
}
/* nav바 밑 서브메뉴들 */
.hide_menu ul {
	float: left;
	list-style: none;
}
/* nav바 밑 서브메뉴들 */
.hide_menu li a {
	text-decoration: none;
	color: black;
}
/* nav바에 마우스를 올렸을 때  */
.navi:hover .hide_menu {
	display: block;
}
/* nav바 밑 서브메뉴들 */
#hm_ul2 {
	margin-left: 60px;
}

#hm_ul3 {
	margin-left: 60px;
}

#hm_ul4 {
	margin-left: 20px;
	padding-right: 30px;
}

/* 후원가이드 1:1문의 전화문의 */
.under_bar {
	height: 160px;
}
/* 후원가이드 1:1문의 전화문의 */
.under_bar div {
	border: 1px solid #BDBDBD;
	padding: 20px;
	margin-top: 50px;
	margin-right: 40px;
	width: 25%;
	height: 60px;
	float: left;
}
/* 후원가이드 1:1문의 전화문의 */
.under_bar div img {
	float: left;
	padding-right: 20px;
}
/* 후원가이드 1:1문의 전화문의 */
.under_bar div p {
	font-size: 13px;
}
/* 후원가이드 1:1문의 전화문의 */
.under_bar div h3 {
	margin: 0;
}
/* 후원가이드 1:1문의 전화문의 */
.under_bar div a img {
	float: right;
	margin-top: -50px;
	margin-right: -30px;
}
/* 맨 위 nav와 맨 밑 footer를 제외한 전체 div */
.main {
	height: 1350px;
	background-color: #F6F6F6;
}

/* 맨 아래 div */
.footer {
	width: 1903px;
	height: 190px;
	background-color: #EAEAEA;
	height: 190px;
}
/* 맨 아래 div */
.inner {
	padding: 20px 135px 20px 360px;
}
/* 맨 하단 div */
.footer_top input {
	margin-right: 20px;
}
/* 맨 하단 div */
.fb {
	border-right: 1px solid #BDBDBD;
	padding-right: 20px;
	padding-left: 20px;
	text-align: center;
	display: inline;
	float: left;
}
/* 맨 하단 div */
.fb:first-child {
	margin-left: -60px;
}
/* 맨 하단 div */
.fb:last-child {
	border-right: none;
}
/* 맨 하단 div */
.fb a {
	text-decoration: none;
	color: black;
}
/* 맨 하단 div */
.fb_mi {
	border-right: 1px solid #BDBDBD;
	padding-right: 20px;
	padding-left: 20px;
	text-align: center;
	display: inline;
	float: left;
	font-size: 12px;
	color: #4C4C4C;
}
/* 맨 하단 div */
.fb_mi:first-child {
	margin-left: -60px;
}
/* 맨 하단 div */
.fb_mi:last-child {
	border-right: none;
}
/* 맨 하단 div */
.footer_bottom p {
	font-size: 12px;
	color: #A6A6A6;
}

body {
	margin: 0;
}
/* 전체 div */
.m {
	width: 1903px;
}

/* 본 내용 사진 div */
.customer {
	background-image: url(../images/pencil.gif);
	background-size: 100% 100%;
	height: 170px;
	padding-top: 100px;
	text-align: center;
}
/* 메인 div  */
.boardBack {
	margin: -200px 0 0 360px;
	width: 1200px;
	height: 800px;
}

/* 메인 div 왼쪽 메뉴들 */
.boardBack_left {
	opacity: 0.9;
	margin: 0;
	width: 150px;
	height: 800px;
	float: left;
	padding-top: 20px;
}
/* 메인 div 왼쪽 메뉴 프로필 */
.profile {
	text-align: center;
}
/* 메인 div 왼쪽 메뉴들 */
.boardBack_left img {
	margin: 0 auto;
}

/* 내용 좌측 div ul */
.in_nav {
	margin-top: 37px;
}
/* 내용 좌측 div ul */
.in_nav li span {
	display: block;
	height: 50px;
	line-height: 50px;
	border-top: 1px solid #e5e5e5;
	border-bottom: 1px solid #e5e5e5;
}
/* 내용 좌측 div ul */
.in_nav li {
	list-style: none;
}
/* 내용 좌측 div ul */
.in_nav li a {
	text-decoration: none;
	color: black;
}
/* 내용 좌측 div ul */
.in_nav li span:last-child {
	border-bottom: none;
}

/* 내용 우측 div */
.boardBack_right {
	background-color: white;
	width: 1050px;
	float: left;
	padding: 40px;
	box-sizing: border-box;
	box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, .15);
}
/* 수정/삭제하기에서 이메일 input */
#email, #domain {
	width: 130px;
	height: 20px;
	border: none;
}
/* 내용 좌측 div ul */
.in_nav_span.five {
	background-color: white;
	color: red;
	box-shadow: -5px 5px 10px -5px rgba(0, 0, 0, .15);
}
/* 메인 div의 오른쪽 div의 h2 Safety재단 문의방법 */
.bb_right_title {
	font-size: 13px;
	width: 300px;
	height: 100px;
	float: left;
	color: #926d49;
	width: 300px;
}

/* 메인 div의 오른쪽 div의 후원가이드, 1:1 문의, 전화문의 div */
.info_faq {
	float: left;
	width: 20%;
	padding: 10px 10px 10px 40px;
}
/* 메인 div의 오른쪽 div의 후원가이드, 1:1 문의, 전화문의 div */
.info_faq h4 {
	color: #926d49;
}
/* 메인 div의 오른쪽 div의 후원가이드, 1:1 문의, 전화문의 div */
.info_faq img {
	float: left;
	padding-right: 20px;
	margin-top: 15px;
}
/* 메인 div의 오른쪽 div의 후원가이드, 1:1 문의, 전화문의 div */
.info_faq a img {
	float: right;
	margin-top: -60px;
	margin-right: -30px;
}
/* 메인 div의 오른쪽 div의 후원가이드, 1:1 문의, 전화문의 div */
.info_faq p {
	font-size: 13px;
}
/* 메인 div의 오른쪽 div의 후원가이드, 1:1 문의, 전화문의 div */
.info_faq a {
	text-decoration: none;
	color: #3DB7CC;
}
/* 메인 div의 오른쪽 div의 후원가이드, 1:1 문의, 전화문의 div */
.in_nav_span {
	font-size: 14px;
	padding-left: 10px;
	box-sizing: border-box;
}
/* 문의 테이블 */
.inquiry_Table {
	width: 100%;
	border-collapse: collapse;
	border-top: 1px solid #D5D5D5;
	margin-bottom: 20px;
}
/* 문의 테이블 */
.inquiry_Table .onetr {
	border-bottom: 1px solid #D5D5D5;
}
/* 문의 테이블 */
.inquiry_Table th {
	width: 200px;
	box-sizing: border-box;
	text-align: center;
	padding: 26px 0 26px 25px;
}
/* 문의 테이블 */
.inquriy_Table td {
	padding: 10px 0;
}

td {
	padding-left: 50px;
}
/* 문의 테이블 */
.table_input {
	height: 40px;
	width: 480px;
	padding: 20px;
	box-sizing: border-box;
	border: 1px solid #D5D5D5;
}
/* 문의 테이블 */
textarea {
	padding: 20px;
	width: 550px;
	height: 230px;
	box-sizing: border-box;
	border: 1px solid #D5D5D5;
}
/* 문의 테이블 */
.table_button {
	text-align: center;
}
/* 문의 테이블 */
.table_Bt {
	width: 150px;
	height: 55px;
	font-size: 17px;
}
/* 문의 테이블 */
.table_Bt.first {
	background-color: white;
	border: 1px solid #D5D5D5;
}
/* 문의 테이블 */
.table_Bt.second {
	background-color: #3e66ae;
	border: 1px solid #3e66ae;
	color: white;
}
/* 문의 테이블 */
.table_Bt.third {
	background-color: #4C4C4C;
	border: 1px solid #4C4C4C;
	color: white;
}
/* 문의 테이블 */
.table_email {
	width: 480px;
	border: 1px solid #D5D5D5;
	margin-bottom: 10px;
}
/* 문의 테이블 */
#email_sel {
	border: none;
	height: 40px;
	margin-left: 60px;
}
/* 문의 테이블 */
#inquiry_area {
	width: 150px;
	height: 40px;
	border: 1px solid #D5D5D5;
	box-sizing: border-box;
	padding-left: 15px;
}
/* 문의 테이블 */
.ta {
	padding-top: 20px;
}
/* 문의 테이블 */
input:focus {
	outline: none;
}

textarea:focus {
	outline: none;
}

select:focus {
	outline: none;
}


.emailBox2, .emailBox1 {
	outline: none;
	padding: 0;
	border: 1px solid #dddddd;
	color: #666;
	font-size: 15px;
	width: 150px;
	height: 40px;
	border: 1px solid #dddddd;
	color: #666;
	font-size: 15px;
}

.email3 {
	margin-left: 10px; 
	height: 40px;
	width: 130px;
}
.checkbox {
	width: 200px;
}

#passwordCh {
	background-color: #747474;
	border: 1px solid #747474;
	color: white;
	width: 150px;
	height: 45px;
	font-size: 15px;
}

.hpAll {
	width: 150px;
}

.hpBox, .hpAll, .d_form mini {
	outline: none;
	padding: 0 20px;
	border: 1px solid #dddddd;
	color: #666;
	font-size: 15px;
	width: 120px;
	height: 40px;
}

/*
		#top {
			text-align: center;
			border-bottom: 1px solid black;
		}
		
		#contents {
			margin-left: 10px;
		}
		#button{
			margin-left: 30px;
		}
		
		#writer, #title, #email, #inquiry{margin-left:10px;} */
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js"
	charset="utf-8"></script>
<script type="text/javascript">
<%-- 	var domain = '<%= domain %>'; --%>
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
		
		
		$("#inquiry_area").val('gg').attr("selected", "selected");
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
	<input type="image" src="../images/dona.jpg" alt="후원하기" id="donaBtn"
		onclick="location.href='donation.jsp'" />
	<div class="m">
		<%-- 			<jsp:include page="project_nav.jsp"></jsp:include> --%>


		<div class="main">
			<div class="customer"></div>
			<div class="boardBack">
				<jsp:include page="myPage_left.jsp"></jsp:include>

				<div class="boardBack_right">
					<jsp:include page="myPage_right.jsp"></jsp:include>

					<div class="right_inner">
						<form action="boardWrite_modify.jsp" name="frm">
							<input type="hidden" name="bno" value="no_value" />
						
								<table class="inquiry_Table">

									<tr>
										<th><span>성명</span></th>
										<td><input type="text" name="title" id="title"
											class="table_input" value="이름 받아오기" /></td>

									</tr>
									<tr>
										<th><span>생년월일</span></th>
										<td><input type="text" name="title" id="title"
											class="table_input" value="생일 받아오기 " /></td>

									</tr>
									<tr>
										<th><span>성별</span></th>
										<td><span>여</span></td>

									</tr>
									<tr>
										<th><span>아이디</span></th>
										<td><input type="text" name="title" id="title"
											class="table_input" value="아이디 받아오기" /></td>

									</tr>

									<tr class="onetr">
										<th><span>비밀번호</span></th>
										<td><input type="button" value="비밀번호 변경하기"
											id="passwordCh" /></td>

									</tr>
									<tr class="onetr">
										<th><span>휴대폰 번호</span></th>
										<td><select name="hp1" class="hpAll">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select> - <input name="hp2" type="text" maxlength="4" class="hpBox"
											onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
											- <input name="hp3" type="text" maxlength="4" class="hpBox"
											onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>

									</tr>

									<tr>
										<th><span>이메일</span></th>
										<td><input name="email1" type="text" class="emailBox1"
											maxlength="30" id="email1"> @ <input name="email2"
											type="text" class="emailBox2" value=""> <select
											name="email_select" title="이메일주소 선택" class="email3"
											id="email_select">
												<option selected="selected" value="1">직접입력</option>
												<option value="naver.com">naver.com</option>
												<option value="yahoo.co.kr">yahoo.co.kr</option>
												<option value="lycos.co.kr">lycos.co.kr</option>
												<option value="gmail.com">gmail.com</option>
												<option value="empal.com">empal.com</option>
												<option value="freechal.com">freechal.com</option>
												<option value="dreamwiz.com">dreamwiz.com</option>
												<option value="hanafos.com">hanafos.com</option>
												<option value="korea.com">korea.com</option>
												<option value="magicn.com">magicn.com</option>
												<option value="nate.com">nate.com</option>
												<option value="netian.com">netian.com</option>
												<option value="hanmir.com">hanmir.com</option>
												<option value="chollian.net">chollian.net</option>
												<option value="hitel.net">hitel.net</option>
												<option value="hotmail.com">hotmail.com</option>
												<option value="orgio.net">orgio.net</option>
												<option value="hanmail.net">hanmail.net</option>
										</select></td>
									</tr>
								</table>
								<div class="table_button">

									<input type="button" value="회원정보수정" onclick="modifyData(this)"
										class="table_Bt second" /> <a
										href="boardWrite_deleteOk.jsp?bno=no_value"> </a>
								</div>
						</form>
					</div>
				</div>
				<!-- boardBack_right end -->

			</div>
		</div>
	</div>

	<%-- 	<jsp:include page="project_footer.jsp"></jsp:include> --%>


</body>
</html>