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
		height: 900px;
		margin: 100px 0 0 360px;
		background-color: white;
		position: relative; z-index: 2;

	}


	#container{
		width: 1000px;
		margin: auto;
	}



	#camimg{
		width: 300px;
		height: 300px;
	}

	#com{
		width: 300px;
		float: left;
		margin : 50px 0 0 20px;
		border:1px solid #EFECCA;
        box-shadow:3px 3px 10px #E6E2AF;
	}




	p{
		text-align: center;
	}

	table {
		width: 1000px;
		margin: 0 auto;
	}

	table, tr, th, td {
		border: 1px solid black;
		border-collapse: collapse;
	}

	#pageList{
		text-align: center;
	}

	#page {
		width:20px;
		margin : 0;
		padding : 2px;
		border: 1px solid gray;
	}

	#paging {
		padding-top: 1000px;
	}



   #btn1, #btn2, #btn3 {
   background-color: #CE723D;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 0.4;
  transition: 0.3s;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
   }


</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
   $(document).ready(function(){




      //마우스가over되면 red 클래스 삽입
      $("#btn1").on('mouseover', function(){
         //$(this).addClass("red");
         $("#infor1").css('display','block');
         $("#btn1").css('opacity', '1');

      });


      $("#btn1").on('mouseout', function(){
    	  $("#btn1").css('opacity', '0.4');


      });

      $("#btn2").on('mouseover', function(){
          //$(this).addClass("red");
          $("#infor2").css('display','block');
          $("#infor1").css('display','none');
          $("#btn2").css('opacity', '1');

       });

       //마우스가 out되면 red클래스 제거
       $("#btn2").on('mouseout', function(){
       $("#infor2").css('display','none');
       $("#infor1").css('display','block');
       $("#btn2").css('opacity', '0.4');


       });

       $("#btn3").on('mouseover', function(){
           //$(this).addClass("red");
           $("#infor3").css('display','block');
           $("#infor1").css('display','none');
           $("#btn3").css('opacity', '1');

        });

        //마우스가 out되면 red클래스 제거
        $("#btn3").on('mouseout', function(){
        $("#infor3").css('display','none');
        $("#infor1").css('display','block');
        $("#btn3").css('opacity', '0.4');


        });

        $("#sp_div1").on('mouseover', function(){

        	$("#sp_div1").css('display','none');
            $("#sp_div2").css('display','none');
            $("#sp_div3").css('display','none');

            $("#sub_div1").css('display','block');
            $("#sub_div2").css('display','none');
            $("#sub_div3").css('display','none');



            $("#th_div1").css('display','block');
            $("#th_div2").css('display','none');
            $("#th_div3").css('display','block');




         });

        $("#sp_div2").on('mouseover', function(){

            $("#sp_div1").css('display','none');
            $("#sp_div2").css('display','none');
            $("#sp_div3").css('display','none');

            $("#sub_div1").css('display','none');
            $("#sub_div2").css('display','block');
            $("#sub_div3").css('display','none');



            $("#th_div1").css('display','block');
            $("#th_div2").css('display','none');
            $("#th_div3").css('display','block');


         });

		$("#sp_div3").on('mouseover', function(){

			$("#sp_div1").css('display','none');
            $("#sp_div2").css('display','none');
            $("#sp_div3").css('display','none');

            $("#sub_div1").css('display','none');
            $("#sub_div2").css('display','none');
            $("#sub_div3").css('display','block');



            $("#th_div1").css('display','block');
            $("#th_div2").css('display','block');
            $("#th_div3").css('display','none');


         });

		$("#sp_div1").on('mouseout', function(){

            $("#sp_div1").css('display','block');
            $("#sp_div2").css('display','block');
            $("#sp_div3").css('display','block');

            $("#sub_div1").css('display','none');
            $("#sub_div2").css('display','none');
            $("#sub_div3").css('display','none');


            $("#th_div1").css('display','none');
            $("#th_div2").css('display','none');
            $("#th_div3").css('display','none');


         });

		$("#sp_div2").on('mouseout', function(){

            $("#sp_div1").css('display','block');
            $("#sp_div2").css('display','block');
            $("#sp_div3").css('display','block');

            $("#sub_div1").css('display','none');
            $("#sub_div2").css('display','none');
            $("#sub_div3").css('display','none');


            $("#th_div1").css('display','none');
            $("#th_div2").css('display','none');
            $("#th_div3").css('display','none');

         });

		$("#sp_div3").on('mouseout', function(){

            $("#sp_div1").css('display','block');
            $("#sp_div2").css('display','block');
            $("#sp_div3").css('display','block');


            $("#sub_div1").css('display','none');
            $("#sub_div2").css('display','none');
            $("#sub_div3").css('display','none');


            $("#th_div1").css('display','none');
            $("#th_div2").css('display','none');
            $("#th_div3").css('display','none');


         });

		$("#sub_div1").on('mouseover', function(){

			$("#sp_div1").css('display','none');
            $("#sp_div2").css('display','none');
            $("#sp_div3").css('display','none');

            $("#sub_div1").css('display','block');
            $("#sub_div2").css('display','none');
            $("#sub_div3").css('display','none');



            $("#th_div1").css('display','none');
            $("#th_div2").css('display','block');
            $("#th_div3").css('display','block');


         });

        $("#sub_div2").on('mouseover', function(){

        	$("#sp_div1").css('display','none');
            $("#sp_div2").css('display','none');
            $("#sp_div3").css('display','none');

            $("#sub_div1").css('display','none');
            $("#sub_div2").css('display','block');
            $("#sub_div3").css('display','none');



            $("#th_div1").css('display','block');
            $("#th_div2").css('display','none');
            $("#th_div3").css('display','block');


         });

		$("#sub_div3").on('mouseover', function(){

			$("#sp_div1").css('display','none');
            $("#sp_div2").css('display','none');
            $("#sp_div3").css('display','none');

            $("#sub_div1").css('display','none');
            $("#sub_div2").css('display','none');
            $("#sub_div3").css('display','block');



            $("#th_div1").css('display','block');
            $("#th_div2").css('display','block');
            $("#th_div3").css('display','none');

         });

		$("#sub_div1").on('mouseout', function(){

            $("#sp_div1").css('display','block');
            $("#sp_div2").css('display','block');
            $("#sp_div3").css('display','block');

            $("#sub_div1").css('display','none');
            $("#sub_div2").css('display','none');
            $("#sub_div3").css('display','none');


            $("#th_div1").css('display','none');
            $("#th_div2").css('display','none');
            $("#th_div3").css('display','none');


         });

		$("#sub_div2").on('mouseout', function(){

            $("#sp_div1").css('display','block');
            $("#sp_div2").css('display','block');
            $("#sp_div3").css('display','block');

            $("#sub_div1").css('display','none');
            $("#sub_div2").css('display','none');
            $("#sub_div3").css('display','none');


            $("#th_div1").css('display','none');
            $("#th_div2").css('display','none');
            $("#th_div3").css('display','none');

         });

		$("#sub_div3").on('mouseout', function(){

            $("#sp_div1").css('display','block');
            $("#sp_div2").css('display','block');
            $("#sp_div3").css('display','block');


            $("#sub_div1").css('display','none');
            $("#sub_div2").css('display','none');
            $("#sub_div3").css('display','none');


            $("#th_div1").css('display','none');
            $("#th_div2").css('display','none');
            $("#th_div3").css('display','none');


         });

		$("#th_div1").on('mouseover', function(){

			$("#sp_div1").css('display','none');
            $("#sp_div2").css('display','none');
            $("#sp_div3").css('display','none');

            $("#sub_div1").css('display','block');
            $("#sub_div2").css('display','none');
            $("#sub_div3").css('display','none');



            $("#th_div1").css('display','block');
            $("#th_div2").css('display','none');
            $("#th_div3").css('display','block');


         });

        $("#th_div2").on('mouseover', function(){

        	$("#sp_div1").css('display','none');
            $("#sp_div2").css('display','none');
            $("#sp_div3").css('display','none');

            $("#sub_div1").css('display','none');
            $("#sub_div2").css('display','block');
            $("#sub_div3").css('display','none');



            $("#th_div1").css('display','block');
            $("#th_div2").css('display','none');
            $("#th_div3").css('display','block');


         });

		$("#th_div3").on('mouseover', function(){

			$("#sp_div1").css('display','none');
            $("#sp_div2").css('display','none');
            $("#sp_div3").css('display','none');

            $("#sub_div1").css('display','none');
            $("#sub_div2").css('display','none');
            $("#sub_div3").css('display','block');



            $("#th_div1").css('display','block');
            $("#th_div2").css('display','block');
            $("#th_div3").css('display','none');



         });

		$("#th_div1").on('mouseout', function(){

            $("#sp_div1").css('display','block');
            $("#sp_div2").css('display','block');
            $("#sp_div3").css('display','block');

            $("#sub_div1").css('display','none');
            $("#sub_div1").css('display','none');
            $("#sub_div1").css('display','none');


            $("#th_div1").css('display','none');
            $("#th_div2").css('display','none');
            $("#th_div3").css('display','none');


         });

		$("#th_div2").on('mouseout', function(){

            $("#sp_div1").css('display','block');
            $("#sp_div2").css('display','block');
            $("#sp_div3").css('display','block');

            $("#sub_div1").css('display','none');
            $("#sub_div1").css('display','none');
            $("#sub_div1").css('display','none');


            $("#th_div1").css('display','none');
            $("#th_div2").css('display','none');
            $("#th_div3").css('display','none');

         });

		$("#th_div3").on('mouseout', function(){

            $("#sp_div1").css('display','block');
            $("#sp_div2").css('display','block');
            $("#sp_div3").css('display','block');


            $("#sub_div1").css('display','none');
            $("#sub_div1").css('display','none');
            $("#sub_div1").css('display','none');


            $("#th_div1").css('display','none');
            $("#th_div2").css('display','none');
            $("#th_div3").css('display','none');


         });

   });
</script>


</head>
<body>
<jsp:include page="../etc/sf_nav.jsp"></jsp:include>

	<jsp:include page="../etc/dona.jsp" />
	<div style="width: 1920px; ">
	<div style="height: 80px;"></div>
	<div style="text-align: center; background-image: url(../image/back5.png); width: 1920px; height: 400px; padding-top: 110px; box-sizing: border-box; ">
	<h1 style="font-weight: bold; color: white;">내가 원하는 후원은?</h1>
	<h2 style="color: white;">어떤 후원을 선택할지 고민되세요? 원하는 후원을 찾아보세요.</h2>
	</div>

	<div id="contents">
		<h2 style="padding-top: 60px; text-align: center;">후원 방식이 궁금하세요?</h2>
		<h3 style="padding-top: 10px; text-align: center; color:#997000;">일시적인 지원부터 마을의 자립까지, 다양한 방식으로 후원할 수 있습니다.</h3>

		<div style=" width: 1050px; height: 365px; margin: 40px 0 0 75px;">
			<div id="infor1" style="width:775px; height:450px; ">
				<img alt="" src="../image/support1.png" style="width: 100%; height: 100%;">
				<h2 style="margin: -330px 0 0 50px;">해외 결연은</h2>
				<h4 style="margin: 30px 0 0 50px; line-height:150%;">
					결연 아동의 성장단계에 맞춰 프로그램을<br />
				       지원하고 아동과 편지도 교류하면서 건강한<br />
				       구성원으로 성장할 수 있도록 돕는 프로그램 입니다.
				</h4>

			</div>

			<div id="infor2" style="width:775px; height:450px; display: none; ">
				<img alt="" src="../image/support2.png" style="width: 100%; height: 100%;">
				<h2 style="margin: -330px 0 0 50px; color: white;">정기후원은</h2>
				<h4 style="margin: 30px 0 0 50px; color: white; line-height:150%;">
					정기후원은 매월 일정금액을 지속적으로 후원해주시는<br />
				       후원방법입니다. 장기적으로 지속 가능한 계획을 세워<br />
				       아동이 안정적인 지원을 받을 수 있도록 돕습니다.
				</h4>

			</div>

			<div id="infor3" style="width:775px; height:450px; display: none; ">
				<img alt="" src="../image/support3.png" style="width: 100%; height: 100%;">
				<h2 style="margin: -330px 0 0 50px;">일시후원은</h2>
				<h4 style="margin: 30px 0 0 50px; line-height:150%;">
					뜻 깊은 날, 기억하고 싶은 순간을 기념하거나, 도움의 필요성을<br />
				       공감하시는 분들이 자유롭게 일회성으로 나눔을 전하는 후원방법입니다.<br />
				       한 번의 나눔이라도 그것들이 모이면 아동의 삶은 변화할 수 있습니다.
				</h4>

			</div>


		</div>

		<div style="position: absolute; margin: -365px 0 0 850px;"><input id="btn1" type="button" value="해외결연후원" style="width:270px; height: 110px; "></div>
		<div style="position: absolute; margin: -255px 0 0 850px;"><input id="btn2" type="button" value="정기후원" style="width:270px; height: 110px; "></div>
		<div style="position: absolute; margin: -145px 0 0 850px;"><input id="btn3" type="button" value="일시후원" style="width:270px; height: 110px; "></div>

		<div style="border: 3px solid #FAECC5;  width:1050px; height:120px; margin: 120px 0 0 75px;">
		<h3 style="color: #CCA63D; margin: 25px 0 0 50px;">기부금액 1천만 원 이하는 15%</h3><h3 style="margin: -20px 0 0 290px;">가 세액공제 된다는 사실 알고 계시나요?</h3>
		<h4 style="margin: 8px 0 0 50px;">(지정기부금은 소득 금액의 30%, 법정기부금은 소득 금액의 100% 한도 내 세액공제, 단 1천만 원 초과분은 30% 공제)</h4>
		</div>
		<img src="../image/pa.png" alt="" style="width: 350px; height: 200px; margin: -180px 0 0 830px;" />

	</div>

	<div style="background-image: url(../image/dona23456789.png); width: 100%; height: 500px;"></div>


	<div style="background-color: #FFF2E6; width: 1920px; height: 700px; /* background-image: url(../image/back3.jpeg); */ ">
		<h2 style="padding-top: 60px; text-align: center;">후원 중이세요?</h2>
		<h3 style="padding-top: 10px; text-align: center; color:#997000;">당신의 따뜻한 마음 덕분에 아이들이 건강하고 안전하게 자라고 있습니다.</h3>

		<div style="width:1050px; height:440px; margin: 50px 0 0 440px;">

		<div id="sp_div1" style=" width:349px; height: 435px; float:left; "><img src="../image/sup1.PNG" alt="" style="width: 100%; height: 100%;" /></div>
		<div id="sub_div1" style="float:left; display:none; width:499px; height: 435px; background-image: url(../image/sub1.png);">
			<input type="button" value="결연지역정보 보기" style="width: 175px; height: 55px; background-color: white; border: white; margin: 273px 0 0 53px;" />
		</div>
		<div id="th_div1" style="float:left; display:none; width:274px; height: 435px;"><img src="../image/sup1.PNG" alt="" style="width: 100%; height: 100%;" /></div>

		<div id="sp_div2" style="width:349px; height: 435px; float:left; "><img src="../image/sup2.PNG" alt="" style="width: 100%; height: 100%;" /></div>
		<div id="sub_div2" style="float:left; display:none; width:499px; height: 435px; background-image: url(../image/sub2.png);">
			<input type="button" value="후원금 증액하기" style="width: 175px; height: 55px; background-color: #DE4F4F; border: red; color: white; margin: 252px 0 0 55px;" />
		</div>
		<div id="th_div2" style="float:left; display:none; width:274px; height: 435px;"><img src="../image/sup2.PNG" alt="" style="width: 100%; height: 100%;" /></div>

		<div id="sp_div3" style="width:349px; height: 435px; float:left;"><img src="../image/sup3.PNG" alt="" style="width: 100%; height: 100%;" /></div>
		<div id="sub_div3" style="float:left; display:none; width:499px; height: 435px; background-image: url(../image/sub3.png);"></div>
		<div id="th_div3" style="float:left; display:none; width:274px; height: 435px; "><img src="../image/sup3.PNG" alt="" style="width: 100%; height: 100%;" /></div>

		</div>

	</div>


	</div>
<jsp:include page="../etc/project_footer.jsp"></jsp:include>


</body>
</html>


