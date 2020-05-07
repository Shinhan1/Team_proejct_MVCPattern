<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단체회원</title>
<!--  <link rel="stylesheet" href="../css/join2.css" type="text/css" /> -->
<style type="text/css">

* {
	font-family: "나눔스퀘어";
	font-size: 15px;
	font-variant-ligatures: none;
	
}

.thisContent{
 padding: 100px 0 150px;
}
/* .head{
margin-top: 300px;
}
 .all{
margin-top: 200px;
	width: 1200px;
	
}  */
.access_cnt ul {s
    width: 100%;
    font-size: 13px;
    list-style-type: none;
}
ul, ol {
    list-style-type: none;
}
body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button, select {
    margin: 0;
    padding: 0;
    font-size: 12px;
}

.thisUl {
	position: relative;
	margin: auto;
	margin-right: 650px;
	margin-top : 100px;
	width: 600px;
	height: 80px;
	list-style: none;
	margin-bottom: 30px;
}
.policyInsideList > div {
    line-height: 23px;
    padding: 0;
    margin: 0;
    font-size: 13px;
}

.access_navi p {
    margin: 20px 0 10px 0;
    line-height: 20px;
    font-size: 13px;
}
.policyInsideList table, .policyInsideList table td{
    font-family: "Nanum Barun Gothic", sans-serif !important;
    font-size: 12px;
}
body, p, h1, h2, h3, h4, h5, h6,ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button, select {
    margin: 0;
    padding: 0;
    font-size: 12px;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
}

.head {
	padding-top: 30px;
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

.box-container {
	width: 1000px;
	height: 1100px;
	margin-left: 430px;
	padding: 80px 50px 30px;
	text-align: center;
	background: #fff;
	box-shadow: 0px 5px 15px 0px rgba(0, 0, 0, .15);
}
.la-check-all {
	position: relative;
	margin-left: 900px;
	text-align: left;
	font-size: 15px;
}

.ab {
	margin-left: 900px;
}

.box-container-title {
	width: 600px;
	display: inline-block;
	vertical-align: middle;
	font-size: 21px;
	letter-spacing: -0.04em;
	text-align: left;
}



/* input[type=checkbox]{display: none;}
label{display: inline-block;
	width: 80px;
	height: 20px;
	background-repeat: no-repeat;
	background-size: 20px auto;
	margin-left: 10px;
	margin-right: 30px;
}
input[type=checkbox]+label
{background-image:url(../image/button-off.png); 
margin-right: 20px;
}
input[type=checkbox]:checked + label{
	background-image: url(../image/button-on.png);
margin-right: 20px;
} */

/* 
 체크박스 없에기. */
/*  .thisContent{
 margin-top: 200px;
 } */
.checkbox input[type=checkbox]{
    position: absolute;
    top: 0;
    right: 0;
    width: 20px;
    height: 20px;
    opacity: 0;
    display: none;
}

 .checkbox input[type=checkbox] + label{
    display : block;
    position: absolute;
    top: 0;
    right: 0;
    width: 20px;
    height: 20px;
    background: url(../image/checkbox.png) no-repeat;
}

.check-all {
    font-size: 1.04em;
    font-weight: 700;
}
.checkbox {
    display: inline-block;
    position: relative;
    padding-right: 50px;
    height: 20px;
}



 .checkbox input[type=checkbox]:checked+ label {
    background: url(../image/checkbox_checked.png) no-repeat;
} 

}
h1 {
    display: inline-block;
    vertical-align: middle;
    font-size: 31px;
    letter-spacing: -0.04em;
}
span{
	font-size: 15px;
	
	
}
.contents {
	overflow: scroll;
	padding: 20px 5px;
	width: 100%;
	height: 150px;
	text-align: left;
	background: #fafafa;
	border: 1px solid #dddddd;
	font-size: 11px;
	
}
#maintitle{
	font-size: 20px;
}

.box-container-title {
	margin-top: 50px;
	position: relative;
	margin-right: 1000px;
	text-align: left;
	font-size: 15px;
}

.box-container-mid {
	padding-top: 50px;
	border-top: 1px solid #e5e5e5;
}

.btn {
	margin-top : 80px;
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
#bottomImg {
	margin-top : 50px;
	width: 450px;
	height : 130px;
	margin-left: 30px;
}

.help-join {
	margin-top: 50px;
	border-top: 1px solid #e5e5e5;
	height: 200px;
}

</style>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function() {

		$('#divECI_ISDVSAVE').click(function() {
			$('.ab1').prop('checked', this.checked);
			$('.ab2').prop('checked', this.checked);
		});// 전체동의 함께 function

		$('.ab1').click(function() {
			if ($(".ab2").is(":checked") == true) {
				//alert("체크박스 체크했음!");
				$('#divECI_ISDVSAVE').prop('checked', this.checked);
				$('.btn').css("background", "#3E66AE");
				$('.btn').css("color", "white");
			} else if ($(".ab2").is(":checked") == false) {
				$('.btn').css("background", "#61564b");
				$('.btn').css("color", "white");
				//alert("체크박스 체크 해제!");
			}
		});
		$('.ab2').click(function() {
			if ($(".ab1").is(":checked") == true) {
				//alert("체크박스 체크했음!");
				$('#divECI_ISDVSAVE').prop('checked', this.checked);
				$('.btn').css("background", "#3E66AE");
				$('.btn').css("color", "white");
			} else if ($(".ab1").is(":checked") == false) {
				$('.btn').css("background", "#61564b");
				$('.btn').css("color", "white");
				//alert("체크박스 체크 해제!");
			}
		});//전체 체크까지 선택

		$("#divECI_ISDVSAVE").change(function() {
			if ($("#divECI_ISDVSAVE").is(":checked")) {
				//alert("체크박스 체크했음!");
				$('.btn').css("background", "#3E66AE");
				$('.btn').css("color", "white");
			} else {
				$('.btn').css("background", "#61564b");
				$('.btn').css("color", "white");
				//alert("체크박스 체크 해제!");
			}
		});//checkall change function

		$(".btn").click(function() {
			if ($("#divECI_ISDVSAVE").is(":checked")) {
				$(location).attr('href', 'join3_2.jsp');

			} else {

				alert("모든약관에 동의해주세요!");
			}
		});

	});
</script>

</head>
<body>
	 <div id="top">
		<jsp:include page="../etc/sf_nav.jsp" ></jsp:include>
	</div> 

	<div class="thisContent">
		<div class="head">
			<h1 style="font-size: 29px">회원 가입</h1>
		</div>
		<ul class="thisUl">
			<li class="topLi" style="left: 100px"><i class="ibefore"
				style="background-color: #3E66AE"></i>
				<h2>약관동의</h2></li>
			<li class="topLi" style="left: 280px"><i class="ibefore"></i>
				<h2>정보입력</h2></li>
			<li class="topLi" style="left: 460px"><i></i>
				<h2>가입완료</h2></li>
		</ul>




		<div class="box-container">
			<div class="box-container-top">
				<h1 class="box-container-title" id="maintitle"
					style="font-size: 18px">이용약관, 개인정보처리방침, 세이프티 활동 안내 수신에 모두
					동의합니다.</h1>
				<div style="margin-left: 870px">
					<input type="checkbox" title="전체동의" class="check-all" title="전체동의"
						id="divECI_ISDVSAVE"> <label class="checkbox check-all"
						for="all_agree"> <span>전체동의</span>
					</label>
				</div>


			</div>

			<div class="box-container-mid">
				<div>
					<h1 class="box-container-title" >서비스
						이용약관(필수)</h1>
					<div class="j-right" style="margin-left: 890px">
						<input id="divECI_ISDVSAVE" class="ab1" type="checkbox" name="agree1" title="서비스 이용약관 필수 동의" value="Y">
							<label class="checkbox" for="agree1"> <span>동의</span>
						</label>
					</div>
				</div>

				<div class="contents">
					<ul>
						<li class="Tit_n01">제1장 총칙</li>
						<li class="Tit_n02" id="acc01">제1조 목적</li>
						<li class="padding_l13">본 약관은 사회복지법인 SAFTY코리아(이하 “SAFTY”이라
							한다)가 운영하는 SAFTY 홈페이지(www.sc.or.kr) 및 부속 홈페이지에서 제공하는 인터넷관련서비스(이하
							“서비스”라 한다)를 이용함에 있어 SAFTY과 이용자 및 회원의 권리, 의무 및 책임사항, 기타 필요한 사항을
							규정함을 목적으로 합니다.</li>
						<li class="Tit_n02" id="acc02">제 2조 (용어의 정의)</li>
						<li class="padding_l13">1. 본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
							<ul class="line26">
								<li>① 서비스라 함은 구현되는 단말기(PC, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이
									회원이 이용할 수 있는 SAFTY 홈페이지 및 부속홈페이지 관련 제반 서비스를 의미합니다.</li>
								<li>② 회원이라 함은 SAFTY의 서비스에 접속하여 이 약관에 따라 SAFTY과 이용계약을 체결하고
									SAFTY이 제공하는 서비스를 이용하는 고객을 말합니다.</li>
								<li>③ 후원회원이란 SAFTY의 사회복지사업에 참여하기 위해 후원금을 정기적 혹은 일시적으로 납부하는
									자를 의미합니다.</li>
								<li>④ 비회원이란 SAFTY의 홈페이지에 회원가입을 하지 않고 서비스를 이용하는 자를 의미합니다.</li>
								<li>⑤ SNS회원이란 SAFTY의 홈페이지에 회원가입을 하지 않고 자신의 SNS계정으로 로그인하여
									서비스를 이용하는 자를 의미합니다.</li>
								<li>⑥ 아이디(ID) 라 함은 회원의 식별과 서비스 이용을 위하여 회원이 정하고 SAFTY이 승인하는
									문자와 숫자의 조합을 의미합니다.</li>
								<li>⑦ 비밀번호라 함은 회원이 부여 받은 "아이디와 일치되는 회원임을 확인하고 비밀보호를 위해 회원
									자신이 정한 문자 또는 숫자의 조합을 의미합니다.</li>
								<li>⑧ 게시물이라 함은 서비스상에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글,
									사진, 동영상 및 각종 파일과 링크 등을 의미합니다.</li>
								<li>⑨ 이용계약이란 서비스를 제공받기 위해 SAFTY과 체결하는 계약을 의미합니다.</li>
								<li>⑩ '회원탈퇴(이하 "탈퇴"라 한다)'란 SAFTY 또는 회원이 홈페이지 이용계약을 해지하는 것을
									의미합니다.</li>
							</ul>
						</li>
						<li class="padding_l13">2. 제 1항에서 정한 것 이외의 본 약관에서 사용된 용어의 정의
							및 본 약관에서 정하지 아니한 사항이나 해석에 대해서는 서비스별 안내 및 관계법령 또는 상관례에 따릅니다.</li>

						<li class="Tit_n02" id="acc03">제 3조 (이용약관의 효력 및 변경)</li>
						<li class="padding_l13">1. SAFTY은 본 약관의 내용을 회원이 쉽게 알 수 있도록 초기
							서비스화면에 게시하거나, 초기서비스화면에서의 링크를 통해 제공합니다.</li>
						<li class="padding_l13">2. SAFTY은 "약관의규제에관한법률", "개인정보보호법(이하
							“개인정보법”)" 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.</li>
						<li class="padding_l13">3. SAFTY은 본 약관을 개정할 경우에는 적용일자 및 개정사유를
							명시하여 현행 약관과 함께 SAFTY이 제공하는 서비스 사이트의 초기 화면에 그 적용일자 15일 이전부터 적용일자
							전일까지 공지합니다. 다만, 회원에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고
							공지합니다. 이 경우 SAFTY은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 회원이 알기 쉽도록 표시합니다.</li>
						<li class="padding_l13">4. 회원은 개정된 약관에 대해 거부할 권리가 있습니다. 회원은
							개정된 약관에 동의하지 않을 경우 서비스 이용을 중단하고 회원등록을 해지할 수 있습니다. 다만, SAFTY이 전항에
							따라 회원에게 개정 약관을 공지하면서 공지일로부터 개정약관 시행일 7일 후까지 거부의사를 표시하지 아니하면 승인한
							것으로 본다는 뜻을 명확하게 고지하였음에도 의사표시가 없는 경우에는 회원이 개정약관에 동의한 것으로 봅니다.</li>
						<li class="padding_l13">5. 변경된 약관에 대한 정보를 알지 못해 발생하는 회원 피해는
							SAFTY이 책임지지 않습니다.</li>

						<li class="Tit_n02" id="acc04">제 4조 (약관 외 준칙)</li>
						<li class="padding_l13">1. 본 약관은 SAFTY이 제공하는 서비스에 관해 별도의 정책 및
							운영규칙과 함께 적용됩니다.</li>
						<li class="padding_l13">2. 본 약관에 명시되지 아니한 사항과 본 약관의 해석에 관하여는
							관계법령에 따릅니다.</li>
						<li class="Tit_n01">제2장 이용계약 체결</li>

						<li class="Tit_n02" id="acc05">제 5조 (이용계약의 성립)</li>
						<li class="padding_l13">1. 이용계약은 가입신청자의 본 이용약관 내용에 대한 동의와
							이용신청에 대한 SAFTY의 이용승낙으로 성립합니다</li>
						<li class="padding_l13">2. 가입신청자는 회원등록 당시 본 약관을 읽고 " 약관에
							동의합니다"의 대화창에 표시를 한 후 등록하기 단추를 누름으로써 본 약관에 동의하는 것으로 인정됩니다. SAFTY은
							가입신청자의 신청에 대하여 서비스 이용을 승낙함을 원칙으로 합니다. 다만, SAFTY은 다음 각 호에 해당하는 신청에
							대하여는 승낙을 하지 않거나 사후에 이용계약을 해지할 수 있습니다.</li>
						<li class="padding_l13">
							<ul class="line26">
								<li>① 가입신청자가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 단 회사의 회원 재가입
									승낙을 얻은 경우에는 예외로 함.</li>
								<li>② 실명이 아니거나 타인의 명의를 이용한 경우. 이때 회원의 모든 ID는 삭제되며, 관계법령에 따라
									처벌을 받을 수 있습니다.</li>
								<li>③ 허위의 정보를 기재하거나, SAFTY이 제시하는 내용을 기재하지 않은 경우</li>
								<li>④ 14세 미만 아동이 법정대리인(부모 등)의 동의를 얻지 아니한 경우</li>
								<li>⑤ 이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우</li>
							</ul>
						</li>
						<li class="line"></li>

						<li class="Tit_n02" id="acc06">제 6조 (서비스 이용신청)</li>
						<li class="padding_l13">1. 회원으로 가입하여 본 서비스를 이용하고자 하는 이용고객은
							SAFTY에서 요청하는 제반정보 (이름, 생년월일, 휴대폰 번호(휴대폰 없을 시 자택 전화번호로 대체) 등)를
							제공하여야 합니다. 단, 이 때 회원이 제공한 제반정보는 개인정보처리방침에 따라 관리됩니다.</li>
						<li class="padding_l13">
							<ul class="line26">
								<li>① SAFTY은 회원의 종류에 따라 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있습니다.
									단, 회원이 후원을 할 경우 제공하는 주민등록번호는 SAFTY 후원회원의 관리 목적 외에는 그 어떠한 용도로도
									사용되지 않습니다.</li>
								<li>② SAFTY은 서비스관련설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을
									유보할 수 있습니다.</li>
								<li>③ 회원가입신청의 승낙을 하지 아니하거나 유보한 경우, SAFTY은 원칙적으로 이를 가입신청자에게
									알리도록 합니다.</li>
								<li>④ 이용계약의 성립 시기는 SAFTY이 가입완료를 신청절차 상에서 표시한 시점으로 합니다.</li>
							</ul>
						</li>

						<li class="Tit_n02" id="acc07">제 7조 (개인정보의 보호 및 사용)</li>
						<li class="padding_l13">SAFTY 회원의 개인정보의 보호 및 사용에 대해서는 개인정보법 등
							관련법 및 SAFTY의 개인정보처리방침이 적용됩니다.<br>
						<a href="access02.do" style="text-decoration: none;">[개인정보처리방침
								링크]</a>
						</li>

						<li class="Tit_n02" id="acc08">제 8조 (이용신청의 승낙과 제한)</li>
						<li class="padding_l13">1. SAFTY은 제 6조의 규정에 의한 이용신청고객에 대하여 업무
							수행상 또는 기술상 지장이 없는 경우에 원칙적으로 접수순서에 따라 서비스 이용을 승낙합니다.</li>
						<li class="padding_l13">2. SAFTY은 다음 각 호의 내용에 해당하는 경우 이용신청에
							대한 승낙을 제한할 수 있고, 그 사유가 해소 될 때까지 승낙을 유보할 수 있습니다.
							<ul class="oneNum">
								<li>① SAFTY의 서비스 관련설비에 여유가 없는 경우</li>
								<li>② SAFTY의 기술상 지장이 있는 경우</li>
								<li>③ 기타 SAFTY의 사정상 필요하다고 인정되는 경우</li>
							</ul>
						</li>
						<li class="padding_l13">3. SAFTY은 다음 각 호의 내용에 해당하는 경우 이용신청에
							대한 승낙을 하지 아니할 수도 있습니다.
							<ul class="oneNum">
								<li>① 실명이 아니거나 타인의 명의를 이용하여 신청한 경우</li>
								<li>② 이용계약 신청서의 내용을 허위로 기재한 경우</li>
								<li>③ 사회의 안녕과 질서, 미풍양속을 저해할 목적으로 신청한 경우</li>
								<li>④ 부정한 용도로 본 서비스를 이용하고자 하는 경우</li>
								<li>⑤ 영리를 추구할 목적으로 본 서비스를 이용하고자 하는 경우</li>
								<li>⑥ 기타 SAFTY이 정한 등록신청 요건이 미비된 경우</li>
								<li>⑦ 본 서비스와 경쟁관계가 있는 이용자가 신청하는 경우</li>
								<li>⑧ 기타 규정한 제반 사항을 위반하며 신청하는 경우</li>
							</ul>
						</li>
						<li class="padding_l13">4. SAFTY은 이용신청고객이 만 14세 미만 아동일 경우에
							“개인정보보호법” 등에 따라 법정 대리인의 동의가 없을 경우 승낙을 보류할 수 있습니다.</li>

						<li class="Tit_n02" id="acc09">제 9조 (회원 아이디 부여 및 정보변경)</li>
						<li class="padding_l13">1. SAFTY은 회원에 대하여 본 약관에 정하는 바에 따라 회원
							ID를 부여합니다.</li>
						<li class="padding_l13">2. 회원 ID는 원칙적으로 변경이 불가하며 부득이한 사유로 인하여
							변경 하고자 하는 경우에는 해당 ID를 해지하고 재가입해야 합니다.</li>
						<li class="padding_l13">3. 회원은 서비스 페이지 마이페이지(My Page) 또는 기타
							해당 페이지로 링크된 메뉴를 통하여 자신의 개인정보를 관리할 수 있는 페이지를 열람할 수 있으며, 해당 페이지에서
							언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위하여 반드시 필요한 실명, 회원
							ID, 성별 등은 수정할 수 없습니다.</li>
						<li class="padding_l13">4. 회원 ID는 다음 각 호에 해당하는 경우에 회원 또는
							SAFTY의 요청으로 변경할 수 있습니다.
							<ul class="oneNum">
								<li>① 회원 ID가 회원의 전화번호 또는 주민등록번호 등으로 등록되어 사생활 침해가 우려되는 경우</li>
								<li>② 타인에게 혐오감을 주거나 미풍양속에 어긋나는 경우</li>
								<li>③ 기타 합리적인 사유가 있는 경우</li>
							</ul>
						</li>
						<li class="padding_l13">5. 회원 ID 및 비밀번호의 관리책임은 회원에게 있습니다. 이를
							소홀히 관리하여 발생하는 서비스 이용상의 손해 또는 제3자에 의한 부정이용 등에 대한 책임은 회원에게 있으며
							SAFTY은 SAFTY의 고의 또는 중과실이 개입되어 있지 아니한 이상 그에 대한 책임을 일절 지지 않습니다.</li>

						<li class="line"></li>

						<li class="Tit_n01">제3장 계약 당사자의 의무</li>
						<li class="Tit_n02" id="acc10">제 10조 (SAFTY의 의무)</li>
						<li class="padding_l13">1. SAFTY은 관련법과 본 약관이 금지하거나 공서양속에 반하는
							행위를 하지 않으며, 본 약관이 정하는 바에 따라 지속적이고, 안정적으로 서비스를 제공하기 위하여 최선을 다하여야
							합니다.</li>
						<li class="padding_l13">2. SAFTY은 회원이 안전하게 서비스를 이용할 수 있도록 회원의
							개인정보보호를 위한 보안시스템을 구축하며 개인정보처리방침을 공시하고 준수합니다.</li>
						<li class="padding_l13">3. SAFTY은 수신거절의 의사를 명백히 표시한 회원에 대해서는
							회원이 원하지 않는 영리목적의 광고성 전자우편 (이메일)을 발송하지 않습니다.</li>
						<li class="padding_l13">4. SAFTY은 이용계약의 체결, 계약사항의 변경 및 해지 등
							회원과의 계약관계절차 및 내용 등에 있어 회원에게 편의를 제공하도록 노력합니다. 이용자 ID, 비밀번호를 분실하신
							경우 My Page의 "아이디 찾기/비밀번호 찾기" 메뉴로 처리가 가능합니다.</li>
						<li class="padding_l13">5. SAFTY은 이용고객으로부터 제기되는 의견이나 불만이
							정당하다고 객관적으로 인정될 경우에는 적절한 절차를 거쳐 즉시 처리하여야 합니다. 다만, 즉시 처리가 곤란한 경우는
							이용자에게 그 사유와 처리 일정을 통보하여야 합니다.</li>

						<li class="Tit_n02" id="acc11">제 11조 (회원의 ID 및 비밀번호 관리에 대한
							의무)</li>
						<li class="padding_l13">1. 회원의 아이디와 비밀번호에 관한 관리책임은 회원에게 있으며,
							이를 제3자가 이용하도록 하여서는 안 됩니다.</li>
						<li class="padding_l13">2. SAFTY은 회원의 아이디가 개인정보 유출 우려가 있거나,
							반사회적 또는 미풍양속에 어긋나거나 회사 및 회사의 운영자로 오인한 우려가 있는 경우, 해당 아이디의 이용을 제한할
							수 있습니다.</li>
						<li class="padding_l13">3. 회원은 아이디 및 비밀번호가 도용되거나 제3자가 사용하고
							있음을 인지한 경우에는 이를 즉시 회사에 통지하고 SAFTY 의 안내에 따라야 합니다.</li>
						<li class="padding_l13">4. 제3항의 경우에 해당 회원이 SAFTY에 그 사실을 통지하지
							않거나, 통지한 경우에도 SAFTY의 안내에 따르지 않아 발생한 불이익에 대하여 SAFTY은 책임지지 않습니다.</li>
						<li class="padding_l13">5. 서명참여, 게시판, 덧글, 마이페이지(My Page) 에서
							개인 신분 확인이 가능한 정보 (사용자 이름, ID, 전자우편 주소 등)가 자발적으로 공개될 수 있습니다. 이런 경우
							공개된 정보가 제3자에 의해 수집되고 연관되어 사용될 수 있으며 제 3자로부터 원하지 않는 메시지를 받을 수
							있습니다. 제 3자의 그러한 행위는 SAFTY이 통제할 수 없으며, 이에 SAFTY은 SAFTY이 통제할 수 없는
							방법에 의한 회원정보의 발견 가능성에 대해 아무런 보장을 하지 않습니다.</li>

						<li class="Tit_n02" id="acc12">제 12조 (회원의 의무)</li>
						<li class="padding_l13">1. 회원은 본 약관에 규정하는 사항과 기타 SAFTY이 정한 제반
							규정, 서비스 이용안내 또는 공지사항 등 SAFTY이 공지 또는 통지하는 사항 및 관계법령을 준수하여야 하며, 기타
							SAFTY의 업무에 방해가 되는 행위, SAFTY의 명예를 손상 시키는 행위를 하여서는 안됩니다.</li>
						<li class="padding_l13">2. SAFTY이 관계법령 및 개인정보처리방침에 의하여 그 책임을
							지는 경우를 제외하고 제11조의 관리소홀, 부정사용에 의하여 발생되는 모든 결과에 대한 책임은 회원에게 있습니다.</li>
						<li class="padding_l13">3. 회원은 SAFTY의 사전승낙 없이 서비스를 이용하여 영업활동을
							할 수 없으며, 회원 간 또는 회원과 제3자 간에 서비스를 매개로 한 물품거래 및 서비스의 이용과 관련하여 기대하는
							이익 등에 관하여 발생한 손해에 대하여 SAFTY은 책임을 지지 않습니다. 이와 같은 영업활동으로 SAFTY이 손해를
							입은 경우 회원은 SAFTY에 대하여 손해배상의 의무를 지며, SAFTY은 해당 회원에 대해 서비스 이용제한 및
							적법한 절차를 거쳐 손해배상 등을 청구할 수 있습니다.</li>
						<li class="padding_l13">4. 회원은 SAFTY의 명시적인 동의가 없는 한 서비스의
							이용권한, 기타 이용계약 상의 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로 제공할 수 없습니다.</li>
						<li class="padding_l13">5. 회원은 서비스 이용과 관련하여 제22조 제1항의 각 호에
							해당하는 행위를 하여서는 안됩니다.</li>
						<li class="padding_l13">6. 이용자는 회원가입 신청 또는 회원정보 변경 시 실명으로 모든
							사항을 사실에 근거하여 작성하여야 하며, 허위 또는 타인의 정보를 등록할 경우 일체의 권리를 주장할 수 없습니다.</li>
						<li class="padding_l13">7. 회원은 주소, 연락처, 이메일 등 이용계약사항이 변경된 경우에
							해당 절차를 거쳐 이를 SAFTY에 즉시 알려야 합니다.</li>
						<li class="padding_l13">8. 회원은 SAFTY 및 제3자의 지적 재산권을 침해해서는
							안됩니다.</li>
						<li class="padding_l13">9. 회원은 다음 각 호에 해당하는 행위를 하여서는 안되며, 해당
							행위를 하는 경우에 SAFTY은 회원의 서비스 이용제한 및 적법 조치를 포함한 제재를 가할 수 있습니다.
							<ul class="oneNum">
								<li>① 회원가입 신청 또는 회원정보 변경 시 허위내용을 등록하는 행위</li>
								<li>② 다른 이용자의 ID, 비밀번호, 주민등록번호를 도용하는 행위</li>
								<li>③ 이용자 ID를 타인과 거래하는 행위</li>
								<li>④ SAFTY의 운영진, 직원 또는 관계자를 사칭하는 행위</li>
								<li>⑤ SAFTY으로부터 특별한 권리를 부여받지 않고 SAFTY의 클라이언트 프로그램을 변경하거나,
									SAFTY의 서버를 해킹하거나, 웹사이트 또는 게시된 정보의 일부분 또는 전체를 임의로 변경하는 행위</li>
								<li>⑥ 서비스에 위해를 가하거나 고의로 방해하는 행위</li>
								<li>⑦ 본 서비스를 통해 얻은 정보를 SAFTY의 사전 승낙 없이 서비스 이용 외의 목적으로
									복제하거나, 이를 출판 및 방송 등에 사용하거나, 제 3자에게 제공하는 행위</li>
								<li>⑧ SAFTY 또는 제3자의 저작권 등 기타 지적재산권을 침해하는 내용을 전송, 게시, 전자우편
									또는 기타의 방법으로 타인에게 유포하는 경우</li>
								<li>⑨ 공공질서 및 미풍양속에 위반되는 저속, 음란한 내용의 정보, 문장, 도형, 음향, 동영상을
									전송, 게시, 전자우편 또는 기타의 방법으로 타인에게 유포하는 행위</li>
								<li>⑩ 모욕적이거나 개인신상에 대한 내용이어서 타인의 명예나 프라이버시를 침해할 수 있는 내용을 전송,
									게시, 전자우편 또는 기타의 방법으로 타인에게 유포하는 행위</li>
								<li>⑪ 다른 이용자를 희롱 또는 위협하거나, 특정 이용자에게 지속적으로 고통 또는 불편을 주는 행위</li>
								<li>⑫ SAFTY의 승인을 받지 않고 다른 사용자의 개인정보를 수집 또는 저장하는 행위</li>
								<li>⑬ 범죄와 결부된다고 객관적으로 판단되는 행위</li>
								<li>⑭ 본 약관을 포함하여 기타 SAFTY이 정한 제반 규정 또는 이용 조건을 위반하는 행위</li>
								<li>⑮ 기타 관계법령에 위배되는 행위</li>
							</ul>
						</li>

						<li class="line"></li>

						<li class="Tit_n01">제4장 서비스 이용</li>
						<li class="Tit_n02" id="acc13">제 13조 (서비스의 제공 및 변경)</li>
						<li class="padding_l13">1. SAFTY은 컨텐츠와 이벤트 등의 진행을 포함한 관련 서비스를
							회원에게 제공합니다.</li>
						<li class="padding_l13">2. SAFTY에서 제공하는 서비스는 기본적으로 무료입니다.
							유료서비스 추가 시 사전 공지하며 이용에 대한 사항은 SAFTY이 별도로 정한 서비스 약관 및 정책 또는 운영규칙에
							따릅니다.</li>
						<li class="padding_l13">3. SAFTY은 서비스 변경 시 그 변경될 서비스의 내용 및
							제공일자를 제 14조에 정한 방법으로 회원에게 통지합니다.</li>

						<li class="Tit_n02" id="acc14">제 14조 (정보의 제공 및 통지)</li>
						<li class="padding_l13">1. SAFTY은 회원이 서비스 이용 중 필요하다고 인정되는 다양한
							정보를 공지사항 혹은 이메일, SMS등의 방법으로회원에게 제공할 수 있습니다.</li>
						<li class="padding_l13">2. SAFTY은 불특정다수 회원에 대한 통지를 하는 경우 7일
							이상 공지 게시판에 게시함으로써 개별 통지에 갈음할 수 있습니다.</li>

						<li class="Tit_n02" id="acc15">제 15조 (게시물의 저작권 및 관리)</li>
						<li class="padding_l13">1. SAFTY은 회원의 게시물을 소중하게 생각하며 변조, 훼손,
							삭제되지 않도록 최선을 다하여 보호합니다. 다만, 다음 각 호에 해당하는 게시물이나 자료의 경우 사전통지 없이
							삭제하거나 이동 또는 등록 거부를 할 수 있으며, 해당 회원의 자격을 제한, 정지 또는 상실시킬 수 있습니다.
							<ul class="oneNum">
								<li>① 다른 회원 또는 제3자에게 심한 모욕을 주거나 명예를 손상시키는 내용인 경우</li>
								<li>② 공공질서 및 미풍양속에 위반되는 내용을 유포하거나 링크시키는 경우</li>
								<li>③ 불법복제 또는 해킹을 조장하는 내용인 경우</li>
								<li>④ 영리를 목적으로 하는 광고일 경우</li>
								<li>⑤ 범죄적 행위에 결부된다고 인정되는 내용인 경우</li>
								<li>⑥ SAFTY이나 다른 회원의 저작권 혹은 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우</li>
								<li>⑦ SAFTY에서 규정한 게시물 원칙에 어긋나거나, 게시판 성격에 부합하지 않는 경우</li>
								<li>⑧ 스팸성 게시물인 경우</li>
								<li>⑨ 기타 관계법령에 위배된다고 판단되는 경우</li>
							</ul>
						</li>
						<li class="padding_l13">2. SAFTY이 작성한 저작물에 대한 저작권 및 기타 지적재산권은
							SAFTY에 귀속됩니다.</li>
						<li class="padding_l13">3. 회원이 서비스 화면 내에 게시한 게시물의 저작권은 게시한
							회원에게 귀속 되며 SAFTY은 본서비스 내에서의 게제권을 갖으며 비영리목적으로 있습니다. 다만, 게시자의 동의 없이
							게시물을 상업적으로 이용할 수 없습니다</li>
						<li class="padding_l13">4. 회원은 서비스를 이용하여 취득한 정보를 SAFTY의 사전
							승낙없이 임의가공, 판매, 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게
							이용하게 하여서는 안됩니다.</li>

						<li class="Tit_n02" id="acc16">제 16조 (광고게재 및 광고주와의 거래)</li>
						<li class="padding_l13">1. SAFTY이 제공하는 서비스 내에 다양한 배너와
							링크(Link)를 포함할 수 있으며, 이는 광고주와의 계약관계에 의하거나 제공받은 컨텐츠의 출처를 밝히기 위한
							조치입니다. 회원은 서비스 이용 시 노출되는 광고게재에 대해 동의합니다.</li>
						<li class="padding_l13">2. 서비스에 게재되어 있거나 본 서비스를 통한 광고주의 판촉
							활동에 회원이 참여하거나 교신 또는 거래의 결과로서 발생하는 모든 손실 또는 손해에 대해 책임지지 않습니다.</li>
						<li class="padding_l13">3. 서비스 내에 포함되어 있는 링크를 클릭하여 타 사이트의
							페이지로 옮겨갈 경우 해당 사이트의 개인정보취급방침은 SAFTY과 무관합니다.</li>

						<li class="Tit_n02" id="acc17">제 17조 (서비스 이용시간)</li>
						<li class="padding_l13">1. 서비스 이용은 SAFTY의 업무상 또는 기술상 특별한 지장이
							없는 한 연중무휴, 1일 24시간 운영을 원칙으로 합니다. 다만, SAFTY은 시스템 정기점검, 증설 및 교체를 위해
							SAFTY이 정한 날이나 시간에 서비스를 일시 중단할 수 있으며, 예정되어 있는 작업으로 인한 서비스 일시중단은
							SAFTY이 제공하는 서비스를 통해 사전에 공지합니다</li>
						<li class="padding_l13">2. SAFTY은 서비스를 일정 범위로 분할하여 각 범위별로
							이용가능시간을 별도로 지정할 수 있습니다. 다만, 이 경우 그 내용을 공지합니다.</li>

						<li class="Tit_n02" id="acc18">제 18조 (서비스제공의 중단 등)</li>
						<li class="padding_l13">1. SAFTY은 다음 각 호의 내용에 해당하는 경우 서비스 제공의
							일부 혹은 전부를 제한하거나 중단할 수 있습니다.
							<ul class="oneNum">
								<li>① 정보통신설비의 보수 점검, 교체 및 고장 등 공사로 인한 부득이 한 경우</li>
								<li>② 기간통신사업자가 전기통신서비스를 중단했을 경우</li>
								<li>③ 서비스 이용의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 경우</li>
								<li>④ 국가비상사태 등 기타 불가항력적인 사유가 있는 경우</li>
							</ul>
						</li>
						<li class="padding_l13">2. 전항에 의한 서비스 중단의 경우에는 SAFTY은 제14조에
							정한 방법으로 그 사유 및 기간 등을 공지합니다. 다만, SAFTY이 통제할 수 없는 사유로 발생한 서비스의
							중단(시스템관리자의 고의, 과실없는 디스크 장애, 시스템 다운 등)에 대하여 사전공지가 불가능한 경우에는 예외로
							합니다.</li>

						<li class="Tit_n02" id="acc19">제 19조 (회원 ID 관리)</li>
						<li class="padding_l13">1. 회원 ID와 비밀번호에 관한 모든 관리책임은 회원에게
							있습니다.</li>
						<li class="padding_l13">2. SAFTY은 회원 ID에 의하여 제반 회원 관리업무를
							수행하므로 회원이 ID를 변경하고자 하는 경우, SAFTY이 인정할 만한 사유가 없는 한 ID의 변경을 제한할 수
							있습니다.</li>
						<li class="padding_l13">3. 회원이 등록한 회원 ID 및 비밀번호에 의하여 발생되는
							사용상의 과실 또는 제3자에 의한 부정사용 등에 대한 모든 책임은 해당 이용고객에게 있습니다.</li>

						<li class="Tit_n02" id="acc20">제 20조 (정보의 제공)</li>
						<li class="padding_l13">1. SAFTY은 회원에게 서비스 이용에 필요가 있다고 인정되는
							각종 정보에 대해서 전자우편이나 서신우편 등의 방법으로 회원에게 제공할 수 있습니다.</li>
						<li class="padding_l13">2. SAFTY은 서비스 개선 및 회원 대상의 서비스 소개 등의
							목적으로 회원의 동의 하에 추가적인 개인 정보를 요구할 수 있습니다.</li>

						<li class="line"></li>

						<li class="Tit_n01">제5장 계약해지 및 이용제한</li>
						<li class="Tit_n02" id="acc21">제 21조 (계약변경 및 탈퇴)</li>
						<li class="padding_l13">1. 회원이 이용계약을 해지하고자 하는 경우에는 회원 본인이 사이트
							내의 My Page 를 통해 탈퇴신청을 하거나 전화, 전자우편을 통해 탈퇴 의사를 밝힘으로써 탈퇴신청을 할 수
							있습니다.</li>
						<li class="padding_l13">2. 후원회원인 경우, 회원 이용계약 해지와는 별도로 후원 중단을
							원할 경우 중단 의사를 홈페이지를 통하거나 전화 등을 통해 의사를 밝혀야 하며, 후원 중단의 경우에 회원의 개인정보는
							추후 각종 증명서 발급 등 회원관리 업무를 위하여 합리적으로 필요한 경우 5년의 기간 동안은 SAFTY에서
							보유합니다.</li>
						<li class="padding_l13">3. 홈페이지 회원이면서 ‘후원회원’인 경우, 홈페이지 탈퇴와
							후원중단을 요청하는 경우에도 개인정보는 추후 각종 증명서 발급 등 회원관리 업무를 위하여 합리적으로 필요한 경우
							5년의 기간 동안은 SAFTY에서 보유합니다. 다만, 홈페이지 회원 혹은 후원자가 개인정보 삭제를 요청할 경우
							등록되어 있는 개인정보를 폐기하며, 개인정보 폐기 후에는 추후 발생될 수 있는 각종 증명서 발급 등의 회원관리 업무를
							SAFTY에서 지원하지 않습니다.</li>

						<li class="Tit_n02" id="acc22">제 22조 (서비스 이용제한)</li>
						<li class="padding_l13">1. SAFTY은 회원이 본 약관 제11조, 제12조 내용을
							위반하거나 다음 각 호에 해당하는 행위를 하는 경우에 회원의 서비스 이용을 제한할 수 있습니다.
							<ul class="oneNum">
								<li>① 미풍양속을 저해하는 비속한 ID 및 별명 사용</li>
								<li>② 타 이용자에게 심한 모욕을 주거나, 서비스 이용을 방해한 경우</li>
								<li>③ 정보통신 윤리위원회 등 관련 공공기관의 시정 요구가 있는 경우</li>
								<li>④ 3개월 이상 서비스를 이용한 적이 없는 경우</li>
								<li>⑤ 불법 게시물을 게재한 경우</li>
								<li>&nbsp;- 상용소프트웨어나 크랙파일을 올린 경우</li>
								<li>&nbsp;- 정보통신윤리위원회의 심의 세칙 제 7조에 어긋나는 음란물을 게재한 경우</li>
								<li>&nbsp;- 반국가적 행위의 수행을 목적으로 하는 내용을 포함한 경우</li>
								<li>&nbsp;- 저작권이 있는 글을 무단 복제하거나 mp3를 게재한 경우</li>
								<li>⑥기타 정상적인 서비스 운영에 방해가 될 경우</li>
							</ul>
						</li>
						<li class="padding_l13">2. 상기 이용제한 규정에 따라 서비스를 이용하는 회원에게 서비스
							이용에 대하여 별도 공지 없이 서비스 이용의 일시정지, 초기화, 이용계약 해지 등을 불량이용자 처리규정에 따라 취할
							수 있으며, 회원은 전항의 귀책사유로 인하여 SAFTY이나 다른 회원에게 입힌 손해를 배상할 책임이 있습니다.</li>

						<li class="line"></li>

						<li class="Tit_n01">제6장 손해배상 및 기타사항</li>
						<li class="Tit_n02" id="acc23">제 23조 (손해배상 및 면책조항)</li>
						<li class="padding_l13">1. SAFTY은 천재지변, 전쟁 및 기타 불가항력, SAFTY의
							합리적인 통제범위를 벗어난 사유로 인하여 서비스를 제공할 수 없는 경우에는 그에 대하여 책임을 지지 않습니다.</li>
						<li class="padding_l13">2. SAFTY은 기간통신 사업자가 전기통신 서비스를 중지하거나
							정상적으로 제공하지 아니하여 손해가 발생한 경우 책임이 면제됩니다.</li>
						<li class="padding_l13">3. SAFTY은 서비스용 설비의 보수, 교체, 정기점검, 공사 등
							부득이한 사유로 발생한 손해에 대하여 책임을 지지 않습니다.</li>
						<li class="padding_l13">4. SAFTY은 이용자의 귀책사유로 인한 서비스 이용의 장애 또는
							손해에 대하여 책임을 지지 않습니다.</li>
						<li class="padding_l13">5. SAFTY은 이용자의 컴퓨터 오류에 의해 손해가 발생한 경우,
							또는 회원이 신상정보 및 전자우편 주소를 부실하게 기재하여 손해가 발생한 경우 책임을 지지 않습니다.</li>
						<li class="padding_l13">6. SAFTY은 회원이 서비스를 이용하여 기대하는 수익을 얻지
							못하거나 상실한 것에 대하여 책임을 지지 않습니다.</li>
						<li class="padding_l13">7. SAFTY은 회원이 서비스를 이용하면서 얻은 자료로 인한
							손해에 대하여 책임을 지지 않습니다. 다만, SAFTY의 고의 또는 중과실로 인한 경우에는 그러하지 아니합니다. 또한
							SAFTY은 회원이 서비스를 이용하며 타 회원으로 인해 입게 되는 정신적 피해에 대하여 보상할 책임을 지지 않습니다.</li>
						<li class="padding_l13">8. 회원이 서비스 화면에 게재한 정보, 자료, 사실 등의 내용에
							관한 신뢰도 혹은 정확성에 대하여는 해당회원이 책임을 부담하며, SAFTY은 내용의 부정확 또는 허위로 인해 회원
							또는 제3자에게 발생한 손해에 대하여는 아무런 책임을 부담하지 않습니다.</li>
						<li class="padding_l13">9. SAFTY은 회원 상호 간 및 회원과 제3자 상호 간에
							서비스를 매개로 발생한 분쟁에 대해 개입할 의무가 없으며, 이로 인한 손해를 배상할 책임도 없습니다. 다만,
							SAFTY의 고의 또는 중과실로 인한 경우에는 그러하지 아니합니다.</li>
						<li class="padding_l13">10. SAFTY은 서비스 이용과 관련하여 회원의 고의 또는 과실로
							인하여 회원 또는 제3자에게 발생한 손해에 대하여는 아무런 책임을 부담하지 않습니다.</li>
						<li class="padding_l13">11. SAFTY에서 회원에게 무료로 제공하는 서비스의 이용과
							관련해서는 SAFTY의 고의 또는 중과실로 인한 경우가 아닌 한 손해에 대하여 책임을 지지 않습니다.</li>
						<li class="padding_l13">12. SAFTY이 개별 서비스 제공자와 제휴협정을 맺고 회원에게
							개별서비스를 제공함에 있어 회원이 개별서비스 이용약관에 동의하고 개별서비스 제공자의 귀책사유로 인해 손해가 발생할
							경우 관련 손해에 대해서는 개별서비스 제공자가 책임을 집니다.</li>

						<li class="Tit_n02" id="acc25">제 24조 (분쟁의 해결)</li>
						<li class="padding_l13">1. SAFTY과 회원은 서비스와 관련하여 발생한 분쟁을 원만하게
							해결하기 위하여 필요한 노력을 합니다.</li>
						<li class="padding_l13">2. SAFTY은 회원으로부터 제출되는 불만사항 및 의견을
							우선적으로 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 회원에게 그 사유와 처리일정을 즉시 통보 합니다.</li>

						<li class="Tit_n02" id="acc26">제 25조 (재판권 및 준거법)</li>
						<li class="padding_l13">SAFTY과 회원 간에 서비스 이용으로 발생한 분쟁에 대하여는
							대한민국법을 적용하며, 본 분쟁으로 인하여 소송이 제기될 경우 민사소송법 상의 관할을 가지는 대한민국의 법원에
							제기합니다.</li>

						<li class="line"></li>

						<li class="Tit_n01">제7장 기부금의 사용</li>
						<li class="Tit_n02" id="acc27">제 26조 (기부금의 사용)</li>
						<li class="padding_l13">1. 기부금은 ‘SAFTY코리아’를 통해 국내, 북한 및 전 세계의
							빈곤에 처한 어려운 이웃에게 사용됩니다.</li>
						<li class="padding_l13">2. 기부금 내역은 연 1회 후원자에게 연례보고서(Annual
							Report)를 통해 홈페이지에 공고하고 우편 및 이메일을 발송함으로서 투명하게 공개됩니다.</li>

						<li class="Tit_n02">부칙</li>
						<li class="padding_l13">(시행일) 본 약관은 2014년 8월 7일부터 적용됩니다</li>
						<li class="padding_l13"></li>
						<li class="padding_l13"></li>
						<li class="padding_l13"></li>
						<li class="padding_l13"></li>
						<li class="padding_l13"></li>
					</ul>
				</div>
				<div>
					<h1 class="box-container-title" >개인정보처리방침(필수)</h1>


					<div class="j-right" style="margin-left: 890px">
						<input id="divECI_ISDVSAVE" class="ab2" type="checkbox"
							name="agree2" value="Y" title="개인정보처리방침 필수 동의"> <label
							class="checkbox" for="agree2"> <span>동의</span>
						</label>
					</div>
				</div>

				<div class="contents">
					<div class="Etc_Wrap">
						<div class="access_navi" style="border: none;">
							<p>SAFTY코리아(이하’SAFTY’)는 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법 등
								법령상의 개인정보보호 규정을 준수하며, 관련 법령에 의거한 개인정보처리방침을 정하여 이용자 권익 보호에 최선을
								다하고 있습니다.</p>
							<p>본 개인정보처리방침은 법률의 개정 및 정부지침의 변경 또는 SAFTY 내부지침 변경에 따라 바뀔 수
								있으며, 변경사항은 서비스 초기화면에 게시하고 주요 변경 내용 및 개정일자 등 개정된 사항을 이용자들이 쉽게 알아볼
								수 있도록 홈페이지 공지게시판을 통해 고지하고 있습니다.</p>
						</div>
						<style>
.policyInsideList {
	font-family: "Nanum Barun Gothic", sans-serif !important;
}

.policyInsideList>div {
	line-height: 23px;
	padding: 0;
	margin: 0;
	font-size: 15px;
}

.policyInsideList>div>div {
	line-height: 23px;
	padding: 0;
	margin: 0;
	font-size: 15px;
}

.policyInsideList td {
	font-size: 15px;
	padding: 0 10px;
}

.policyInsideList table, .policyInsideList table td, p, span {
	font-family: "Nanum Barun Gothic", sans-serif !important;
}

.policyInsideList .p1_Title {
	font-weight: bold;
}

.policyInsideList .p2_Title {
	font-weight: bold;
}

@media ( max-width :640px) {
	.policyInsideList td {
		font-size: 13px;
		padding: 0 0;
	}
}
</style>

						<div class="policyInsideList">
							<div class="p1_Title">1. 개인정보 수집항목 및 목적</div>
							<br>
							<div class="p2_Title">1) 개인정보 수집항목</div>
							<br>
							<div>&lt; 일반회원가입&gt;</div>
							<div>- 필수항목 : 한글성명, 생년월일, 성별, 아이디, 비밀번호, 휴대폰 번호, E-Mail,
								회원가입 동기</div>
							<div>- 선택항목 : 영문성명, 연락처(자택/회사 전화번호), 주소, 자료수령주소, 자료수령 방법,
								직업</div>
							<br>
							<div>&lt; 만14세미만아동 회원가입 &gt;</div>
							<div>- 필수항목 : 한글성명, 생년월일, 성별, 아이디, 비밀번호, E-Mail, 보호자 성명,
								보호자 생년월일,보호자 휴대폰 번호, 회원가입 동기</div>
							<div>- 선택항목 : 영문성명, 연락처, 기본주소, 자료수령주소, 자료수령방법, 직업</div>
							<br>
							<div>&lt; 외국인회원가입&gt;</div>
							<div>- 필수항목 : 영문성명, 생년월일, 아이디, 비밀번호, 휴대폰번호</div>
							<div>- 선택항목 : 연락처, 기본주소, 자료수령주소, 자료수령 방법, 직업</div>
							<br>
							<div>&lt; 기업∙단체회원가입 &gt;</div>
							<div>- 필수항목 : 가입구분, 기업/단체명, 담당자명, 사업자번호, 아이디, 비밀번호, 휴대폰번호,
								E-Mail</div>
							<div>- 선택항목 : 연락처, 기본주소, 자료수령주소, 자료수령 방법, 회원가입 동기, 후원자사진</div>
							<br>
							<div>&lt; 후원회원 On/Off-Line가입 &gt;</div>
							<div>- 필수항목 : 성명, 생년월일, 성별, 휴대폰 번호, E-Mail(해외결연후원 시 영문성명,
								자료수령주소 포함),</div>
							<br>
							<div>&lt; 후원신청동기 &gt;</div>
							<div>- 선택항목 : 주소, 자택전화번호, 직업, 주민등록번호(국제청 연말정산간소화서비스 등록을 위한
								수집 시)</div>
							<br>
							<div>&lt; 만14세미만아동 후원회원 On/Off-Line가입 &gt;</div>
							<div>- 필수항목 : 성명, 생년월일, 성별, E-Mail(해외결연후원 시 영문성명, 자료수령주소
								포함), 보호자 성명,</div>
							<br>
							<div>&lt; 보호자 생년월일, 보호자 휴대폰번호, 후원신청동기 &gt;</div>
							<div>- 선택항목 : 주소, 자택전화번호, 주민등록번호(국제청 연말정산간소화서비스 등록을 위한 수집
								시)</div>
							<br>
							<div>&lt; 후원금결제 &gt;</div>
							<div>- 신용카드 : 카드사명, 카드번호, 유효기간, 카드명의자명, 카드명의자 생년월일</div>
							<div>- 자동이체(CMS) : 은행명, 계좌번호, 예금주명, 예금주 생년월일</div>
							<br>
							<div>&lt; 국제어린이 마라톤 &gt;</div>
							<div>- 필수항목 : 참가자 성명, 생년월일, 성별, 전화번호, 휴대폰번호, 이메일, 주소, 소속</div>
							<div>- 선택항목 : 참가자 사진, 동영상, 인터뷰</div>
							<br>
							<div>&lt; 아동을 살리는 선물가게 &gt;</div>
							<div>- 필수항목 : 카드 받는 분의 성명, E-Mail, 주소</div>
							<br>
							<div>&lt; 기빙클럽 &gt;</div>
							<div>- 필수항목 : 성명, 생년월일, 성별, 주소, 연락처, 이메일, 직업</div>
							<div>- 선택항목 : 모임명</div>
							<br>
							<div>&lt; WE SAVER &gt;</div>
							<div>
								- 필수항목 : 이름, 성별, 생년월일, 아이디, 휴대폰, 직업, 회원번호, 이메일, 주소, 봉사가능 시간,
								지원경로,<span style="font-family: 나눔고딕, NanumGothic;"> 구사가능
									외국어, 봉사 동기 </span>
							</div>
							<div>- 선택항목 : 봉사기간, 전공, 봉사활동 경력</div>
							<br>
							<div>&lt; 서명하기 &gt;</div>
							<div>- 필수항목 : 성명, 휴대폰번호, E-Mail</div>
							<br>
							<div>&lt; 후원자 프로그램 신청 &gt;</div>
							<div>- 기존 회원정보 : 성명, 휴대폰 번호, E-Mail</div>
							<div>- 필수항목 : 동반 참가자 성명</div>
							<br>
							<div>&lt; 자동수집정보 &gt;</div>
							<div>- 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수
								있습니다.</div>
							<div>- 수집가능항목 : IP Address, 쿠키, 방문일 시, 서비스이용기록, 불량이용기록, LMS
								발송기록</div>
							<br>
							<br>
							<div class="p2_Title">2) 개인정보 이용목적</div>
							<div>가. 캠페인 참여확인 및 자원봉사관련 안내(이메일, 전화, 문자)를 위한 목적으로 사용됩니다.</div>
							<div>나. 홈페이지 이용자가 등록한 개인정보는 서비스와 관련된 뉴스, 이벤트, 업데이트 소식을 받아 볼
								수 있도록 이용자의 동의를 구하고 발송하는 뉴스레터, 인쇄물, 카달로그 서비스를 보다 원활하게 제공하기 위한
								목적으로 사용됩니다.</div>
							<div>다. 이용자의 홈페이지 서비스, 커뮤니케이션 서비스, TM 마케팅 서비스를 위한 목적으로
								사용됩니다.</div>
							<div>라. 캠페인 Q&amp;A 게시판 작성 시 SAFTY 홈페이지 회원가입 시 제공한
								E-Mail/연락처가 활용되며, 이는 Q&amp;A 답변을 위한 확인으로만 사용됩니다.</div>
							<div>마. SAFTY이 주관하는 설문조사나 이벤트 행사 시, 게시판, 덧글 작성 시 통계분석이나
								경품제공 등을 위해 선별적으로 개인정보 입력을 요청할 수 있고, SAFTY이 발송하는 이메일 수신과 함께 이벤트,
								기념품 등의 혜택을 받는 이메일 수신자가 되는 경우에도 선별적으로 개인정보 입력을 요청받을 수 있습니다.</div>
							<br>
							<br>
							<div class="p2_Title">3) 개인정보 보존기간 및 사유</div>
							<br>

							<table width="664"
								style="border: currentColor; border-image: none; font-size: 13px; border-collapse: collapse;"
								border="0" cellspacing="0" cellpadding="0">
								<tbody>
									<tr>
										<td
											style="border: 1px solid rgb(204, 204, 204); border-image: none; width: 250px; height: 24px; background-color: rgb(246, 246, 246);">
											<p style="text-align: center;">
												<b>해당 개인정보</b><br>
											</p>
										</td>
										<td
											style="width: 132px; height: 24px; border-top-color: rgb(204, 204, 204); border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: rgb(246, 246, 246);">
											<p style="text-align: center;">
												<b>보존기간</b><br>
											</p>
										</td>
										<td
											style="width: 280px; height: 24px; border-top-color: rgb(204, 204, 204); border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: rgb(246, 246, 246);">
											<p style="text-align: center;">
												<b>보존사유(관련 법률)</b><br>
											</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 250px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>계약 또는 청약철회 등에 관한 기록</p>
										</td>
										<td
											style="width: 132px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>5년</p>
										</td>
										<td
											style="width: 280px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;"
											rowspan="3" colspan="1">
											<p>전자상거래 등에서의 소비자 보호에 관한 법률</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 250px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>대금결제 및 재화 등의 공급에 관한 기록</p>
										</td>
										<td
											style="width: 132px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>5년</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 250px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>소비자 불만 또는 분쟁처리에 관한 기록</p>
										</td>
										<td
											style="width: 132px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>3년</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 250px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>전자금융 거래에 관한 기록</p>
										</td>
										<td
											style="width: 132px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>5년</p>
										</td>
										<td
											style="width: 280px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>전자금융거래법</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 250px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>본인확인에 관한 기록</p>
										</td>
										<td
											style="width: 132px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>6개월</p>
										</td>
										<td
											style="width: 280px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>정보통신망 이용촉진 및 정보보호 등에 관한 법률</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 250px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>웹사이트 방문에 관한 기록</p>
										</td>
										<td
											style="width: 132px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>3개월</p>
										</td>
										<td
											style="width: 280px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>통신비밀보호법</p>
										</td>
									</tr>
								</tbody>
							</table>
							<br>
							<br>

							<div class="p1_Title">2. 개인정보 동의 방법 및 동의거부 관리</div>
							<div>SAFTY은 홈페이지의 회원가입, 고객서비스센터, 서면양식, 게시판, 이벤트 참여 등을 통해
								개인정보를 수집합니다.</div>
							<br>
							<div class="p2_Title">
								<span style="font-weight: normal;"> 1) 개인정보 수집∙이용 동의 거부의
									권리 : SAFTY은 정보주체가 서비스를 이용하기 위해 가입하실 때 서비스 제공을 위한 최소한의 정보를 수집하며
									정보주체는 개인정보의 수집∙이용에 동의거부를 할수있습니다. </span>
							</div>
							<div class="p2_Title">
								<span style="font-weight: normal;"> 2) 만 14세미만 아동의 개인정보 :
									SAFTY은 만 14세미만 아동의 회원가입시 반드시 법정대리인의 동의 후 진행하도록 규정하고 있으며 법정대리인의
									동의가 없는 만 14세미만아동의 정보는 원칙적으로 수집하지 않습니다. </span>
							</div>
							<br>
							<br>
							<div class="p1_Title">3. 개인정보의 제3자 제공</div>
							<div>SAFTY은 정보주체의 개인정보를 제1조(개인정보 수집항목 및 목적)에서 명시한 범위 내에서만
								처리하며, 후원금정산을 위해 필요한 경우, 법령이 규정에 의거하거나, 수사, 조사 목적으로 법령에 정해진 절차와
								방법에 따라 수사기관 및 감독당국의 요구가 있는 경우 등의 예외적인 경우를 제외하고는 정보주체의 사전 동의 없이
								범위를 초과하여 이용하거나 정보주체의 개인정보를 제3자에게 제공하지 않습니다. 다만, 아래의 경우는 예외로 합니다.
							</div>
							<br>

							<table width="664" class="txc-table"
								style="border: currentColor; border-image: none; font-size: 13px; border-collapse: collapse;"
								border="0" cellspacing="0" cellpadding="0">
								<tbody>
									<tr>
										<td
											style="border: 1px solid rgb(204, 204, 204); border-image: none; width: 132px; height: 24px; background-color: rgb(246, 246, 246);">
											<p style="text-align: center;">
												<b>제공대상</b>
											</p>
										</td>
										<td
											style="width: 132px; height: 24px; border-top-color: rgb(204, 204, 204); border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: rgb(246, 246, 246);">
											<p style="text-align: center;">
												<b>개인정보이용목적</b>
											</p>
										</td>
										<td
											style="width: 132px; height: 24px; border-top-color: rgb(204, 204, 204); border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: rgb(246, 246, 246);">
											<p style="text-align: center;">
												<b>제공 개인정보</b>
											</p>
										</td>
										<td
											style="width: 133px; height: 24px; border-top-color: rgb(204, 204, 204); border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: rgb(246, 246, 246);">
											<p style="text-align: center;">
												<b>개인정보 보유 및 이용기간</b>
											</p>
										</td>
										<td
											style="width: 132px; height: 24px; border-top-color: rgb(204, 204, 204); border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: rgb(246, 246, 246);">
											<p style="text-align: center;">
												<b>동의 거부에 따른 불이익</b>
											</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 132px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;"
											rowspan="1" colspan="1">
											<p>사단법인 금융결제원,</p>
										</td>
										<td
											style="width: 132px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;"
											rowspan="2" colspan="1">
											<p>자동이체(CMS) 출금이체 서비스 제공 및 출금동의 확인</p>
										</td>
										<td
											style="width: 132px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;"
											rowspan="2" colspan="1">
											<p>성명, 은행명, 계좌번호, 예금주 생년월일</p>
										</td>
										<td
											style="width: 133px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;"
											rowspan="2" colspan="1">
											<p>자동이체(CMS) 출금이체 서비스 제공 및 출금동의 확인 목적을 달성할 때 까지</p>
										</td>
										<td
											style="width: 133px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;"
											rowspan="2" colspan="1">
											<p>자동이체(CMS) 신청 불가</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 132px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;"
											rowspan="1" colspan="1">
											<p>효성에프엠에스 주식회사</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 132px; height: 61px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>SAFTY 해외 사업장</p>
										</td>
										<td
											style="width: 132px; height: 61px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>결연아동과의 원활한 의사 소통 및 결연의 유지</p>
										</td>
										<td
											style="width: 132px; height: 61px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>후원회원번호, 영문성명</p>
										</td>
										<td
											style="width: 133px; height: 61px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>결연후원의 종료 시 까지</p>
										</td>
										<td
											style="width: 132px; height: 61px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>해외결연 불가</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 132px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>국회</p>
										</td>
										<td
											style="width: 132px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>서명하기 수집정보 제출</p>
										</td>
										<td
											style="width: 132px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>성명, E-Mail, 주소</p>
										</td>
										<td
											style="width: 133px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>수집 목적 달성 시 까지</p>
										</td>
										<td
											style="width: 132px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>서명하기 참여 불가</p>
										</td>
									</tr>
								</tbody>
							</table>
							<br>
							<br>


							<div class="p1_Title">4. 개인정보처리의 위탁</div>
							<div>SAFTY은 서비스 향상을 위해 아래와 같이 개인정보를 위탁하고 있으며, 관계법령에 따라 위탁계약
								시 개인정보가 안전하게 관리될 수 있도록 규정하고 있습니다.</div>
							<br>

							<table width="664" class="txc-table"
								style="border: currentColor; border-image: none; font-size: 13px; border-collapse: collapse;"
								border="0" cellspacing="0" cellpadding="0">
								<tbody>
									<tr>
										<td
											style="border: 1px solid rgb(204, 204, 204); border-image: none; width: 220px; height: 24px; background-color: rgb(246, 246, 246);">
											<p style="text-align: center;">
												<b>수탁업체</b>
											</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-top-color: rgb(204, 204, 204); border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: rgb(246, 246, 246);">
											<p style="text-align: center;">
												<b>위탁업무 내용</b>
											</p>
										</td>
										<td
											style="width: 187px; height: 24px; border-top-color: rgb(204, 204, 204); border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: rgb(246, 246, 246);">
											<p style="text-align: center;">
												<b>개인정보 보유 및 이용기간</b>
											</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>디엠라인㈜, 런정보시스템</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>SAFTY 홍보물(소식지, 연차보고서, 후원안내서, 결연아동보고서 등) 발송</p>
										</td>
										<td
											style="width: 188px; height: 409px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;"
											rowspan="16" colspan="1">
											<p>회원/후원 탈퇴 시 혹은 위탁계약 종료 시 까지</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>㈜세일코리아넷, ㈜케이티스, 효성아이티엑스㈜</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>SAFTY 후원자관리 및 후원개발을 위한 전화통화</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>㈜휴머스온, 인포뱅크㈜, ㈜넷퍼씨 메일링크, 주식회사 모바일타운, ㈜엘지씨엔에스, 스티비주식회사</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>SAFTY 후원관리를 위한 E-Mail 및 휴대폰 번호 문자, 카카오 알림톡 발송 및 수신 시스템
												제공</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>㈜크레비스파트너스</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>SAFTY 후원 관리를 위한 E-Mail 및 휴대폰 번호 문자, 카카오 알림톡 발송 시스템 제공
												및 온라인 후원 신청 대행</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 25px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>(주)포엠크리에이티브</p>
										</td>
										<td
											style="width: 255px; height: 25px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>SAFTY 홈페이지 관리 운영</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>㈜솔루텍시스템</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>SAFTY 통합 Database 유지보수</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 26px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>(주)윈드폴</p>
										</td>
										<td
											style="width: 255px; height: 26px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>SAFTY 통합정보시스템 유지보수</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>㈜위세아이텍</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>SAFTY CRM-DW시스템 개발</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>NICE페이먼츠㈜, 갤럭시아커뮤니케이션즈㈜, 엔에이치엔페이코㈜, 네이버㈜, ㈜카카오페이</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>SAFTY 후원을 위한 결제시스템 제공</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 39px; border-right: 1px solid rgb(204, 204, 204); border-bottom: 1px solid rgb(204, 204, 204); border-left: 1px solid rgb(204, 204, 204);">
											<p>엠버글로우, Salesworks korea Co.LTD, 라이프워시퍼, 펀브릿지</p>
										</td>
										<td
											style="width: 255px; height: 39px; border-right: 1px solid rgb(204, 204, 204); border-bottom: 1px solid rgb(204, 204, 204);">
											<p>현장 후원모집 및 정보입력 대행</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;"
											rowspan="1">
											<p>효성아이티엑스㈜</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;"
											rowspan="1">
											<p>그리다 100가지 말상처 캠페인 소식전달 및 마케팅서비스 제공</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>㈜에이원퍼포먼스팩토리</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>온라인 후원모집 대행</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>에스비에스미디어 홀딩스 주식회사</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>희망TV SBS 후원자 후원내역 정보조회</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 39px; border-right: 1px solid rgb(204, 204, 204); border-bottom: 1px solid rgb(204, 204, 204); border-left: 1px solid rgb(204, 204, 204);">
											<p>
												마크로밀 엠브레인<br>
											</p>
										</td>
										<td
											style="width: 255px; height: 39px; border-right: 1px solid rgb(204, 204, 204); border-bottom: 1px solid rgb(204, 204, 204);">
											<p>후원자 만족도 조사, 브랜드 인지도 조사 설문 및 기획/발송/분석 등</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>Social blue, ItAllCounts,(주)</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>SAFTY 온라인 설문 및 캠페인 기획/진행/분석 등</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>㈜스포맥스코리아, 대일기획</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>국제어린이마라톤 참가자 관리 및 행사 대행</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>서울신용평가정보㈜, 세종텔레콤㈜</p>
										</td>
										<td
											style="width: 255px; height: 24px; text-align: justify; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>후원을 위한 실명∙본인 인증시스템 제공</p>
										</td>
										<td
											style="width: 187px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>해당 업체 기 보유 정보로 별도 저장하지 않음</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>
												우체국 및 택배회사<br>
											</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>SAFTY 홍보물 등 발송</p>
										</td>
										<td
											style="width: 187px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>발송 요청 후 5년</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>SK플래닛㈜</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>OK캐쉬백 포인트로 결제한 기부금 소득공제를 위하여 국세청 연말정산 간소화 서비스 자료 제공 및
												기부금 영수증 발급을 위한 개인정보(주민등록번호, 이름, 기부금액) 수집 대행 및 전달</p>
										</td>
										<td
											style="width: 187px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>익년도 1월까지 보관 후 파기</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>Yesman power</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>고객안내센터 운영</p>
										</td>
										<td
											style="width: 187px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>위탁계약 종료시까지</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 220px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>(주) 이스터씨앤아이, (주)온더네이쳐</p>
										</td>
										<td
											style="width: 255px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>SAFTY 유튜브 아동인권 캠페인 참여 서명</p>
										</td>
										<td
											style="width: 187px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>SAFTY 유튜브 아동인권 캠페인 종료 후 1년</p>
										</td>
									</tr>
								</tbody>
							</table>
							<br>
							<div>SAFTY은 위탁계약 체결 시 개인정보 보호법 제26조에 따라 위탁업무 수행목적 외 개인정보
								처리금지, 기술적∙관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리∙감독, 손해배상 등 책임에 관한 사항을 계약서
								등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.</div>
							<br>
							<div>위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록
								하겠습니다.</div>
							<div>
								<br>
							</div>

							<div class="p1_Title">5. 정보주체의 권리/의무와 그 행사방법</div>
							<div class="p2_Title">
								<span style="font-weight: normal;"> 1) 정보주체는 언제든지 등록되어 있는
									정보주체의 개인정보를 열람하거나 정정하실 수 있습니다. 개인정보 열람, 정정, 삭제 하고자 할 경우에는 SAFTY
									홈페이지 ‘마이페이지 &gt; 나의 회원정보’메뉴를 클릭하여 본인 확인 절차를 거치신 후 직접 열람, 정정,
									삭제하실 수 있으며, 개인정보보호법 시행규칙 ‘별지 제8호 서식’에 따라 작성 후 서면, 전자우편, FAX 등을
									통한 경우 SAFTY은 지체 없이 조치하겠습니다. </span>
							</div>
							<div class="p2_Title">
								<span style="font-weight: normal;"> 2) 정보주체는 회원가입 등을 통해
									개인정보의 수집, 이용, 제공에 대해 동의하신 내용을 언제든지 철회하실 수 있습니다. 동의 철회(회원탈퇴)를
									하고자 할 경우에는 회사 홈페이지‘마이페이지&gt;나의 회원정보&gt;회원탈퇴’를 클릭하여 직접 신청하실 수
									있습니다. </span>
							</div>
							<div>3) 정보주체의 요청에 의해 해지 또는 삭제, 정정된 개인정보는 제3조(개인정보의 보유 및
								이용기간)에 명시된 바에 따라 처리되고, 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.</div>
							<div class="p2_Title">
								<span style="font-weight: normal;"> 4) 정보주체는 언제든지 회사의
									개인정보에 대하여 처리의 정지를 요구 할 수 있습니다.<br> 다만, 아래의 경우에 해당하는 경우
									처리정지 요구를 거절할 수 있습니다.
								</span>
							</div>
							<div>가. 법률에 따라 열람이 금지되거나 제한되는 경우</div>
							<div>나. 다른 사람의 생명∙신체를 해할 우려가 있거나 다른 사람의 재산과 그 밖의 이익을 부당하게
								침해할 우려가 있는 경우</div>
							<div>다. 개인정보를 처리하지 아니하면 정보주체와 약정한 서비스를 제공하지 못하는 등 계약의 이행이
								곤란한 경우로서 정보주체가 그 계약의 해지 의사를 명확하게 밝히지 아니한 경우</div>
							<div class="p2_Title">
								<span style="font-weight: normal;"> 5) SAFTY은 정보주체 권리에 따른
									열람, 정정, 삭제, 처리정지의 요구 시, 요구한 자가 본인이거나 정당한 대리인인지를 확인합니다. </span>
							</div>
							<br>

							<div class="p1_Title">6. 개인정보 파기 절차 및 방법</div>
							<div>
								SAFTY은 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기 합니다. 다만, 다른
								법률에 따라 보존하여야 하는 경우에는 그러하지 않습니다.<br> 파기의 절차, 기한 및 방법은 다음과
								같습니다.
							</div>
							<br>
							<div class="p2_Title">1) 파기절차</div>
							<div>불필요한 개인정보는 개인정보책임자의 책임 하에 내부방침 절차에 따라 다음과 같이 처리하고
								있습니다.</div>
							<div>가. 개인정보의 파기 : 처리목적 달성 및 보유기간이 경과한 개인정보는 종료일로부터 7일 내에
								지체없이 파기합니다</div>
							<div class="p2_Title">2) 파기방법</div>
							<div>- 전자적 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다</div>
							<div>- 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다</div>
							<br>
							<br>
							<div class="p1_Title">7. 개인정보보호책임자 및 담당자 안내</div>
							<div>SAFTY은 정보주체의 개인정보 관련 문의사항 및 불만 처리 등을 위하여 아래와 같이 개인정보
								보호책임자 및 담당자를 지정하고 있습니다.</div>
							<br>

							<table width="664" class="txc-table"
								style="border: currentColor; border-image: none; font-size: 13px; border-collapse: collapse;"
								border="0" cellspacing="0" cellpadding="0">
								<tbody>
									<tr>
										<td
											style="border: 1px solid rgb(204, 204, 204); border-image: none; width: 332px; height: 24px; background-color: rgb(246, 246, 246);">
											<p style="text-align: center;">
												<b>개인정보보호책임자<br>
												</b>
											</p>
										</td>
										<td
											style="width: 332px; height: 24px; border-top-color: rgb(204, 204, 204); border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: rgb(246, 246, 246);">
											<p style="text-align: center;">
												<b>개인정보보호담당자<br>
												</b>
											</p>
										</td>
									</tr>
									<tr>
										<td
											style="width: 332px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid;">
											<p>이 름 : 유용선</p>
											<p>소 속 : 인프라지원부</p>
											<p>직 위 : 부장</p>
											<p>전 화 : 02-6900-4400</p>
											<p>메 일 : privacy@sc.or.kr</p>
										</td>
										<td
											style="width: 332px; height: 24px; border-right-color: rgb(204, 204, 204); border-bottom-color: rgb(204, 204, 204); border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid;">
											<p>이 름 : 강민식</p>
											<p>소 속 : IT팀</p>
											<p>직 위 : 팀장</p>
											<p>전 화 : 02-6900-4400</p>
											<p>메 일 : privacy@sc.or.kr</p>
										</td>
									</tr>
								</tbody>
							</table>
							<br>
							<br>

							<div class="p1_Title">8. 정보주체의 권익 침해에 대한 구제방법</div>
							<div>정보주체는 아래의 기관에 개인정보 침해에 대한 피해구제, 상담등을 문의하실 수 있습니다.</div>
							<br>
							<div>1) 개인정보 침해신고센터 (국번없이 118)</div>
							<div>2) 개인정보 분쟁조정위원회 (1833-6972)</div>
							<div>3) 대검찰청 사이버범죄수사단 (국번없이 1301)</div>
							<div>4) 경찰청 사이버안전국 (국번없이 182)</div>
							<br>
							<br>

							<div class="p1_Title">9. 개인정보의 안전성 확보조치</div>
							<div>SAFTY은 정보주체의 개인정보를 처리함에 있어 개인정보의 분실, 도난, 누출, 외부로부터의
								공격, 위•변조, 해킹 등을 방지하고 최상의 안전성을 확보하기 위하여 다음과 같은 기술적 대책을 강구하고 있습니다.
							</div>
							<br>
							<div class="p2_Title">1) 개인정보 취급 직원의 최소화 및 교육</div>
							<div>개인정보를 취급하는 직원을 지정하고 있으며, 개인정보 처리 업무를 고려한 담당자를 최소화 하며,
								지속적인 개인정보보호 교육을 시행하고 있습니다.</div>
							<div class="p2_Title">2) 내부관리계획의 수립 및 시행</div>
							<div>개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.</div>
							<div class="p2_Title">3) 개인정보의 암호화</div>
							<div>정보주체의 개인정보는 법령에서 정하는 기준에 따라 암호화되어 저장∙관리되고 있으며, 또한 파일 및
								전송 데이터를 암호화 등 적용하고 있습니다.</div>
							<div class="p2_Title">4) 해킹 등에 대비한 기술적 대책</div>
							<div>SAFTY은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여
								보안프로그램을 설치하고 주기적인 갱신∙점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고
								기술적/물리적으로 감시 및 차단하고 있습니다.</div>
							<div class="p2_Title">5) 개인정보에 대한 접근 제한</div>
							<div>개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에
								대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고
								있습니다.</div>
							<div class="p2_Title">6) 접속기록의 보관 및 위∙변조 방지</div>
							<div>개인정보처리시스템에 접속한 기록을 보관 및 관리하고 있으며, 접속 기록이 위조, 변조, 도난 및
								분실되지 않도록 관리하고 있습니다.</div>
							<div class="p2_Title">7) 문서보안을 위한 잠금장치 사용</div>
							<div>개인정보가 포함된 서류, 보조저장매체 등을 잠금 장치가 있는 안전한 장소에 보관하고 있습니다.</div>
							<div class="p2_Title">8) 비인가자에 대한 출입 통제</div>
							<div>개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립,
								운영하고 있습니다</div>
							<br>

							<div class="p1_Title">10. 개인정보를 자동으로 수집하는 장치의 설치/운영 및 그 거부에
								관한 사항</div>
							<div>SAFTY은 다음과 같은 목적을 위해 쿠키를 사용합니다.</div>
							<br>
							<div class="p2_Title">1) 쿠키사용 목적</div>
							<div>정보주체의 접속 빈도나 방문 시간 등을 분석, 정보주체의 취향과 관심분야를 파악 및 자취 추적,
								각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타겟 마케팅 및 개인 맞춤 서비스 제공</div>
							<div class="p2_Title">2) 쿠키 설정거부 방법</div>
							<div>정보주체는 쿠키 설치에 대한 선택권을 가지고 있으며 웹 브라우저에서 옵션을 설정함으로써 쿠키의
								전부 허용, 일부 허용, 전부 거부 등의 선택이 가능합니다.</div>
							<br>
							<div>
								가.<span style="white-space: pre;"></span>설정방법(인터넷 익스플로러의 경우)
							</div>
							<div>인터넷 화면 작업표시줄 [도구]를 클릭한 후 [인터넷 옵션]을 선택하고, [개인정보 탭]을 선택한
								후, [설정]에서 쿠키허용 여부를 설정합니다. 단, 정보주체가 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이
								있을 수 있습니다.</div>
							<br>
							<div class="p1_Title">11. 개인정보처리방침의 변경에 관한 사항</div>
							<div>본 개인정보처리방침 내용의 추가, 삭제 및 수정이 있을 경우 개정 최소 7일전에 '공지사항' 을
								통해 사전 공지를 할 것입니다. 다만, 수집하는 개인정보의 항목, 이용목적의 변경 등과 같이 정보주체 권리의 중대한
								변경이 발생할 때에는 최소 30일 전에 공지하며, 필요 시 정보 주체 동의를 다시 받을 수도 있습니다</div>
							<br>
							<br>
							<div>공고일자 : 2019년 10월 7일</div>
							<div>시행일자 : 2019년 10월 14일</div>
						</div>
						<p>
							<br>
						</p>
						<p>
							<br>
						</p>

						<p>
							<br>
						</p>
						<p>
							<br>
						</p>


						<p>
							<br>
						</p>
						<p>
							<br>
						</p>
						<p>
							<br>
						</p>
						<p>
							<br>
						</p>
						<p>
							<br>
						</p>

					</div>
				</div>
				<input class="btn" type="button" value="가입하기" />

			</div>
			<!-- box-container-mid end -->



			<div class="help-join">
				<img src="../image/bottom.png" id="bottomImg" alt="">
			</div>
			<!-- help-join end -->

		</div>
	</div>
	<div id="footer">
		<jsp:include page="../etc/project_footer.jsp" ></jsp:include>
	</div>
</body>
</html>