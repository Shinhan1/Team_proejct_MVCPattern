<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>safetyFind_PW</title>


<link rel="stylesheet" href="../css/safetyFind_PW.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script type="text/javascript">
$(function() {

	$('#eamilinput').hide();
	$('#namefd_pw_email').hide();
	$('.btn2').hide();
	$('#tapbtn1').click(function() {
		$('#namefd_pw_hp').show();
		$('#eamilinput').hide();
		$('#namefd_pw_email').hide();
		$('#hpinput').show();
		$('.btn1').show();
		$('.btn2').hide();
	});

	$('#tapbtn2').click(function() {
		$('#namefd_pw_email').show();
		$('#namefd_pw_hp').hide();
		$('.btn1').hide();
		$('.btn2').show();
		$('#hpinput').hide();
		$('#eamilinput').show();
	});
	$('.btn1').click(function() { /* 휴대폰 번호로 비밀번호 찾기 */
		if (document.frm1.name.value == "") { alert("아이디를 입력해 주세요."); document.frm1.id.focus(); return; }
		if (document.frm1.hpchoice.value == "") { alert("휴대폰번호를 입력해 주세요."); document.frm1.pw.focus(); return; }
		if (document.frm1.hpchoice2.value == "") { alert("휴대폰번호를 입력해 주세요."); document.frm1.pw.focus(); return; }
		document.frm1.action="mailsend2.jsp"
		document.frm1.method="get";  /* 확인 완료후 post로 변경 */
		document.frm1.submit();

	});
 	$('.btn2').click(function() {/* 이메일로 아이디 찾기  인증 필수 */
		if (document.frm2.name.value == "") { alert("아이디를 입력해 주세요."); document.frm2.id.focus(); return; }
		if (document.frm2.email1.value == "") { alert("이메일를 입력해 주세요."); document.frm2.pw.focus(); return; }
		if (document.frm2.email2.value == "") { alert("이메일를 입력해 주세요."); document.frm2.pw.focus(); return; }

		document.frm2.action="mailsend2.jsp"
		document.frm2.method="get";/* 확인 완료후 post로 변경 */
		document.frm2.submit();

	});



});
</script>
</head>
<body>
<div class="safetyFind_PW_full">
<jsp:include page="../etc/sf_nav.jsp" />
<div id ="inner">
	<div id="title">
		<h1>비밀번호 찾기</h1>
		<h5>본인인증을 통해 비밀번호를 찾으실 수 있습니다.</h5>
	</div>

	<div id="tapdiv">
		<input type="button" value="휴대폰 번호 찾기" id="tapbtn1"/>
		<input type="button" value="이메일로 찾기" id="tapbtn2"/>
	</div><!--  tapdiv end-->



	<form action="safetyFind_PW_OK1.jsp" name ="frm1">
		<div id="namefd_pw_hp">
		<input type="text" title="아이디를 입력하세요." placeholder="아이디" name="id" id="name" autofocus="autofocus" style="padding-left: 10px;">

		</div>

		<div id="hpinput">
        	<select name="hp1" id="hpchoice" style="padding-left: 5px;">
        		<option value="010" >010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
        	</select>
				<input type="text" placeholder="'_' 제외하고 숫자만 입력" title="'_' 제외하고 숫자만 입력" name ="hp2" id="hpchoice2"
				style="padding-left: 10px;"/>

        </div> <!-- hp find end-->
        </form>
	<form action="mailsend2.jsp" name ="frm2">
	   <div id="namefd_pw_email">
		<input type="text" title="아이디를 입력하세요." placeholder="아이디" name="id" id="name" autofocus="autofocus" style="padding-left: 10px;">

		</div>
        <div id="eamilinput">
        	<input class="email1 input-email" type="email" name="email1" id="email1" title="이메일를 입력해주세요."

        	style="padding-left: 10px;">
        	@
        	<input class="email2 input-email" type="email" name="email2" id="email2" title="이메일 주소를 입력해주세요." style="padding-left: 10px;">
        	<select class="email3" title="이메일주소 선택" name="email_select" id="email_select" onchange="$('#email2').val(this.value)">
            	<option value="" selected="selected">직접입력</option>
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
				<option value="naver.com">naver.com</option>
				<option value="netian.com">netian.com</option>
				<option value="hanmir.com">hanmir.com</option>
				<option value="chollian.net">chollian.net</option>
				<option value="hitel.net">hitel.net</option>
				<option value="hotmail.com">hotmail.com</option>
				<option value="orgio.net">orgio.net</option>
				<option value="hanmail.net">hanmail.net</option>
         	</select>

        </div> <!-- hp find end-->

		<div>
			<input type="button" value="인증하기" class ="btn1" />
				<input type="button" value="메일인증" class ="btn2" />
		</div>
		</form>
	</div> <!--inner end-->
	<jsp:include page="../etc/project_footer.jsp" />
</div>
</body>
</html>
