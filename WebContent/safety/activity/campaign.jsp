<%@page import="com.exam.safety.dto.CampaignVO"%>
<%@page import="com.exam.safety.dao.CampaignDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

	String cp = request.getParameter("cp");

	int currentPage = 0;

	if(cp!=null){
		currentPage = Integer.parseInt(cp);
	}else {
		currentPage = 1;
	}

	CampaignDAO dao = new CampaignDAO();


	int totalCount = dao.getTotalCount();


	int recordByPage = 6;

	// 총 페이지 수
	int totalPage =
		(totalCount%recordByPage==0)?totalCount/recordByPage:totalCount/recordByPage+1;





	int startNo = (currentPage-1)*recordByPage+1;


 	int endNo = currentPage*recordByPage;


%>
<html>
<head>
<meta charset="UTF-8">
<title>캠페인 정보</title>
<style type="text/css">

	* {font-family: "나눔스퀘어";}

	body {

		margin: 0;

	}



	#contents{
		width:1200px;
		height: 1200px;
		margin: -100px 0 0 360px;
		background-color: white;
		position: relative; z-index: 2;

	}


	#container{
		width: 1000px;
		margin: auto;
	}



	#camimg{
		width: 300px;
		height: 360px;
	}

	#com{
		width: 300px;
		float: left;
		margin : 50px 0 0 20px;
		border:1px solid #cbcbca;

	}




	.p1{

		text-align: center;
		border-top:1px solid #cbcbca;
		width: 100%;
		height: 60px;
		font-size: 15px;
		font-weight: bold;

	}
	.p2{

		text-align: center;
		width: 100%;
		height: 60px;
		font-size: 20px;

	}

	table {
		width: 1000px;
		margin: 0 auto;
	}

	table, tr, th, td {
		border-collapse: collapse;

	}

	#pageList{
		text-align: center;

	}

	.page {
		width:8px;
		height:8px;
		margin-right :10px;
		padding : 2px;
		border: 1px solid white;
		background-color: #5CD1E5;
		display: inline-block;
		border-radius: 50%;
	}

	#paging {
		padding-top: 1200px;
	}








</style>
<%-- <script type="text/javascript">
	var v = <%=request.getParameter("cp")%>

	$(document).ready(function(){
		$(".page").click(function () {
			$().css("width", "11px");
			$(".page").css("heigt", "11px");

		});

	});




</script> --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="../etc/dona.jsp" />
	<div>
		<jsp:include page="../etc/sf_nav.jsp"></jsp:include>
	</div>



	<div style="width: 1920px;">
	<div style="height: 80px;"></div>
	<div style="background-image: url(../image/back10.jpg;); padding-top: 110px; box-sizing: border-box; width: 1920px; height: 400px;
	 text-align: center; ">

			<h1>아동의 삶의 질을 높이고 권리를 지키는<br />
			<span style="color:#4364ae;">세이브더칠드런</span> 캠페인에 참여해주세요!</h1>

	</div>

	<div id="contents">
		<div id="container">
		<%

			ArrayList<CampaignVO> list = dao.getAllData(startNo, endNo);

			for(CampaignVO vo : list) {

		%>
		<div id="com">

			<a href="<%=vo.getCamlink() %>?bno=<%=vo.getBno() %>">
				<img id="camimg" src="../<%=vo.getCamimg() %>" alt="<%=vo.getCamtitle() %>" />
			</a>
			<div class="p1" style="padding-top: 30px;"><%=vo.getCamtitle() %></div>
			<div class="p2"><%=vo.getCamcontents() %></div>


		</div>

		<%
			}
		%>
	</div>
	<div id="paging">
	<table>
	<tr>
			<td id="pageList">
				<%
					for(int i=currentPage-3; i<=currentPage+3; i++){
						if(i<=0){
							continue;
						}else if(i>totalPage){
							break;
						}else {
				%>

				<a href="campaign.jsp?cp=<%=i %>"><span class="page"></span></a>
				<%
					}// if end

				}// for end

				%>
			</td>
		</tr>
	</table>
	</div>
	<div>
	<a href="campaign.jsp?cp=<%=currentPage+1 %>"><div style=" margin:-600px -40px 0 0; width: 70px; height: 70px;float: right;">
		<img src="../image/right.png" alt="" style="width: 100%; height: 100%;" />
	</div></a>
	<a href="campaign.jsp?cp=<%=currentPage-1 %>"><div style=" margin:-600px 0 0 -40px; width: 70px; height: 70px;float: left;">
		<img src="../image/left.png" alt="" style="width: 100%; height: 100%;" />
	</div></a>
	</div>

	<div style="float: right; margin-right: 150px;"><a href="camwrite.jsp"><input style="width: 100px; height: 30px;" type="button" value="등록"/></a></div>

	</div>
</div>
<jsp:include page="../etc/project_footer.jsp"></jsp:include>
</body>
</html>


