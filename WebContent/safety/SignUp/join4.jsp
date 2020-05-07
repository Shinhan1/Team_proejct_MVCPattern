<%@page import="com.exam.safety.dto.Join1_VO"%>
<%@page import="com.exam.safety.dao.Join1_DAO"%>
<%@page import="com.exam.safety.dao.Join2_DAO"%>
<%@page import="com.exam.safety.dto.Join2_VO"%>
<%@page import="com.exam.safety.project.MailSend"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="../css/join4.css" type="text/css" /> -->
<style type="text/css">

* {
	font-family: "나눔스퀘어";
	font-size: 100%;
	font-variant-ligatures: none;
}

 .head {
	padding-bottom: 30px;
	text-align: center;
	margin-top: 20px;
	margin-left: 10px;
}

#thisContent{

	padding: 100px 0 150px;
}
.thisUl{
	position: relative;
	margin: auto;
	margin-right: 650px;
	margin-top : 100px;
	width: 600px;
	height: 80px;
	list-style: none;
	margin-bottom: 30px;

}
.btn btn-dark{
	text-decoration: none;
}
.none {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: none;
}
.finish-title h1 {
	margin-top : 40px;
    padding-bottom: 10px;
    font-size: 29px;
}

.finish-title h2 {
    font-size: 19px;
}


.finish-grid-wrap h1 {
    margin: 5px 0 15px;
    font-size: 20px;
}
h1 {
    color: #333;
}
h2 {
    color: #555;
}
#toHome{
	list-style: none;
	text-decoration: none;

}
.finish-grid-wrap h2 {
    margin-top: 5px;
    font-size: 15px;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
}


.finish-grid-wrap {
    margin-top: 106px;
    margin-left: 30px;
    padding-top: 38px;
    padding-bottom: 10px;
    text-align: left;
    float : left;

    border-top: 1px solid #e5e5e5;
}

.finish-grid-wrap ul li {

    list-style-type : none;
    float: left;

  padding: 0 27px;
    width: 300px;
    border-right: 1px solid #eeeeee;
    margin-top: 60px;

}

#finish-grid-wrap i {
    display: inline-block;
    margin-bottom: 5px;
    width: 25px;
    height: 25px;
    background: url(../image/btn-circle-arrow.png);
}

#finish-grid-1 {
    background: url(../image/one.jpg) no-repeat right 40px center;
}

#finish-grid-2 {
	position: absolute;
	margin-left: 400px;

    background: url(../image/two.jpg) no-repeat right 40px center;
}
#finish-title{
	margin-top: 50px;

}
#finish-grid-3 {
	position: absolute;
	margin-left: 800px;
    background: url(../image/three.jpg) no-repeat right 40px center;
}
.btn-dark {
    background: #555555;
}
.head {
	padding-bottom: 30px;
	text-align: center;
}


.topLi {
	position: absolute;
	top: 0;
	text-align: center;
}

i {
	display: inline-block;
	position: relative;
	width: 20px;
	height: 20px;
	background: #cccccc;
	border-radius: 50%;
	border: 2px solid transparent;
}

.ibefore::before {
	content: '';
	position: absolute;
	top: 10px;
	left: 23px;
	width: 160px;
	height: 1px;
	background: #cccccc;
}

.member-contents {
	margin-left: 350px;
	width: 1200px;
	height: 580px;
	padding: 0px 0px 30px;
	text-align: center;
	background: #fff;
	box-shadow: 0px 5px 15px 0px rgba(0, 0, 0, .15);
}

.welcomeTxt{
padding-top: 30px;
margin-top: 50px;
font: 29px;
text-align: center;
font-weight: bold;
}

.welcomeTxt2{
font: 15px;
text-align: center;
font-weight: bold;
}
.toHome{
   display: inline-block;
    padding: 0 60px;
    height: 55px;
    line-height: 55px;
    font-size: 1.04em;
    font-weight: 700;
    color: #fff;
    letter-spacing: -0.04em;
   background: #3E66AE;
    border: 0;

}
.finish-image {
    margin-top: 76px;
    padding-top: 38px;
    padding-bottom: 10px;
    text-align: left;
    border-top: 1px solid #e5e5e5;
}
.btn {
    display: inline-block;
    padding: 0 60px;
    height: 55px;
    line-height: 55px;
    font-size: 1.04em;
    font-weight: 700;
    color: #fff;
    letter-spacing: -0.04em;
}


</style>

</head>
<body>
<div id="top">
		<jsp:include page="../etc/sf_nav.jsp"></jsp:include>
	</div>
<div id="thisContent" class="container">
	<!-- <div class="head">

	</div> -->


	<ul class="thisUl">
		<li class="topLi" style="left: 100px"><i class="ibefore"></i>
			<h2>약관동의</h2></li>
		<li class="topLi" style="left: 280px"><i class="ibefore"></i>
			<h2>정보입력</h2></li>
		<li class="topLi" style="left: 460px"><i
			style="background-color: #3E66AE"></i>
			<h2>가입완료</h2></li>
	</ul>



	<div class="member-contents">
		<div class="contents">
			<div class="finish-title" id="finish-title">
				<%
				/* 회원 아이디 불러오기 */
					request.setCharacterEncoding("UTF-8");
					String name = (String)request.getSession().getAttribute("userName");


					System.out.println(name);



					/* String email = email1+"@"+email2;
					MailSend send = new MailSend();
					send.setWhoGet(email); */


				%>



				<h1 class="welcomeTxt"><%=name%>님, 회원가입이 완료되었습니다.
				</h1>
				<h2 class="welcomeTxt2">SAFTY와 함께 이웃을 위한 나눔을 시작해보세요</h2>

			</div>	<!-- finish-title -->
			<div id="middle">
			<a class="btn btn-dark" id="toHome" href="../mainpage/main.jsp" style="margin-top: 60px">홈으로 이동</a>
			</div>
			<div class="finish-grid-wrap">
				<ul>
					<li class="finish-grid-1" id="finish-grid-1"><a href="../support/caminfor.jsp" class="none"
						title="후원자가이드 페이지 이동">
							<h2>후원이 처음이라면</h2>
							<h1>후원자가이드</h1> <i></i>
					</a></li>
					<li class="finish-grid-2" id="finish-grid-2"><a href="../support/organization_mod.jsp" class="none"
						title="후원하기 페이지 이동">
							<h2>후원을 원하신다면</h2>
							<h1>후원하기</h1> <i></i>
					</a></li>
					<li class="finish-grid-3" id="finish-grid-3"><a href="../Introduce/safety_history.jsp" class="none"
						title="소식보기 페이지 이동">
							<h2>후원이야기가 궁금하시면</h2>
							<h1>소식보기</h1> <i></i>
					</a></li>
				</ul>
			 </div>
 		</div>	 	<!-- contents -->





	</div>
	<!-- member-contents end -->


	</div>
	<div id="footer">
		<jsp:include page="../etc/project_footer.jsp" ></jsp:include>
	</div>
</body>
</html>