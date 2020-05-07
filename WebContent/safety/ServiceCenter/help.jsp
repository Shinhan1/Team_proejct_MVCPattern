<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도움말</title>
<!-- help.jsp -->
<link rel="stylesheet" href="../css/main.css" />
<link rel="stylesheet" href="../css/help.css" />
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
		
		$('.smb').mouseover(function(){
			$(this).css("background-color", "white");
		});
		
		$('.smb').mouseout(function(){
			$(this).css("background-color", "#555");
		});
		
		$('.smb').click(function(){
			sBtn.removeClass("active");
			$(this).parent().addClass("active");

		});
		

	});
</script>
</head>
<body>
	<%
		String pname = "";
		String fno = request.getParameter("fno");
		
		if(fno == null) {
			pname = "personal_infor.jsp";
		}else {
			pname = fno + ".jsp";
		}
	
	%>
	<jsp:include page="../etc/dona.jsp"></jsp:include>
	<div class="m">
	<div class="main">
		<jsp:include page="../etc/sf_nav.jsp"></jsp:include>
		<div class="hide"></div>
		<jsp:include page="../etc/project_subnav.jsp"></jsp:include>
		
		<jsp:include page="<%= pname %>"></jsp:include>
	</div>
	<jsp:include page="../etc/project_footer.jsp"></jsp:include>
	</div>

</body>
</html>