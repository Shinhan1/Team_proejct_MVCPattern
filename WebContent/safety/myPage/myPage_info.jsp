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
						<form action="modify1Ok.jsp" name="frm">
							<input type="hidden" name="bno" value="no_value" />
								<%

									for (Join1_VO vo : list) {

								%>
								<table class="inquiry_Table">

									<tr>
										<th><span>성명</span></th>
										<td><input type="text" name="name" class="modifyInfo" value="<%= vo.getName() %>" /></td>

									</tr>
									<tr>
										<th><span>생년월일</span></th>
										<td><input type="text" name="birth" class="modifyInfo" value="<%= vo.getBdate() %>"/></td>

									</tr>
									<tr>
										<th><span>성별</span></th>
										<td>
											<span>
												<%
													if(vo.getGender()==1) {
												%>
												남
												<%
													}else {
												%>
												여
												<% } %>
											</span>
										</td>

									</tr>


									<tr class="onetr">
										<th><span>비밀번호</span></th>
										<td><input type="password" name="password" class="modifyInfo" style="font-family:'Godic';" /></td>

									</tr>
									<tr class="onetr">
										<th><span>휴대폰 번호</span></th>
										<td><input type="text" name="tel" class="modifyInfo" value="0<%= vo.getPhone() %>" /></td>

									</tr>
										<%
										request.setCharacterEncoding("UTF-8");
										String email = request.getParameter("email");

										%>

									<tr>
										<th><span>이메일</span></th>
										<td><input type="text" name="email" id="" class="modifyInfo" value="<%=email%>" readOnly/></td>
									</tr>
								</table>
								<%
									}
								%>
								<div class="table_button">

									<input type="submit" value="회원정보수정"
										class="table_Bt second" />
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