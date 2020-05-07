<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>JSP</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript">


$(function() {








$('.control_btn_left').click(function(){  /* 오른쪽 클릭 하면 다음 하면  */
	$('.slider_div_sub1').slick();
});
$('.control_btn_ right').click(function(){

});














});
</script>

</head>
<style>
*{
margin: 0;
padding: 0;


}
#wrapper{
width: 9000px;
height: 900px;


}
.slider_div_sub1{
float: left;
height: 930px;

}


.textdiv{
margin-top: 300px;
margin-left: 360px;
font-size:50px;
position: absolute;
color: white;
z-index: 100;
}

.control_div{
position: absolute;

}
.control_btn_left{
float: left;
position: absolute;
margin-top: 350px;
margin-left: 50px;
}
.control_btn_right{
float: left;
margin-top: 350px;
position: absolute;
margin-left: 1780px;
}


</style>
<body>


<div id="wrapper">
   <div class="slider_div">
          <div class="slider_div_sub1">   <!-- 1번 슬라이드 -->
                <div class="textdiv">
                    <h3>safety ci 소개</h3><br />
                     <img src="../image/자세히보기btn.png" alt="" />

                </div>
				<img src="../image/main_img_1.png">  <!--1번 이미지 넣는 곳  -->
          </div>
<!-------------------------------------------------------------------------------------------------------->
           <div class="slider_div_sub1"> <!-- 2번 슬라이드 -->
                <div class="textdiv" >
                   <h3>까막눈 할배와 <br />재윤이의 봄 캠페인</h3> <br />
                    <img src="../image/자세히보기btn.png" alt="" />
                </div>
				<img src="../image/main_img_3.png">
          </div>
<!-------------------------------------------------------------------------------------------------------->
 		   <div class="slider_div_sub1"> <!-- 2번 슬라이드 -->
                <div class="textdiv">
                    <h3>safety에게 <br />
						궁금한 것을 <br />
						물어보세요!<br /></h3> <br />
                    <img src="../image/자세히보기btn.png" alt="" />
                </div>
				<img src="../image/main_img_2.png">
          </div>
 <!-------------------------------------------------------------------------------------------------------->
           <div class="slider_div_sub1"> <!-- 2번 슬라이드 -->
                <div class="textdiv">
                     <h3>후원자선물가게</h3> <br />
                   	<img src="../image/자세히보기btn.png" alt="" />
                </div>
				<img src="../image/main_img_4.png">
          </div>
   </div>


<div class="control_div">
   <div class="control_btn_left"><!-- 왼쪽  -->
	 <img src="../image/main_arrow_left.png" alt="" />
   </div>
   <div class="control_btn_right"><!-- 오른쪽 -->
	 <img src="../image/main_arrow_right.png" alt="" />
   </div>
</div>



</div>

</body>

</html>

