<%@page import="com.exam.safety.dao.board_QA_Dao"%>
<%@page import="com.exam.safety.dto.board_QA_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* String mem = (String)session.getAttribute("member");
	if(mem == null) {
		response.sendRedirect("../login/safetyLogin.jsp");
	} */

	/* 페이징 처리 */

	// 현재 페이지(currentPage) 얻어오기
	String cp = request.getParameter("cp");
	String cp1 = request.getParameter("cp");
	String sel = request.getParameter("ri_in_sel");

	int currentPage = 0;
	int currentPage1 = 0;

	if(cp != null) {
		currentPage = Integer.parseInt(cp);
	}else {
		currentPage = 1;
	}
	if(cp1 != null) {
		currentPage1 = Integer.parseInt(cp);
	}else {
		currentPage1 = 1;
	}

	board_QA_Dao dao = new board_QA_Dao();

	// 총 게시글 수
	int totalCount = dao.getTotalCount();
	int selCount = dao.getSelCount(sel);

	/* System.out.println(sel);
	System.out.println(selCount); */
	// 한 페이지당 레코드 수 : 5
	int recordByPage = 5;

	// 총 페이지 수
	int totalPage = (totalCount/recordByPage == 0) ? totalCount/recordByPage : totalCount/recordByPage+1;	// 삼항연산자
	int selPage = (selCount/recordByPage == 0) ? selCount/recordByPage : selCount/recordByPage+1;			// 검색을 위한 삼항연산자
	/* System.out.println(selPage); */

	// 현재 페이지 - 레코드 시작번호
	int startNo = (currentPage-1)*recordByPage+1;
	int startNo1 = (currentPage1-1)*recordByPage+1;

	// 현재 페이지 - 레코드 끝번호
	int endNo = currentPage*recordByPage;
	int endNo1 = currentPage1*recordByPage;
	//System.out.println(sel);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의하기</title>
<!-- inquiry.jsp -->
<!-- <link rel="stylesheet" href="../css/main.css" /> -->
<link rel="stylesheet" href="../css/inquiry.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">


	function selectData(frm){
		if(frm.ri_in_sel.value == "") {
			alert("검색 단어를 입력하세요!!");
			frm.ri_in_sel.focus();
			return;
		}
		frm.submit();

	}

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
					<jsp:include page="backBoard_left.jsp"></jsp:include>

					<div class="boardBack_right">
					<h1>1:1 문의</h1>
						<jsp:include page="backBoard_right.jsp"></jsp:include>
						<div class="right_inner">
							<span>문의하신 내용은 평일 근무일 기준 익일까지 답변됩니다.</span>
							<input type="button" value="문의하기" id="inquiryBt" onclick="location.href='boardWrite.jsp'"/>

							<table id="right_inner_table">
								<tr>
									<th><span>No</span></th>
									<th><span>후원분야</span></th>
									<th><span>제목</span></th>
									<th><span>후원신청일</span></th>
									<th><span>상태</span></th>
								</tr>
								<%
									int cnt = dao.getTotalCount();
															if(cnt == 0) {
								%>
								<tr class= "right_inner_qrow">
									<td colspan="5">
										<div>문의하신 내역이 없습니다.</div>
									</td>

								</tr>
								<%
									}
															else {
								%>

								<!--  사용자가 작성한 게시글을 전부 출력해보세요 -->
								<%
									/* if(sel == null) { */
															ArrayList<board_QA_DTO> list = dao.getAllData(startNo, endNo, sel);
															for (board_QA_DTO vo : list) {
								%>
								<tr id = "mng">
										<td class="col1"><span><%=vo.getQa_bno()%></span></td>
										<td class="col2"><span><%=vo.getQa_inquiry() %></span></td>
										<td class="col3">
											<a href="boardWrite_de.jsp?bno=<%= vo.getQa_bno() %>">
												<span><%=vo.getQa_title()%></span>
											</a>
											<%-- <input type="button" value="관리자 답변" id="manager" onclick="location.href='boardWrite_de_manager.jsp?bno=<%= vo.getQa_bno()%>'"/> --%>
										</td>
										<td class="col4"><span><%=vo.getQa_date()%></span></td>
										<td class="col5">
											<span>
												<%
													if(vo.getQa_status() == 1) {
												%>
												답변완료
												<%
													}else {
												%>
												답변대기
												<%
													}
												%>
											</span>
										</td>

								</tr>



						        <%
										}

									//}
									/* else {
						        		ArrayList<board_QA_VO> li = dao.selectData(sel);
										for (board_QA_VO vo1 : li) {

											System.out.println(vo1.getQa_bno());
											System.out.println(vo1.getQa_title()); */

								%>
								<%--  <tr id = "mng">
									<a href="boardWrite_detail.jsp?bno=<%= vo1.getQa_bno() %>"></a>
										<td class="col1"><span><%=vo1.getQa_bno()%></span></td>
										<td class="col2"><span><%=vo1.getQa_inquiry() %></span></td>
										<td class="col3"><span><%=vo1.getQa_title()%></span></td>
										<td class="col4"><span><%=vo1.getQa_date()%></span></td>
										<td class="col5"><span><%=vo1.getQa_status()%></span></td>

								</tr>
								<%
											}
										}
									}

								%> --%>
								<%
								}
								%>

							</table>

							<%
							if(sel == null){
								/* System.out.println("null"); */
							%>


							<div class="page">
								<%
					      			for(int i = currentPage-10; i <= currentPage+10; i++) {
					      				if(i <= 0) {
					      					continue;
					      				}else if (i > totalPage) {
					      					break;
					      				}else {

					      		%>
					      		<a href="inquiry.jsp?cp=<%= i %>"><span id="page">[<%= i %>]</span></a>

					      		<%
					      				}	// if() end

					      			}	// for() end
					      		%>
							</div>

							<%
								}else{
							%>

							<div class="page">
								<%
									for(int i = currentPage1-10; i <= currentPage1+10; i++) {
									    if(i <= 0) {
									      	continue;
									    }else if (i > selPage) {
									      	break;
									    }else {

								%>
								<a href="inquiry.jsp?cp=<%= i %>&ri_in_sel=<%= sel %>"><span id="page">[<%= i %>]</span></a>
								<%
										}	// if() end

									 }	// for() end
									 %>
							</div>
								<%
								}
								%>


							<div class="ri_in_div">
								<form action="inquiry.jsp" name="frm">
									<input type="text" name="ri_in_sel" id="ri_in_sel" placeholder="검색어를 입력해주세요." />
									<input type="image" src="../image/select.png" alt="" id="selbt" onclick="selectData(frm)" />
								</form>
							</div>

							<input type="button" value="관리자 페이지" onclick="location.href='inquiry_manager.jsp'" />
						</div>
					</div>
				</div>
			</div>

			<jsp:include page="../etc/project_footer.jsp"></jsp:include>

	</div>

</body>
</html>