<%@page import="com.exam.safety.dao.board_QA_Dao"%>
<%@page import="com.exam.safety.dto.board_QA_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
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
<title>마이페이지 - FAQ</title>
<!-- myPage_FAQ.jsp -->
<!-- <link rel="stylesheet" href="../css/main.css" /> -->
<link rel="stylesheet" href="../css/myPage_FAQ.css" />
<link rel="stylesheet" href="../css/footer1.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">

$(function() {

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
		<jsp:include page="../etc/sf_nav.jsp"></jsp:include>


		<div class="main">

				<div class="customer">

				</div>

				<div class="boardBack">
					<jsp:include page="backBoard_left.jsp"></jsp:include>

					<div class="boardBack_right">
						<jsp:include page="backBoard_right.jsp"></jsp:include>

						<div class="bb_div">
							<ul id="bb_ul">
								<a href="myPage_FAQ.jsp" class="bb">
									<li class="bb_li">전체</li>
								</a>
								<a href="myPage_FAQ.jsp?cctxt=후원관련" class="bb">
									<li class="bb_li">후원관련</li>
								</a>
								<a href="myPage_FAQ.jsp?cctxt=결제관련" class="bb">
									<li class="bb_li">결제관련</li>
								</a>
								<a href="myPage_FAQ.jsp?cctxt=기타" class="bb">
									<li class="bb_li">기타</li>
								</a>
								<a href="inquiry.jsp" class="bb">
									<li class="bb_li" id="bb1_li">나의 문의</li>
								</a>
							</ul>
						</div>

						<form action="myPage_FAQ.jsp" name="frm" >
							<div class="tt">
								<div class="tx">
								<input type="text" name="cctxt" id="cctxt" placeholder="궁금한 점이 있다면 무엇이든 검색해보세요." />
								</div>
								<div class="imgBt">
								<input type="image" src="../image/select.png" alt="" name="selbt" id="selbt" onclick="selectData(frm)" />
								</div>
							</div>
						</form>

						<jsp:include page="FAQ_table_mypage.jsp"></jsp:include>
					</div>
				</div>
			</div>


	</div>
	<jsp:include page="../etc/project_footer.jsp"></jsp:include>

</body>
</html>