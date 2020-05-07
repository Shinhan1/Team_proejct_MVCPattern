<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<!--   	<link rel="stylesheet" href="../css/join1.css" type="text/css"/>  -->
<style type="text/css">

body {
    font-family: "나눔스퀘어";
    word-break: keep-all;
    font-size: 100%;
    background-color: #EAEAEA;

    }

   .box-container {
    width: 1900px;
    height: 740px;
    padding: 100px 0 150px;
    margin: 0;
    background-color: #f6f6f6;
}
    .head{
    margin-top: 150px;
    padding-bottom: 40px;
    text-align: center;
    }

	h2{
	margin-bottom: 20px;

	}
	h1{
	margin-bottom: 20px;

	}
	.three{
	float: left;
    margin-right: 37.5px;
    padding: 75px 74px 0;
    width: 325px;
    height: 380px;
    text-align: center;
    background: #fff;
    box-shadow: 0px 5px 15px 1px rgba(0,0,0,.15);
    border: 1px solid transparent;
	}
	#all-box{
	margin-left: 200px;
	}

	image{
	 width: 80px;
	}
	.btn1 {
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

	.btn {
    display: inline-block;
    padding: 0 60px;
    height: 55px;
    line-height: 55px;
    font-size: 1.04em;
    font-weight: 700;
    color: #fff;
    letter-spacing: -0.04em;
    background: #61564b;
    border: 0;
    }

	.three:hover{
	border: 2px solid #3E66AE;

	}
	#footer{
	margin-top: -50px;
	}



</style>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>



</head>
<body>
	<div id="top">
		<jsp:include page="../etc/sf_nav.jsp" ></jsp:include>
	</div>


	<div class="box-container" >
	<div class="head">
	<h1>회원가입</h1>
	<h3>먼저 해당하는 회원 유형을 선택하세요.</h3>
	</div>

	<div id="all-box">
	<div class="three" >
	<img src="../image/person.png" alt="">
	<h2>14세 이상</h2>
	<h1>개인회원</h1>
	<input class="btn1" type="button" value="가입하기" onClick="location.href='join2_1.jsp'"/></img>
	</div>
	<div class="three" >
	<img src="../image/group.png" alt="">
	<h2>2인 이상 일반단체</h2>
	<h1>단체 회원</h1>
	<input class="btn" type="button" value="가입하기" onClick="location.href='join2_2.jsp'"/></img>
	</div>
	<div class="three" >
	<img src="../image/company.png" alt="">
	<h2>일반 기업</h2>
	<h1>기업 회원</h1>
	<input class="btn" type="button" value="가입하기" onClick="location.href='join2_3.jsp'"/></img>
	</div>
	</div>
	</div>
<!-- box-container end -->
	<div id="footer">
		<jsp:include page="../etc/project_footer.jsp" ></jsp:include>
	</div>
</body>
</html>