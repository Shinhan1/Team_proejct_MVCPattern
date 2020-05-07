<%@page import="com.exam.safety.dto.Join1_VO"%>
<%@page import="com.exam.safety.dao.Join1_DAO"%>
<%@page import="com.exam.safety.dao.board_QA_Dao"%>
<%@page import="com.exam.safety.dto.board_QA_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	Join1_DAO dao = new Join1_DAO();
	String mem = (String)session.getAttribute("member");
	ArrayList<Join1_VO> list = dao.getAllData1(mem);

%>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 - info</title>
<style type="text/css">
	.right_inner {
		background-color: #F6F6F6;
		padding-bottom: 20px;
		box-sizing: border-box;
	}

	.info {
		text-align: center;
	}

	#p-info {
		padding-bottom: 20px;
		line-height: 25px;
	}

	#ch {
		margin-top: 20px;
		background-color: #555555;
		border: 1px solid #555555;
		color: white;
	}

	#pw {
		padding-left: 10px;
		box-sizing: border-box;

	}

	#pw:focus {
		outline: none;
	}

	#pw, #ch {
		height: 40px;
		width: 300px;
	}
</style>
<!-- myPage_info.jsp -->
<!-- <link rel="stylesheet" href="../css/main.css" /> -->
<link rel="stylesheet" href="../css/myPage_info.css" />
<link rel="stylesheet" href="../css/footer1.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<jsp:include page="../etc/dona.jsp"></jsp:include>
	<div class="m">
		<jsp:include page="../etc/sf_nav.jsp"></jsp:include>


		<div class="main">

				<div class="customer">

				</div>

				<div class="boardBack">
					<jsp:include page="../ServiceCenter/backBoard_left.jsp"></jsp:include>

					<div class="boardBack_right">
						<jsp:include page="../ServiceCenter/backBoard_right.jsp"></jsp:include>
						<div class="right_inner">
						<form action="myPage_BasicOk.jsp">
							<div class="info">
								<p id="p-info">회원님의 개인정보를 안전하게 보호하기 위하여
								<br />비밀번호를 다시 한 번 입력해주세요.</p>
									<div class="pw_div">
										<input type="password" name="pw" id="pw" placeholder="비밀번호를 입력해주세요" style="font-family: 'Godic'" />
									</div>
									<div class="ch_div">
										<input type="submit" value="확인" id="ch" />
								</div>
							</div>

						</form>
					</div>


					</div>
				</div>
			</div>


	</div>
	<jsp:include page="../etc/project_footer.jsp"></jsp:include>

</body>
</html>