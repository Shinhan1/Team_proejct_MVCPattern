<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>safetyFind_PW</title>

<style type="text/css">
.safetyFind_PW_full {
    width: 1920px;
    height: 1200px;
    background-color: #e2e7e9;
}
* {
    margin: 0;
    padding: 0;
    font-family: "나눔스퀘어";
    font-size: 16px;
}
#inner {
    background-color: white;
    margin-top: 200px;
    margin-left: 700px;
    width: 600px;
    height: 600px;
    border: 1px solid #cbcbca;
    position: absolute;}
    
h1 {
	text-align: center;
	margin-top: 70px;
	size: 30px;
	font-size: 30px;
	font-weight: 900;
	letter-spacing: -2px;
}

#title {
	width: 600px;
	height: 60px;
}

h5 {
	margin-top: 10px;
	text-align: center;
	margin-bottom: 20px;
}

#email {
	text-align: center; margin-left : 85px;
	margin-top: 20px;
	width: 410px;
	height: 70px;
	border: 1px solid #cbcbca;
	margin-left: 85px;
}
#realNum {
	text-align: center; margin-left : 85px;
	margin-top: 20px;
	width: 410px;
	height: 70px;
	border: 1px solid #cbcbca;
	margin-left: 85px;
}

#tapdiv {
	margin-left: 85px;
	margin-bottom: 10px;
	width: 100px;
	height: 60px;
	border: 1px solid #cbcbca;
	margin-top: 30px;
}

#tapbtn1 {
	width: 210px;
	height: 60px;
	border: white;
	float: left;
	background-color: white;
}

#tapbtn1:hover {
	background-color: #ababab;
	color: white;
}

#tapbtn2 {
	width: 100px;
	height: 60px;
	border: white;
	background-color: white;
}

#tapbtn2:hover {
	background-color: #ababab;
	color: white;
}

#hpchoice {
	margin-bottom: 10px;
	width: 50px;
	height: 50px;
	border: 0px solid #cbcbca;
}

#namefd {
	margin-top: 20px;
}

#eamilinput {
	margin-left: 85px;
	margin-bottom: 10px;
	border: 1px solid #cbcbca;
	width: 420px;
	height: 50px;
}

h6 {
	margin-top: 5px;
	margin-left: 85px;
	color: red;
	font-size: 14px;
}

.btn {
	width: 420px;
	height: 70px;
	margin-left: 85px;
	margin-top: 0px; 
	border-radius : 5px 5px 5px 5px;
	border-style: none;
	border: 1px solid #4364ae;
	font-size: 16px;
	background-color: white;
	font-family: "나눔스퀘어";
	font-weight: bold;
	color: #4364ae;
	text-align: center;
	border-radius: 5px 5px 5px 5px;
}

.btn:hover { /* 마우스 오버 */
	background-color: #4364ae;
	color: white;
}

#email1 {
	border: 0px;
	border-color: white;
	width: 90px;
	height: 49px;
}

#email2 {
	border: 0px;
	border-color: white;
	width: 150px;
	height: 49px;
}

#email_select {
	width: 130px;
	height: 49px;
	border: 0px;
}

#hpinput {
	margin-left: 85px;
	margin-bottom: 5px;
	border: 1px solid #cbcbca;
	width: 420px;
	height: 50px;
}

div {
    display: block;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/httpRequest.js"></script>
<script type="text/javascript">
		$(function(){
			
			$('#send').click(function(){
				var email  = $('#email').val();
				 console.log(email); 
				var params = "email="+encodeURIComponent(email);
				/* console.log(params); */
				sendRequest('sendOk.jsp' , params, callback, 'GET');
				
			});
			
			
			
		});
		
	var key = "";
	
	function callback() {
		
		if(xhr.readyState==4){
			if(xhr.status==200){
				console.log("callback 함수 실행중");
				console.log("xhr.readystate함수 실행중"); 
				alert("인증번호를 전송했습니다.");
			 key = xhr.responseText;	
			console.log(key);
			
			}
		}
	}
	<%
			request.setCharacterEncoding("UTF-8");
			String email = request.getParameter("email");
				
			%> 
	
	function numCk(){
		
		if($.trim($("#realNum").val()) != key.trim()){
			alert("잘못된 번호입니다.");
			return false;
			
		}else if ($.trim($("#realNum").val()) == key.trim()){
			var flag = confirm("인증이 완료되었습니다.");
			var email = <%=email%>
			if(flag) {
				$("#no").val(email);
				document.frm.action = "myPage_detail1_1.jsp";
				document.frm.submit();
				
			}
		
	}
	
</script>
</head>
<body>
<div class="safetyFind_PW_full">

<div id ="inner">
	<div id="title">
		<h1>이메일 인증하기</h1>
			<h5>이메일 인증을 통해 회원정보를 수정할 수 있습니다..</h5>
	</div>




		<form method="post" name="authenform" onsubmit="return check();"
			action="MailSend.java">


			<div id="namefd">
				<input type="text" title="이메일" value="<%=email%>" name="authnum"
					id="email" autofocus="autofocus" style="padding-left: 10px;">

				<input type="button" value="인증번호 보내기" class="btn" id="send"/>
			</div>



			<div id="namefd">
				<input type="text" title="인증번호를 입력하세요."placeholder="인증번호를 입력하세요" name="authnum"
					id="realNum" autofocus="autofocus" style="padding-left: 10px;">
			</div>

			<div>
				<input type="button" value="인증번호 확인" class="btn" onclick="numCk()" />
			</div>
		</form>
	</div> <!--inner end-->
</div>
</body>
</html>
