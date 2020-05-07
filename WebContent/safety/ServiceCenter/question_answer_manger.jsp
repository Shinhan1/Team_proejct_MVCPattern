<%@page import="com.exam.safety.dao.board_FAQ_Dao"%>
<%@page import="com.exam.safety.dto.board_FAQ_VO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 페이징 처리 */

	// 현재 페이지(currentPage) 얻어오기
	String cp = request.getParameter("cp");

	int currentPage = 0;

	if(cp != null) {
		currentPage = Integer.parseInt(cp);
	}else {
		currentPage = 1;
	}

	board_FAQ_Dao
	dao = new board_FAQ_Dao();

	// 총 게시글 수
	int totalCount = dao.getTotalCount();

	// 한 페이지당 레코드 수 : 10
	int recordByPage = 5;

	// 총 페이지 수
	int totalPage = (totalCount/recordByPage == 0) ? totalCount/recordByPage : totalCount/recordByPage+1;	// 삼항연산자

	// 현재 페이지 - 레코드 시작번호
	int startNo = (currentPage-1)*recordByPage+1;

	// 현재 페이지 - 레코드 끝번호
	int endNo = currentPage*recordByPage;
	String sel = request.getParameter("ri_in_sel");
	//System.out.println(sel);


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q & A - 관리자</title>
<!-- question_answer_manager.jsp -->
<style type="text/css">
	#donaBtn {
      position: fixed;
      bottom: 50px;
      right: 50px;
      opacity: 0.7;
      width: 180px;
      height: 100px;
    }
    .header {
		height: 71px;
		border-bottom: 1px solid #8C8C8C;
	}

/* customer : 메인에 나오는 사진 div */
.customer {
	background-image: url(../image/donation.jpeg);
	background-size: 100% 100%;
	height: 300px;
	padding-top: 100px;
	text-align: center;
}

.customer input:focus {
	outline: none;
}

/* customer안에 있는 input:t */
#cctxt {
	width: 490px;
	height: 30px;
	padding: 10px;
}
/* customer안에 있는 input:b */
#selbt {
	margin-top: 7px;
	width: 40px;
	height: 40px;
	background-color: white;
	margin-left: -52px;
	size: 50% 50%;
	position: absolute;
}
/* boardBack : 사진 div에 살짝 겹쳐진 본 내용이 들어가는 div */
.boardBack {
	background-color: white;
	margin-top: -70px;
	margin-left: 360px;
	padding-top: 40px;
	width: 1200px;
}
/* 내용이 들어가는 div 안에 리스트  */
.boardBack ul {
	margin-left: 100px;
}

/* 리스트 a 태그 */
.bb {
	text-decoration: none;
	font-size: 20px;
	color: black;
}
/* 리스트 a 태그 */
.bb_li {
	border: 1px solid #BDBDBD;
	border-right: hidden;
	width: 180px;
	height: 45px;
	text-align: center;
	padding-top: 20px;
	display: inline;
	float: left;
}

#bb1_li {
	border-right: 1px solid #BDBDBD;
}


table {
	width: 1000px;
	margin: 0 auto;
	border-left: none;
	border-right: none;
	border-collapse: collapse;
}

tr {
	border-bottom: 1px solid #BDBDBD;
}

th {
	padding: 2px;
	font-size: 20px;
	text-shadow: 2px, 2px, 2px, #ffffff;
}



tr {
	height: 70px;
}

/* under_bar : 후원가이드, 1:1문의, 전화문의가 들어간 div */
.under_bar div {
	border: 1px solid #BDBDBD;
	padding: 20px;
	margin-top: 50px;
	margin-right: 40px;
	width: 25%;
	height: 60px;
	float: left;
}

.under_bar div img {
	float: left;
	padding-right: 20px;
}

.under_bar div p {
	font-size: 13px;
}

.under_bar div h3 {
	margin: 0;
}

.under_bar div a img {
	float: right;
	margin-top: -50px;
	margin-right: -30px;
}



#add {
	float: right;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

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
	});
</script>
</head>
<body>
	<jsp:include page="../etc/dona.jsp"></jsp:include>
	<div class="m">
	<div class="main">
		<jsp:include page="../etc/sf_nav.jsp"></jsp:include>


		<div class="customer">
			<h2>Q & A</h2>
			<input type="text" name="cctxt" id="cctxt" placeholder="궁금한 점이 있다면 무엇이든 검색해보세요." />
			<input type="image" src="../image/select.png" alt="" id="selbt" />

			<!-- <input type="button" value="검색" id="selbt"/> -->

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

			<table>
				<!--  사용자가 작성한 게시글을 전부 출력해보세요 -->
				<%

					ArrayList<board_FAQ_VO> list = dao.getAllData(startNo, endNo, sel);
					/* if(sel.equals("")){ */

					for (board_FAQ_VO vo : list) {
				%>

				<tr>
					<td class="col1">Q <%= vo.getFaq_inquiry() %></td>
					<td class="col2">[<%= vo.getFaq_subInquiry() %>] <%= vo.getFaq_title() %></td>
					<td class="col3"><img src="../image/down1.png" alt="아래" /></td>
				</tr>

				<!-- <tr>
					<td width="150px">Q 후원관련</td>
					<td>[후원신청] 정기후원 시, 자동이체를 신청하려면 어떻게 해야하나요? (인증방법 안내)</td>
					<td><img src="../image/down1.png" alt="아래" /></td>
				</tr>
				<tr>
					<td>Q 후원관련</td>
					<td>[후원신청] 해외결연후원에서 일반후원으로 변경을 하려면 어떻게 해야하나요?</td>
					<td><img src="../image/down1.png" alt="아래" /></td>
				</tr>
				<tr>
					<td>Q 결제관련</td>
					<td>[결제] 왜 후원금이 결제되지 않나요?</td>
					<td><img src="../image/down1.png" alt="아래" /></td>
				</tr>
				<tr>
					<td>Q 기타</td>
					<td>[기타] 아이 이름으로 후원신청했는데, 기부금영수증 발급 가능한가요?</td>
					<td><img src="../image/down1.png" alt="아래" /></td>
				</tr>
				<tr>
					<td>Q 기타</td>
					<td>[정보확인] 개인정보(생년월일/성별)가 잘못 되어 있어요.</td>
					<td><img src="../image/down1.png" alt="아래" /></td>
				</tr> -->

				<% } %>

				<!-- <tr>
					<td colspan="3">
						<a href="CustomerCenter1.jsp"><span id="page"></span></a>
					</td>
				</tr> -->
			</table>
			<div class="addBt">
				<input type="button" id="add" value="등록하기" onclick="location.href='board_FAQ'"/>
			</div>

			<div class="under_bar">
				<div class="ub">
					<img src="../image/chat.png" alt="chat" />
					<h3>후원가이드</h3>
					<p>후원이 처음이세요?</p>
					<a href=""> <img src="../image/next1.png" alt=">" />
					</a>

				</div>
				<div class="ub">
					<img src="../image/inquiry.png" alt="inquiry" />
					<h3>1:1문의</h3>
					<p>원하는 답변이 없나요?</p>
					<a href="inquiry.jsp"> <img src="../image/next1.png" alt=">" />
					</a>
				</div>
				<div class="ub">
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