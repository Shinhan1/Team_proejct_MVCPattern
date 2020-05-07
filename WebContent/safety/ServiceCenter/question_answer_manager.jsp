<%@page import="com.exam.safety.dto.board_FAQ_VO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.exam.safety.dao.board_FAQ_Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q & A - 매니저</title>
<!-- <link rel="stylesheet" href="../css/footer.css" /> -->
<!-- question_answer_manager.jsp -->
<link rel="stylesheet" href="../css/question_answer.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script type="text/javascript">
	$(function() {



		$('.ub.second').click(function(){
			location.href = "inquiry.jsp";
		});



		$('.q-row').click(function(){



			// 현재 클릭된 Row(<tr>)
			var tr = $(this);
		    var tridx = $('tr').index($(this))+1;		// 열 인덱스 번호

			var obj = document.getElementById("board");
		    var tds = obj.getElementsByTagName("tr");

			if($(tds[tridx]).css("display") == "none"){
		        $(tds[tridx]).show();
		    }else{
		        $(tds[tridx]).hide();
	 	    }




		});

		/* var obj = document.getElementById("board");
	    var tds = obj.getElementsByTagName("tr");
	    console.log(obj);
	    console.log(tds);
	     */



	});

	function selectData(frm){
		if(frm.cctxt.value == "") {
			alert("검색 단어를 입력하세요!!");
			frm.cctxt.focus();
			return;
		}
		frm.submit();

	}




</script>
</head>
<body>
	<jsp:include page="../etc/dona.jsp"></jsp:include>
	<div class="m">
	<div class="main">
		<jsp:include page="../etc/sf_nav.jsp"></jsp:include>

		<div class="customer">
			<h2>Q & A</h2>

			<form action="question_answer.jsp" name="frm" >
				<div class="tt">
					<div class="tx">
					<input type="text" name="cctxt" id="cctxt" placeholder="궁금한 점이 있다면 무엇이든 검색해보세요." />
					</div>
					<div class="imgBt">
					<input type="image" src="../image/select.png" alt="" name="selbt" id="selbt" onclick="selectData(frm)" />
					</div>
				</div>
			</form>
		</div>

		<div class="boardBack">
			<ul id="bb_ul">
				<a href="question_answer.jsp" class="bb">
					<li class="bb_li">전체</li>
				</a>
				<a href="question_answer.jsp?cctxt=후원관련" class="bb">
					<li class="bb_li">후원관련</li>
				</a>
				<a href="question_answer.jsp?cctxt=결제관련" class="bb">
					<li class="bb_li">결제관련</li>
				</a>
				<a href="question_answer.jsp?cctxt=기타" class="bb">
					<li class="bb_li">기타</li>
				</a>
				<a href="inquiry.jsp" class="bb">
					<li class="bb_li" id="bb1_li">나의 문의</li>
				</a>
			</ul>

			<br /> <br /> <br /> <br />
			<%-- <%
				String sel = request.getParameter("cctxt");
				board_FAQ_Dao dao = new board_FAQ_Dao();
				ArrayList<board_FAQ_VO> list = dao.selectData(sel);

				for(board_FAQ_VO vo : list) {

			%>
			<tr class="q-row" >
					<td class="col1">Q <%= vo.getFaq_inquiry() %></td>
					<td class="col2">[<%= vo.getFaq_subInquiry() %>] <%= vo.getFaq_title() %></td>
					<td class="col3"><img src="../image/down1.png" alt="아래" /></td>
				</tr>
				<tr class="a-row" hidden="hidden" >
					<td colspan="3">
						<div class="a-wrap">
							<h4>A</h4>
						</div>
						<div class="a-contents">
							<textarea name="ct" id="ct" cols="120" rows="" disabled><%= vo.getFaq_contents() %></textarea>
						</div>

					</td>
				</tr>


			<% } %> --%>
			<jsp:include page="FAQ_table_manager.jsp"></jsp:include>
			<div class="addBt">
				<input type="button" id="add" value="등록하기" onclick="location.href='board_FAQ.jsp'"/>
			</div>
			<div class="under_bar">
				<div class="ub first">
					<img src="../image/chat.png" alt="chat" />
					<h3>후원가이드</h3>
					<p>후원이 처음이세요?</p>
					<a href=""> <img src="../image/next1.png" alt=">" />



					</a>

				</div>
				<div class="ub second">
					<img src="../image/inquiry.png" alt="inquiry" />
					<h3>1:1문의</h3>
					<p>원하는 답변이 없나요?</p>
					<a href="inquiry.jsp"> <img src="../image/next1.png" alt=">" />
					</a>
				</div>
				<div class="ub third">
					<img src="../image/call.png" alt="call" />
					<h3>전화문의</h3>
					<p>010-9953-5444</p>
					<!-- <br />(평일 오전9시30분 ~ 오후 6시 30분) -->
				</div>
			</div>
		</div>

	</div>

	<jsp:include page="../etc/project_footer.jsp"></jsp:include>
	</div>

</body>
</html>