<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오시는 길</title>
<!-- map.jsp -->
<link rel="stylesheet" href="../css/main.css" />
<link rel="stylesheet" href="../css/map.css" />
<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		
		var X_point = 37.482121;
		var Y_point = 126.898218;
		
		var zoomLevel = 17;
		
		var markerTitle = "구트";
		var markermaxWidth =300;

		$('.nav').mouseover(function() {
			$(this).css("border-bottom", "2px solid red");
		});
		$('.nav').mouseout(function() {
			$(this).css("border-bottom", "none");
		});
		$('.ub').mouseover(function() {
			$(this).css("border", "1px solid red");
		});
		$('.ub').mouseout(function() {
			$(this).css("border", "1px solid #BDBDBD");
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
		
		/* map marker = new google.maps.Marker({
			position: myLatlng,
			map: map,
			title markerTitle
		});
		
		var infowindow = new google.maps.InfoWindow({
			contents: contentString,
			maxWidth: markerMaxWidth
		});
		
		google.maps.event.addListener(marker, 'click', function(){
			infowindow.open(map, marker);
		}); */
		
	}
	
</script>
</head>
<body onload="initialize()">
	<jsp:include page="../etc/dona.jsp"></jsp:include>
	<div class="m">
	<div class="main">
		<jsp:include page="../etc/sf_nav.jsp"></jsp:include>
		
		
		<div class="customer">
			<h2>Safety 재단 오시는 길</h2>
		</div>
		<div class="boardBack">
			<div id="map">
			</div>
			
			<div class="bb_under">
				<div class="bb_under_left">
					<h3>Safety 재단 본부</h3>
					<h4>주소</h4>
					<p>우)08393 서울특별시 구로구 시흥대로163길 33(구로동, 주호타워) <br /> Safety 재단</p>
					<h4>Address</h4>
					<p>Safety Foundation, 33, Siheung-daero, Guro-gu, Seoul(Seoul 08393 Korea)</p>
					<!-- p.tfe  tel, fax, email -->
					<p class="tfe">
						<span>Tel.</span>
						010-9953-5444
					</p>
					<p class="tfe">
						<span>Fax.</span>
						02-1234-5678
					</p>
					<p class="tfe">
						<span>E-mail.</span>
						tlsgks8668@naver.com
					</p>
				</div>
				<div class="bb_under_right">
					<h3>교통안내</h3>
					<h4>버스</h4>
					<table>
						<tr>
							<td>구로디지털단지역 앞</td>
							<td>간선버스</td>
						</tr>
						<tr>
							<td></td>
							<td>지선버스</td>
						</tr>
						<tr>
							<td></td>
							<td>마을버스</td>
						</tr>
					</table>
					<h4>지하철</h4>
					<p>2호선 구로디지털단지역 1번 출구에서 도보 200M</p>
					<h4>승용차</h4>
					<p>서강대로 북단 아래에서 강변북로 일산방향 진입 30M 직전</p>
				</div>
			</div>
		</div>
		
	</div>
	<jsp:include page="../etc/project_footer.jsp"></jsp:include>
	</div>

</body>
</html>