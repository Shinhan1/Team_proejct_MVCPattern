<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>


<link rel="stylesheet" href="../css/sf_ci.css" />
<script type="text/javascript">
$(function() {

	$('.sf_ci_image2').hide();
	$('.sf_ci_image3').hide();

		$('.sf_ci_image1').mouseover(function() {
			$('.sf_ci_image2').show();
			$('.sf_ci_image3').hide();
			$('.sf_ci_image1').hide();

		})
		$('.sf_ci_image2').mouseout(function() {
			$('.sf_ci_image3').show();
			$('.sf_ci_image1').hide();
			$('.sf_ci_image2').hide();

		});
		$('.sf_ci_image3').mouseout(function() {
			$('.sf_ci_image3').hide();
			$('.sf_ci_image1').show();
			$('.sf_ci_image2').hide();

		});
		$('.sf_ci_image1').click(function() {
			location.href = "../Introduce/safety_introduce.jsp";

		});
		$('.sf_ci_image2').click(function() {
			location.href = "../Introduce/safety_introduce.jsp";

		});
		$('.sf_ci_image3').click(function() {
			location.href = "../Introduce/safety_introduce.jsp";

		});

	});
</script>
<style>
* {
	margin: 0px;
	padding: 0px;
}

.sf_ci_div {
	height: 400px;
	background-color: #4364ae;
}

.sf_ci_image1 {
	margin-top: 120px;
	margin-left: 830px;
}
</style>


	<div class="sf_ci_div">
		<img src="../image/sf_logo_w.png" alt="" class="sf_ci_image1">
		<img src="../image/sf_page2.png" alt=""class="sf_ci_image2">
		<img src="../image/sf_page3.png" alt=""class="sf_ci_image3">
	</div>


