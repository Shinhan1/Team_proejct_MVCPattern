<%@page import="com.exam.safety.dao.CampaignDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.exam.safety.dto.CampaignVO"%>
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
<style type="text/css">

	* {font-family: "나눔스퀘어";}


	#contents{
		width:1200px;
		height: 700px;
		margin-left: 360px;
		
     
 
	}


	#container{
		width: 1200px;
		margin: 0 0 0 100px;
	}



	#camimg{
		width: 300px;
		height: 300px;
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

	#mainP {
		font-size: 45px;
		font-weight: bold;
	}

	table {
		width: 1000px;
		margin: 0 auto;
	}

	#tb1, #tr1, #pageList {
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
		margin-top: 30px;
	}





</style>
<div style="width: 1920px; height: 700px; text-align: center;">
	<p id="mainP" style="margin-top: 70px;">모두가 행복해지는<br /><span style="color:#4364ae; ">세이프티 캠페인</span>에 참여해주세요</p>

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
	<table id="tb1">
	<tr id="tr1">
			<td id="pageList">
				<%
					for(int i=currentPage-3; i<=currentPage+3; i++){
						if(i<=0){
							continue;
						}else if(i>totalPage){
							break;
						}else {
				%>

				<a href="main.jsp?cp=<%=i %>"><span id="page"></span></a>
				<%
					}// if end

				}// for end

				%>

			</td>
		</tr>
	</table>

	<div>
	<a href="main.jsp?cp=<%=currentPage+1 %>"><div style=" margin:-330px -40px 0 0; width: 70px; height: 70px;float: right;">
		<img src="../image/right.png" alt="" style="width: 100%; height: 100%;" />
	</div></a>
	<a href="main.jsp?cp=<%=currentPage-1 %>"><div style=" margin:-330px 0 0 -40px; width: 70px; height: 70px;float: left;">
		<img src="../image/left.png" alt="" style="width: 100%; height: 100%;" />
	</div></a>
	</div>

	</div>


	</div>





</div>