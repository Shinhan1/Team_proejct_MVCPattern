<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">

<title>sf_mainpage.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
    <link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
    <script src="http://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
    
    <script type="text/javascript">
    $(document).ready(function () {

    	//alert('123');

    	$('.slick-items').slick({

    		autoplay : true,

    		dots: true,

    		speed : 300 /* 이미지가 슬라이딩시 걸리는 시간 */,

    		infinite: true,

    		autoplaySpeed: 1000 /* 이미지가 다른 이미지로 넘어 갈때의 텀 */,

    		arrows: true,

    		slidesToShow: 1,

    		slidesToScroll: 1,
    		
    		prevArrow : "<button type='button' class='slick-prev'>Previous</button>",		// 이전 화살표 모양 설정
			nextArrow : "<button type='button' class='slick-next'>Next</button>",		// 다음 화살표 모양 설정

    		fade: false
    		

    	});

    });
	</script>
	<style type="text/css">

*{
margin: 0;
padding: 0;


}
.slick-dots{
margin-top: 50px;
position: absolute;

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
</head>

<body>
<div class="slick-items">

          <div class="slider_div_sub1">   <!-- 1번 슬라이드 -->
                <div class="textdiv">
                    <h3>safety ci 소개</h3><br />
                     <img src="../image/자세히보기btn.png" alt="" />

                </div>
				<img src="../image/main_img_1.png">  <!--1번 이미지 넣는 곳  -->
          </div>
          

		 <div class="slider_div_sub1"> <!-- 2번 슬라이드 -->
                <div class="textdiv" >
                   <h3>까막눈 할배와 <br />재윤이의 봄 캠페인</h3> <br />
                    <img src="../image/자세히보기btn.png" alt="" />
                </div>
				<img src="../image/main_img_3.png">
          </div>
          
          
          
		 <div class="slider_div_sub1"> <!-- 2번 슬라이드 -->
                <div class="textdiv">
                    <h3>safety에게 <br />
						궁금한 것을 <br />`
						물어보세요!<br /></h3> <br />
                    <img src="../image/자세히보기btn.png" alt="" />
                </div>
				<img src="../image/main_img_2.png">
          </div>

	   	<div class="slider_div_sub1"> <!-- 2번 슬라이드 -->
                <div class="textdiv">
                     <h3>후원자선물가게</h3> <br />
                   	<img src="../image/자세히보기btn.png" alt="" />
                </div>
				<img src="../image/main_img_4.png">
          </div>

    </div>
  
   
</body>

</html>
   
 