<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입_정보입력</title>
<!-- <link rel="stylesheet" href="../css/join3.css" type="text/css" />  -->
<style type="text/css">

#thisContent{
 padding: 100px 0 150px;
}

* {
	font-family: "나눔스퀘어";
	font-size: 100%;
	font-variant-ligatures: none;
}

.head {
	padding-bottom: 30px;
	text-align: center;
	margin-top: 50px;
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
	height: 1300px;
	margin-left: 430px;
	padding: 80px 50px 30px;
	text-align: center;
	background: #fff;
	box-shadow: 0px 5px 15px 0px rgba(0, 0, 0, .15);
}

.mainTitle {
	display: inline-block;
	font-size: 20px;
	letter-spacing: -0.04em;
}

.choiceTitle {
	font-weight: bold;
}

.topText {
	margin-right: 700px;
}

.form-password, .form-password-check {
	display: inline-block;
	position: relative;
	max-width: 475px;
	width: 100%;
}

.table tr th {
	padding: 26px 0 26px 25px;
	width: 250px;
	border-top: 1px solid #e5e5e5;
	color: #555;
	font-size: 17px;
    font: bold 17px black;
}

.table tr td {
	padding: 14px 0;
	font-family: 'Nanum Barun Gothic';
	letter-spacing: -0.05em;
	color: #555;
	font-size: 15px;
	border-top: 1px solid #e5e5e5;
}

.groupNum {
	/* margin: .2em 0; */
	height: 40px;
	width: 380px;
	font-size: 1em;
	padding: .5em;
	border: 1px solid #ccc;
	border-color: #dbdbdb #d2d2d2 #d0d0d0 #d2d2d3;
	box-shadow: inset 0.1em 0.1em 0.15em rgba(0, 0, 0, .1);
	vertical-align: middle;
	line-height: 1.25em;
	outline: 0;
	letter-spacing: -0.05em;
}

input[type=radio]{display: none;}
label{display: inline-block;
	width: 80px;
	height: 20px;
	background-repeat: no-repeat;
	background-size: 20px auto;
	margin-left: 10px;
	margin-right: 30px;
}
.genderC{background-image:url(../image/checkbox.png); 
	margin-right: 20px;
}
input:checked + label.genderC{background-image: url(../image/checkbox_checked.png);
margin-right: 20px;
}
/* 
input[type=radio]:not(old)+label {
	display: inline-block;
	background: url("image/button-off.png") no-repeat;
	width: 50px;
	height: 20px;
	margin-left: -20px;
	padding-left: 20px;
}

input[type=radio]:not(old):checked+label {
	display: inline-block;
	background: url("image/button-on.png") no-repeat;
	width: 50px;
	height: 20px;
	margin-left: -24px;
	padding-left: 24px;
} */

.basic {
	max-width: 500px;
	width: 1000px;
	height: 50px;
	letter-spacing: -0.05em;
	font-family: "Nanum Barun Gothic";
	outline: none;
	padding: 0 20px;
	border: 1px solid #dddddd;
	color: #666;
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

.emailBox1 {
	margin-left: 18px;
}

.emailBox2, .emailBox1 {
	outline: none;
	padding: 0;
	border: 1px solid #dddddd;
	color: #666;
	font-size: 15px;
	width: 110px;
	height: 40px;
	border: 1px solid #dddddd;
	color: #666;
	font-size: 15px;
}

.email3 {
	margin-left: 10px; width : 120px;
	height: 40px;
	width: 120px;
}

#submit {
	margin-left: 12px; width : 150px;
	height: 55px;
	line-height: 55px;
	font-size: 1.04em;
	color: #fff;
	letter-spacing: -0.04em;
	background: #61564b;
	border: 0;
	text-align: center;
	margin-right: 10px;
	width: 150px;
}

.groupBtn {
	margin-left: 0px;
	text-align: center;
	display: inline-block;
	width: 140px;
	height: 55px;
	line-height: 55px;
	font-size: 1.04em;
	color: #fff;
	letter-spacing: -0.04em;
	background: #61564b;
	border: 0;
	text-align: center;
	display: inline-block;
}

#golbang {
	/* margin-right: 30px; */
	/* position: relative;
	left: 50px; */
	
}

.select {
	float: right;
}

.d_form {
	letter-spacing: -0.05em;
	font-family: "Nanum Barun Gothic";
	outline: none;
	/* 	margin-right: 8px; */
	margin-top: 3px;
	/* 	padding: 10px 20px; */
	border: 1px solid #dddddd;
	color: #666;
	font-size: 15px;
	vertical-align: middle;
	line-height: 1.25em;
	text-align: center;
	background: #fff;
	height: 45px;
	letter-spacing: -0.05em;
}

.btn {
	display: inline-block;
	padding: 0 60px;
	margin-top: 30px;
	height: 75px;
	width: 400px;
	line-height: 55px;
	font-size: 1.04em;
	font-weight: 700;
	color: #fff;
	letter-spacing: -0.04em;
	background: #3e66ae;
	border: 0;
	line-height: 55px;
	cursor: pointer;
}

/* .groupBtn {
	width: 10em;
	height: 50px;
	margin-right: 120px;
	padding: 2px solid #61564b;
} */
.gender {
	font-size: 18px;
	font: bold 18px black;
	text-align: center;
	margin-left: 10px;
	margin-right: 10px;
	width: 50px;
}

#alert-success {
	background: #3E66AE;
	color: #fff;
	max-width: 500px;
	height: 40px;
	letter-spacing: -0.05em;
	font-family: "Nanum Barun Gothic";
	outline: none;
	padding: 0 20px;
	border: 1px solid #dddddd;
	font-size: 15px;
	text-align: center;
	margin-left: 90px;
}

#alert-danger {
	background-color: #F8D7DA;
	color: #711B50;
	max-width: 500px;
	height: 40px;
	letter-spacing: -0.05em;
	font-family: "Nanum Barun Gothic";
	outline: none;
	padding: 0 20px;
	border: 1px solid #dddddd;
	font-size: 15px;
	text-align: center;
	margin-left: 90px;
}

.d_btn {
	display: inline-block;
	margin-right: 30px; width : 200px;
	height: 50px;
	text-align: center;
	font-size: 1.04em;
	color: #fff;
	letter-spacing: -0.04em;
	background: #61564b;
	border: 0;
	width: 200px;
}

#sample4_postcode {
	width: 320px;
	margin-right: 30px;
}

#sample4_roadAddress {
	margin-left: -20px;
}

#sample4_jibunAddress {
	margin-left: 10px;
	margin-right: 10px;
	width: 190px;
}

#sample4_extraAddress {
	width: 175px;
	margin-left: 35px;
}

#sample4_detailAddress {
	width: 375px;
	margin-right: 65px;
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

input:focus {
	border: 1px solid red;


</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var roadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 참고 항목 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode;
						document.getElementById("sample4_roadAddress").value = roadAddr;
						document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

						// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
						if (roadAddr !== '') {
							document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						} else {
							document.getElementById("sample4_extraAddress").value = '';
						}

						var guideTextBox = document.getElementById("guide");
						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							guideTextBox.innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';
							guideTextBox.style.display = 'block';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							guideTextBox.innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
							guideTextBox.style.display = 'block';
						} else {
							guideTextBox.innerHTML = '';
							guideTextBox.style.display = 'none';
						}
					}
				}).open();
	}
</script>

<script type="text/javascript">
	$(function() {

		$("#alert-success").hide();
		$("#alert-danger").hide();

		$('.email3').change(function() {
			$(".email3 option:selected").each(function() {

				console.log($(this).val());

				if ($(this).val() == '1') { //직접입력한 경우
					$(".emailBox2").val('');
					$(".emailBox2").attr("disabled", false);
				} else {
					$(".emailBox2").val($(this).text());
					$(".emailBox2").attr("disabled", true);

				}

			});

		});//이메일값 넣기

		$("input").keyup(function() {
			var pwd1 = $("#password1").val(); //pwd1의 값
			var pwd2 = $("#password2").val(); //pwd1의 값

			if (pwd1 != "" || pwd2 != "") {
				if (pwd1 == pwd2) {
					$("#alert-success").show();
					$("#alert-danger").hide();
					$("#submit").removeAttr("disabled");
				} else {
					$("#alert-success").hide();
					$("#alert-danger").show();
					$("#submit").attr("disabled", "disabled");
				}
			}

		});

		$('#userId').keyup(
				function() {

					// console.log(this.value);
					for (var i = 0; i < this.value.length; i++) {

						var ch = this.value.charAt(i);
						//console.log(ch)

						if (!(ch >= '0' && ch <= '9')
								&& !(ch >= 'a' && ch <= 'z')
								&& !(ch >= 'A' && ch <= 'Z')) {

							//console.log("영어 대소문자, 숫자만")

							$('#idCheck').text("영어 대소문자와 숫자만 입력 가능합니다.")
							break;
						} else {
							$('#idCheck').text("")

						}
						//if end
					}//for end
				});//아이디 유효성 end
	});

	//아이디 유효성 검사

	function confirmId() {

		if (id = "") {
			alert("ID를 입력하세요");
			return;
		}

		url = ("idCheck1.jsp?id=" + document.getElementById("userId").value);
		open(
				url,
				"confirm",
				"toolbar = no, location = no, status = np, menubar = no, width = 550, height=300, left=700, top=250, menubar =no, overflow-x:hidden,overflow-y:hidden ");
	}

	//이메일 인증번호 받기
	function emailCheck() {
		/* console.log("ok") */;

		if (email = "") {
			alert("email 입력하세요");
			return;
		}

		url = ("mailsend.jsp?mail=" + document.getElementById("email1").value
				+ "@" + document.getElementById("email_select").value);
		open(
				url,
				"confirm",
				"toolbar = no, location = no, status = np, menubar = no, width = 550, height=650, left=700, top=250, menubar =no, overflow-x:hidden,overflow-y:hidden ");
	}

	//빈칸 유효성 검사
	function check() {
		if ($.trim($("#userId").val()) == "") {
			alert("아이디를 입력하세요 ");
			$("#userId").val("").focus();
			return false;
		}
		if ($.trim($("#password1").val()) == "") {
			alert("비밀번호를 입력하세요 ");
			$("#password1").val("").focus();
			return false;
		}
		if ($.trim($("#password2").val()) == "") {
			alert("비밀번호를 체크하세요 ");
			$("#password2").val("").focus();
			return false;
		}
		if ($.trim($("#realName").val()) == "") {
			alert("이름을 입력하세요 ");
			$("#realName").val("").focus();
			return false;
		}
		if ($('input:radio[name=radios]').is(':checked') == false) {
			alert("성별을 선택하세요 ");
			$("#radio1").val("").focus();
			return false;
		}
		if ($.trim($("#birth").val()) == "") {
			alert("생년월일을 입력해주세요 ");
			$("#birth").val("").focus();
			return false;
		}
		/* 	if($.trim($("#email1").val()) == ""){
		 alert("이메일을 입력하세요 ");
		 $("#email1").val("").focus();
		 return false;
		 }
		 if($.trim($("#email2").val()) == ""){
		 alert("이메일을 입력하세요 ");
		 $("#email2").val("").focus();
		 return false;
		 }  */
		if ($.trim($(".hpBox").val()) == "") {
			alert("핸드폰 번호를 입력하세요 ");
			$(".hpBox").val("").focus();
			return false;
		}
		if ($.trim($("#sample4_detailAddress").val()) == "") {
			alert("주소를 입력하세요 ");
			$("#sample4_detailAddress").val("").focus();
			return false;
		}

	}
</script>
<script type="text/javascript"></script>
<style type="text/css">

</style>

</head>
<body>
	<div id="top">
		<jsp:include page="../etc/sf_nav.jsp"></jsp:include>
	</div>
	<div id="thisContent">
	<div class="head">
		<h1 style="font-size: 29px">회원 가입</h1>
	</div>
	<ul class="thisUl">
		<li class="topLi" style="left: 100px"><i class="ibefore"></i>
			<h2>약관동의</h2></li>
		<li class="topLi" style="left: 280px"><i class="ibefore"
			style="background-color: #3E66AE"></i>
			<h2>정보입력</h2></li>
		<li class="topLi" style="left: 460px"><i></i>
			<h2>가입완료</h2></li>
	</ul>
	<div class="box-container">
		<div class="topText" style="height: 50px">
			<h1 class="mainTitle">회원정보를 입력해주세요.</h1>
			(필수)
		</div>
		<!-- form box 회원가입정보입력 부분 -->
		<form method="post" action="join1Ok.jsp" onsubmit="return check()"
			accept-charset="utf-8" class="form-box">

			<table class="table input_table">

				<tr>
					<th><span>구분</span></th>
					<td><span class="choiceTitle">개인</span></td>
				</tr>
				<tr>

					<th><span>아이디</span></th>
					<td><input name="userId" id="userId" type="text"
						placeholder="아이디는 영문, 숫자를 혼합하여  6~16자로 사용해 주세요" class="groupNum" />
						<input type="button" id="btnCheck" value="중복 체크"
						onclick="confirmId()" name="confirm_id" class="groupBtn" /> <input
						type="hidden" name="idDuplication" value="idUncheck" />
						<div id="idCheck" style="color: red"></div></td>
				</tr>
				<tr>
					<th><span>비밀번호</span></th>
					<td><input type="password"
						title="비밀번호 입력. 비밀번호는 영문, 숫자를 혼합하여  6~16자로 사용해 주세요."
						placeholder="비밀번호는 영문, 숫자를 혼합하여  6~16자로 사용해 주세요." name="password1"
						id="password1" maxlength="16" class="basic"></td>
				</tr>
				<tr>
					<th><span>비밀번호 확인</span></th>
					<td><input type="password" title="비밀번호를 한번 더 입력해주세요."
						placeholder="비밀번호를 한번 더 입력해주세요." name="password2" id="password2"
						maxlength="16" class="basic">
						<div class="alert alert-success" id="alert-success">비밀번호가
							일치합니다.</div>
						<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지
							않습니다.</div></td>
				</tr>
				<tr>
					<th><span>이름</span></th>
					<td><input name="name" type="text" class="basic" id="realName"></td>
				</tr>
				<tr>
					<th><span>성별</span></th>
					<td><input type="radio" name="radios" id="radio1" value="1" />
						<label for="radio1" class="genderC"><span class="gender"
							style="width: 40px">남자</span></label> &nbsp;&nbsp; <input type="radio"
						name="radios" id="radio2" value="2" /> <label for="radio2"
						class="genderC"><span class="gender">여자</span></label></td>
				</tr>
				<tr>
					<th><span>생년월일</span></th>
					<td><input type="text" name="birth1" class="basic" id="birth"
						placeholder="6자리로 입력해주세요 (ex)900101)" maxlength="6"
						onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" /></td>
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
					</select> <input type="button" id="submit" value="이메일 인증"
						onclick="emailCheck()" name="passWordOk" />
						</div></td>
				</tr>
				<tr>
					<th><span>휴대폰번호</span></th>
					<td><select name="hp1" class="hpAll">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
					</select> - <input name="hp2" type="text" maxlength="4" class="hpBox"
						onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"> -
						<input name="hp3" type="text" maxlength="4" class="hpBox"
						onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>
				</tr>


				<tr>
					<th><span>주소</span></th>
					<td>
						<div style="margin-left: 40px">
							<input type="text" id="sample4_postcode" class="d_form mini"
								placeholder="우편번호" name="pcode"> <input type="button"
								onclick="sample4_execDaumPostcode()" value="우편번호 찾기"
								class="d_btn"> <br /> <input type="text"
								id="sample4_roadAddress" class="d_form std" placeholder="도로명주소"
								style="width: 350px" name="addr1"> <input type="text"
								id="sample4_jibunAddress" class="d_form std" placeholder="지번주소"
								name="addr2"> <span id="guide"
								style="color: #999; display: none"> </span> <input type="text"
								id="sample4_extraAddress" class="d_form" placeholder="참고항목"
								name="addr3"> <input type="text"
								id="sample4_detailAddress" class="d_form" placeholder="상세주소"
								name="addr4">
						</div>
					</td>

				</tr>

			</table>
			<!-- table-input 종료-->

			<!-- 회원가입 확인버튼 -->
			<div class="btn-group">
				<input type="submit" value="회원가입" class="btn" id="final" />
			</div>
		</form>
		<div class="help-join">
			<img src="../image/bottom.png" id="bottomImg" alt="">
		</div>
		<!-- form-box end -->
	</div>



	</div>

	<div id="footer">
		<jsp:include page="../etc/project_footer.jsp" ></jsp:include>
	</div>
</body>
</html>