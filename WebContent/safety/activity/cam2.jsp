<%@page import="java.util.ArrayList"%>

<%@page import="com.exam.safety.dto.CampaignVO"%>
<%@page import="com.exam.safety.dao.CampaignDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../css/camcss.css">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String no = request.getParameter("bno");		//삭제 기능 수행 해야하므로 위에 올리기

	CampaignDAO dao = new CampaignDAO();
	CampaignVO vo = new CampaignVO();

	if(no!=null){
		int bno = Integer.parseInt(no);

			vo = dao.getData(bno);
		}else{
			response.sendRedirect("campaign.jsp");	//DB터지면 최초 화면으로 돌려놓기
		}
 %>

 <%

	String cp = request.getParameter("cp");

	int currentPage = 0;

	if(cp!=null){
		currentPage = Integer.parseInt(cp);
	}else {
		currentPage = 1;
	}


	int totalCount = dao.getTotalCount();


	int recordByPage = 5;

	// 총 페이지 수
	int totalPage =
		(totalCount%recordByPage==0)?totalCount/recordByPage:totalCount/recordByPage+1;





	int startNo = (currentPage-1)*recordByPage+1;


 	int endNo = currentPage*recordByPage;


%>
<style type="text/css">
	* {font-family: "나눔스퀘어";}

	#contents{
		width:1200px;
		height: 600px;

	}


	#container{
		width: 1000px;
		margin: 160px 0 0 100px;
	}



	#camimg{
		width: 170px;
		height: 190px;
	}

	#com{
		width: 170px;
		float: left;
		margin : 10px 0 0 20px;
		border:1px solid #cbcbca;
	}




	p{
		text-align: center;
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

	#page {
		width:7px;
		height:7px;
		margin-right :10px;
		padding : 2px;
		border: 1px solid white;
		background-color: #5CD1E5;
		display: inline-block;
		border-radius: 50%;
	}

	#paging {
		padding-top: 300px;
	}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#delConfirm").on('click', function(){
			console.log("click");

			var flag = confirm("정말 삭제하겠습니까?");

			if(flag){
				//console.log("삭제 수행");
				//창 이동시키기 -> deleteOk.jsp -> 삭제기능을 수행해보세요
				location.href = "camdeleteOk.jsp?bno=<%=vo.getBno() %> ";
			}

		});
	});
</script>
</head>
<body>
	<jsp:include page="../etc/dona.jsp" />
<jsp:include page="../etc/sf_nav.jsp"></jsp:include>
<div style="height: 80px;"></div>
<div style="height: 80px;"></div>
<div style="width:1200px; margin: 0 0 0 360px;">
	<h1 style="text-align: center;">코로나19 피해지역 저소득가정 아동들을 긴급지원합니다.</h1>
	<img alt="" src="../image/cam2-1.jpg" style="width: 100%; margin-top: 30px;">
	<br />
	<h3 style="text-align: center;">지난 1월 20일. 코로나 바이러스로 인한 첫 확진자가 발생했습니다. <br />

		2월 중순을 기점으로 기하급수적으로 확진자가 늘어 <br />
		3월 5일 현재 확진자는 5,766명인 상태로<br />
		대구·경북지역에서 확진 환자의 85% 이상이 발생하고 있는 상황. <br />
		<br /><br />
		전염력이 강해 유증상자 뿐 아니라 무증상자의 활동 또한 제한되고 있는 상황에서<br />
		평소 일용직 노동으로 생계를 이어가는 저소득 가정은<br />
		소득 활동을 제한받고 있으며 이로 인한 어려움도 심화될 것으로 보입니다. <br />
		<br /><br />
		빠듯한 형편에 하루하루를 버티던 저소득 가정은 <br />
		이제 전염병이라는 또 다른 장벽에 맞닥뜨렸습니다. <br />
		<br /><br />
		만약 이 사태가 장기화 된다면 가정 생계 전체가 심각하게 위협받을 수 있는 상황입니다. <br />
		또한 생계가 급급한 저소득층 가정에서 소독제 및 마스크와 같은<br />
		개인위생용품을 구비하는 것은 더 어렵기 때문에 도움이 절실히 필요합니다.</h3>
		<br />

	<img alt="" src="../image/cam2-2.jpg" style="width: 100%;">
	<
	<h3 style="text-align: center; margin: 20px;">

		세이브더칠드런은 코로나19로 피해를 입은 대구·경북지역을 포함한<br />
		전국 저소득 가정 1,500가구에 식료품과 개인위생용품 지원을 시작했습니다. <br />
		반조리 식품 등이 포함된 식료품 키트, 그리고 마스크와 손소독제가 포함된 위생용품키트<br />
		(가정당 총 약 30만원 상당)을 각 가정에 긴급히 전달하고 있습니다. <br />
		<br />

		이와 더불어, 코로나19로 인해 생계가 더욱 어려워진 저소득가정 아이들에게<br />
		추가적인 생계지원을 할 예정입니다. <br />
		도움이 필요한 아이들이 무사히 이 위기 상황을 넘길 수 있도록,<br />
		따뜻한 관심 부탁드립니다.
	</h3>


	<div style="text-align: center; margin-top: 50px;">
	<input type="button" value="후원하기 " style="border:0; outline:0; width: 185px; height: 68px; background-color: #da281f; color: white; font-size: 19px;" />
	</div>
	<div style="margin-top: 50px;">
		<a href="campaign.jsp"><input class="btn1" type="button" value="목록" /></a>
		<a href="cammodify.jsp?bno=<%=vo.getBno() %>"><input class="btn1" type="button" value="수정" /></a>
		<input class="btn1" type="button" value="삭제" id="delConfirm"/>
	</div>

	<div id="contents" >
		<div id="container">
		<div style="width: 1200px; height:80px; "><h2 style="float: left; margin-top: 25px;">캠페인 공유하기</h2>
		 <input style="float: left; width: 30px; height: 30px; margin: 20px 0 0 20px;" type="image" src="../image/face.png" alt="페이스북" onclick="location.href='http://www.facebook.com'"/>

            <input style="float: left; width: 30px; height: 30px; margin: 20px 0 0 10px;" type="image" src="../image/ins.png" alt="인스타그램" onclick="location.href='http://www.instagram.com'"/>
		</div>
		<%

			ArrayList<CampaignVO> list = dao.getAllData(startNo, endNo);

			for(CampaignVO vo2 : list) {

		%>
		<div id="com">

			<a href="<%=vo2.getCamlink() %>?bno=<%=vo2.getBno() %>">
				<img id="camimg" src="../<%=vo2.getCamimg() %>" alt="<%=vo2.getCamtitle() %>" />
			</a>
			<p><%=vo2.getCamtitle() %></p>
			<p><%=vo2.getCamcontents() %></p>


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

				<a href="cam1.jsp?cp=<%=i %>"><span id="page"></span></a>
				<%
					}// if end

				}// for end

				%>

			</td>
		</tr>
	</table>

	<div>
	<a href="cam1.jsp?cp=<%=currentPage+1 %>"><div style=" margin-top:-210px; width: 40px; height: 40px;float: right;">
		<img src="../image/right.png" alt="" style="width: 100%; height: 100%;" />
	</div></a>
	<a href="cam1.jsp?cp=<%=currentPage-1 %>"><div style=" margin-top:-210px; width: 40px; height: 40px;float: left;">
		<img src="../image/left.png" alt="" style="width: 100%; height: 100%;" />
	</div></a>
	</div>

	</div>


	</div>

</div>

<jsp:include page="../etc/project_footer.jsp"></jsp:include>

</body>
</html>