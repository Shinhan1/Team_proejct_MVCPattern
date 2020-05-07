<%@page import="com.exam.safety.dto.CampaignVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.exam.safety.dao.CampaignDAO"%>
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


	int recordByPage = 3;

	// 총 페이지 수
	int totalPage =
		(totalCount%recordByPage==0)?totalCount/recordByPage:totalCount/recordByPage+1;





	int startNo = (currentPage-1)*recordByPage+1;


 	int endNo = currentPage*recordByPage;


%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style type="text/css">

	* {font-family: "나눔스퀘어";}


	#contents{
		width:1200px;
		height: 500px;
     	position:absolute;
  	 	left:50%;
   		top:50%;
  		margin-left:-600px;
   		margin-top:-100px;

	}


	#container{
		width: 1000px;
		margin: 0 0 0 100px;
	}



	#camimg{
		width: 300px;
		height: 300px;
	}

	#com{
		width: 300px;
		float: left;
		margin : 0 0 0 20px;
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

	#p3 {
		font-size: 45px;
	}




</style>
</head>
<body>
<jsp:include page="../etc/sf_nav.jsp"></jsp:include>
	<jsp:include page="../etc/dona.jsp" />
<div style="height: 80px;"></div>

<div>

	<div style="width: 1920px; height: 400px; background-color: #C6C6C6; text-align: center; padding-top: 80px; box-sizing: border-box; ">
		<p id="p3">모두가 행복해지는<br /><span style="color:#4364ae;">세이프티 캠페인</span>에 참여해주세요!</p>


	</div>


	<div style="width: 1920px; height: 400px; background-color: white;">


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


	</div>





	</div>
</div>

<div style="background-image: url(../image/dona_123456789.png); width: 100%; height: 500px;"></div>


<div style="width: 1900px; height:1650px; ">
		<div style="width: 1200px; height: 1650px; margin-left: 360px; padding: 100px 0 0 0; box-sizing: border-box;">
			<div style="width:1200px; height: 591px;  padding-left: 70px; box-sizing: border-box;">
				<div style="width: 525px; height: 591px;  float: left;">
				<img src="../image/gro.png" alt="" style="width:425px; height: 425px; " />
				<img src="../image/gro2.png" alt="" style="width:266px; height: 266px; float: right; margin-top: -100px;" />
				</div>

				<div style="width: 500px; height: 591px;   float: left; padding: 60px 0 0 50px; box-sizing: border-box;">
				<img src="../image/com.PNG" alt="" style="float: right; margin-top: -50px;" />
				<h1>기업, 단체인가요?</h1>

				<h2><span style="color:#4364ae; ">세이프티</span>과 파트너십을 통해<br />아동의 내일을 만들어 주세요.</h2>
				<br /><br />

				<h3>기업만의 기부문화를 제안합니다.</h3>
				<h3>믿음직한 기업협력파트너로서 기업브랜드에<br />
					최적화된 사회공헌 방안을 제공합니다.<br /><br /><br />
					기업과 함께 만든 기부문화로 아동의 생명을 구하고,<br />
					변화의 기회를 선물 할 수 있습니다.</h3>

				<input type="button" value="자세히 보기" style="border:0; outline:0; background-color:#4364ae; color:white; width: 200px; height: 60px; font-size: 20px; margin: 20px 0 0 25px; "/>

				</div>

			</div>

			<div style="width:1200px; height: 780px;  margin-top: 30px; padding-left: 70px;  box-sizing: border-box;" >
				<div style="width: 465px; height: 780px;  padding-top: 150px; box-sizing: border-box; float: left;">
					<div style="width: 400px; height: 400px; float: right;">
					<h1>특별한 후원을 원하세요?</h1>
					<h3>세상을 바꾸는 변화의 길을 만들어 주세요.</h3>
					<br />
					<h3>더 큰 변화를 만드는 고액후원자,<br />
						<span style="color:#4364ae; ">세이프티</span>의 '필란트로피스트'가 되어 주세요.</h3>
						<br /><br />
					<h3>당신의 관심으로 세상의 더 많은 아동에게 변화가 <br />
						생길 것이고, 이 세상은 더 좋은 곳이 될 것입니다. <br />
						미래 세대를 위한 노블리스 오블리주로서<br />
						아동의 삶에 더 큰 변화를 만들 수 있습니다.</h3>

					</div>
					<input type="button" value="자세히 보기" style="border:0; outline:0; background-color:#4364ae; color:white; width: 200px; height: 60px; font-size: 20px; margin: -20px 0 0 -15px; "/>
					<img src="../image/co2.PNG" alt="" style="float: left; margin-top: 130px;" />

				</div>

				<div style="width:600px; height: 780px; float: left;">
					<img src="../image/go3.png" alt="" style="width:445px; height: 445px; float: right; margin-top: 100px;" />
					<img src="../image/go4.png" alt="" style="width:310px; height: 310px; float: left; margin-top: -100px;" />



				</div>


			</div>

		</div>


	</div>

<jsp:include page="../etc/project_footer.jsp"></jsp:include>
</body>
</html>
