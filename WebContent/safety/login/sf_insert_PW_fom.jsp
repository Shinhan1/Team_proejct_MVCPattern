<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>비밀번호 변경</title>
<link rel="stylesheet" href="../css/sf_insert_PW_fom.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

$(function() {
	document.frm.id.focus();
	$('.insert_btn').click(function() {
		if (document.id.value == "") { alert("아이디를 입력해 주세요."); document.frm.id.focus(); return; }
		if (document.pw.value == "") { alert("비밀번호를 입력해 주세요."); document.frm.pw.focus(); return; }

		document.frm.action="safetyLogin_OK.jsp"
			document.frm.method="get";
			document.frm.submit();
	/* 	$('.login_btn').submit();
		console.log("전송"); */
	});





	});
</script>
</head>

<body>
<div class="sf_insert_PW_fom_full">


<jsp:include page="../../safety/etc/sf_nav.jsp" />
	<div class="inner"> <!-- 로그인   -->
	 <div>  <!-- title -->
   	  <h1 id="PW_Find_title"> 비밀번호 변경</h1>
	 </div>

	  <div>
		<form action="sf_insety_PW_OK.jsp"  method="get" name="frm" id="frm">
			<input type="text" name="id" id="id" placeholder="현재 아이디" autofocus="autofocus" style="padding-left: 10px;" required  > <br />
			<input type="password" name="pw"id="pw" placeholder="변경할 비밀번호"  style="padding-left: 10px;" required>

			<input type="button" value="변경하기" class="insert_btn"  >


		</form>
	  </div>

	</div>
	<jsp:include page="../etc/project_footer.jsp" />
</div>




</body>

</html>

