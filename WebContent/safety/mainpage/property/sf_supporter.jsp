<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<meta charset="EUC-KR">

<link rel="stylesheet" href="../css/sf_supporter.css">

<script type="text/javascript">

$(function() {
 $('#sponedbtn1').click(function () {
	 location.href = "../support/NewFile.jsp"; /* 해당링크로 */
 });
 $('#sponedbtn2').click(function () {
	 location.href = "../support/organization_mod.jsp";/* 해당링크로 */
 });

});
</script>

	<div class="sf_supporter_div">
		<div class="supporter_div">

			<div class="supporter_img1_div">
				<input type="button" value="" id="sponedbtn1" />
			</div>

			<div class="supporter_img2_div">
				<input type="button" value="" id="sponedbtn2" />
			</div>

		</div> <!-- sponed_div1 end -->

	</div><!-- sf_sponed_div end  -->
