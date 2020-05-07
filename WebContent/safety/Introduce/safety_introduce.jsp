<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>safety_introduce.jsp</title>
<link rel="stylesheet" href="../css/safety_introduce.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

<script type="text/javascript">
$(function() {

		$('.introduce_div').click(function() {
			location.href = '..//Introduce/safety_history.jsp';/* 스토리*/


		});
		$('.safety_introduce_img').click(function() {
			location.href = '../Introduce/safety_ci.jsp';/* ci로고 */


		});
		$('.introduce_contents_div2').click(function() {
			location.href = '../support/test4.jsp';/* 스토리 링크 */


		});
		$('.introduce_contents_div3').click(function() {
			location.href = '../Introduce/map.jsp'; /* 지도위치 링크 */

		});
		$('#introduce_contents_div4').click(function() {
			location.href = 'map.jsp'; /* 지도위치 링크 */

		});



	});
function initialize() {
	var myLatlng = new google.maps.LatLng(37.482121, 126.898218);
	var mapOptions = {
	    zoom: 16,
	    center: myLatlng,
	    mapTypeId: google.maps.MapTypeId.ROADMAP
	}

	var map = new google.maps.Map(document.getElementById('map'), mapOptions);

	var marker = new google.maps.Marker({position: myLatlng, map: map});



}
</script>

</head>

<body onload="initialize()">
	<jsp:include page="../etc/dona.jsp" />
	<jsp:include page="../../safety/etc/sf_nav.jsp" />
<div class="safety_introduce_div">

		<!-- w1920 h2400 -->
		<img src="../../safety/image/introduce_text_img.png" alt="" class="introduce_text"/>
		<div class="introduce_contents_div">
			<img src="../../safety/image/1200_400px-_logo_w.png" alt="" class="safety_introduce_img"/>

		</div>
		<div class="introduce_contents_div2">
			<img src="../../safety/image/introduce_free_box.png" alt="" />
		</div>
		<div class="introduce_contents_div3">
			<img src="../../safety/image/오시는길-궁금.png" alt="" />

		</div>

		<div id="map" class="introduce_contents_div4"> <!--지도 넣어야해 -->

		</div>

		<div class="introduce_div"></div> <!--bg이미지 -->
		<div class="introduce_bg1_div"></div>
		<div class="introduce_bg2_div"></div>
		<div class="introduce_bg3_div"></div>
		<jsp:include page="../etc/project_footer.jsp" />
</div>
</body>

</html>

