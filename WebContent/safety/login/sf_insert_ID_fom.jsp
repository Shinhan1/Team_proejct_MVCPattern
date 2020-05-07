<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>sf_insert_ID_fom.jsp</title>
<link rel="stylesheet" href="../css/sf_find_ID.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

$(function() {
	document.return_btn.focus();


	$('.SignUp_btn').click(function() {
		location="safetyLogin.jsp";

	});

});


</script>
</head>

<body>
<div class="sf_insert_ID_fom_full">
<jsp:include page="../../safety/etc/sf_nav.jsp" />
	<div class="inner"> <!-- 로그인   -->
	 <div>  <!-- title -->
   	  <h1 id="ID_Find_title">세이프티 회원님의 아이디는</h1>
	 </div>
	  <div>
				<h1 class="OK">dddd 입니다.</h1>


			<input type="button" value="로그인 돌아가기" class="return_btn"  >



	  </div>

	</div>
	<jsp:include page="../etc/project_footer.jsp" />
</div>






</body>

</html>

