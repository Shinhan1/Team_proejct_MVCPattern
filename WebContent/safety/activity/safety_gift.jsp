<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>safety_gift.jsp</title>
<link rel="stylesheet" href="../css/safety_gift.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

$(function() {
 $('.gift_contents_tilte_btn').click(function () {
	 location.href = "https://www.naver.com/"; /* 없어 이제 여까지야.. */
 });




});


</script>
</head>

<body>
	<jsp:include page="../etc/dona.jsp" />
<jsp:include page="../../safety/etc/sf_nav.jsp" />
     <div class="safety_gift_div">
            <div class="gift_contents">
                <div class="gift_contents_tilte">
                    <!-- title -->
                  <input type="button" value="" class="gift_contents_tilte_btn" />

                </div>
                <div class="gift_contents_box">
                    <!-- 상품페이지 넘어갈 div -->
                    <div class="gift_contents_box1"><img src="../image/gift_box_image.png" alt="" /></div>
                    <div class="gift_contents_box2"><img src="../image/gift_box_image.png" alt="" /></div>
                    <div class="gift_contents_box3"><img src="../image/gift_box_image.png" alt="" /></div>
                    <div class="gift_contents_box4"><img src="../image/gift_box_image.png" alt="" /></div>

                </div>

            </div>

        </div>
<div class="gift_contentsfoot">
					<jsp:include page="../etc/project_footer.jsp" />
				</div>


</body>

</html>

