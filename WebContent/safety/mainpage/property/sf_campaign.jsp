<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../css/sf_campaign.css">
<script type="text/javascript">
$(function() {
	$('.sf_campaign_title_txt2').hide();
	$('.sf_campaign_title_txt3').hide();
	$('.sf_campaign_inner_bg2').hide();
	$('.sf_campaign_inner_bg3').hide();

 $('.sf_campaign_btn1').mouseover(function () {
     $('.sf_campaign_btn1').css('background-color:#01aaec ');
     $('.sf_campaign_title_txt1').show();
     $('.sf_campaign_btn1').css("background: url('../../image/sf_event1.png')");
 	 $('.sf_campaign_title_txt2').hide();
	 $('.sf_campaign_title_txt3').hide();
	 $('.sf_campaign_inner_bg1').show();
	 $('.sf_campaign_inner_bg2').hide();
	 $('.sf_campaign_inner_bg3').hide();

 });
 $('.sf_campaign_btn2').mouseover(function () {
	 $('.sf_campaign_title_txt1').hide();
	 $('.sf_campaign_inner').css('background: url("../../image/sf_event2.png")');
	 $('.sf_campaign_title_txt2').show();
	 $('.sf_campaign_title_txt3').hide();
	 $('.sf_campaign_inner_bg1').hide();
	 $('.sf_campaign_inner_bg2').show();
	 $('.sf_campaign_inner_bg3').hide();

 });
 $('.sf_campaign_btn3').mouseover(function () {
	 	$('.sf_campaign_title_txt3').show();
	 	$('.sf_campaign_inner').css('background: url("../../image/sf_event3.png") ');
	 	$('.sf_campaign_title_txt2').hide();
		$('.sf_campaign_title_txt1').hide();
		 $('.sf_campaign_inner_bg1').hide();
		 $('.sf_campaign_inner_bg2').hide();
		 $('.sf_campaign_inner_bg3').show();




 });
 $('.sf_campaign_plus_icon1').click(function () {
	 location.href = 'https://www.sc.or.kr/n_advocacy/?_C_=3723'; /* 해당링크로 */
 });
 $('.sf_campaign_btn1').click(function () {
	 location.href = 'https://www.sc.or.kr/n_advocacy/?_C_=3723'; /* 해당링크로 */
 });
 $('.sf_campaign_plus_icon2').click(function () {
	 location.href = 'https://happykidsyoutube.sc.or.kr/?_C_=3341'; /* 해당링크로 */
 });
 $('.sf_campaign_btn2').click(function () {
	 location.href = 'https://www.sc.or.kr/moja/?_C_=3661'; /* 해당링크로 */
 });
 $('.sf_campaign_plus_icon3').click(function () {
	 location.href = 'https://www.sc.or.kr/stopwaronchildren/?_C_=3185'; /* 해당링크로 */
 });
 $('.sf_campaign_btn3').click(function () {
	 location.href = 'https://www.sc.or.kr/stopwaronchildren/?_C_=3185'; /* 해당링크로 */
 });

});

</script>
<div class="sf_campaign_inner">

	<div class="sf_campaign_inner_bg1">

	</div>
	<div class="sf_campaign_inner_bg2">

	</div>
	<div class="sf_campaign_inner_bg3">

	</div>

	<div  class="sf_campaign_btn_div">
		<div class="sf_campaign_btn1">
			<p class="sf_campaign_p">신생아 살리기 캠페인</p>
			<img src="../image/화살표_22PX.png" alt="" id="sf_campaign_icon"/>
		</div>

		<div class="sf_campaign_btn2">
			<p class="sf_campaign_p">아이가 행복한 유튜브 만들기</p>
			<img src="../image/화살표_22PX.png" alt="" id="sf_campaign_icon"/>
		</div>

		<div class="sf_campaign_btn3">
			<p class="sf_campaign_p">SOS SAFETY</p>
			<img src="../image/화살표_22PX.png" alt="" id="sf_campaign_icon"/>

		</div>
	</div> <!--sf_campaign_btn_div end -->

	<div class="sf_campaign_title_div">
	  		<div class="sf_campaign_title_txt1">
			<h1 class="campaign_h1">신생아 살리기 캠페인</h1>
			<h5  class="campaign_h5">귀엽고 사랑스러운 유튜브 속 아이들. 하지만 촬영 과정에서 어른들 모르게
				<br />힘들어했던 아이들이 있진 않았을까요?
			</h5>
			<img src="../image/자세히보기btn.png" alt="" class="sf_campaign_plus_icon1"/>
          </div>






		<div class="sf_campaign_title_txt2">
			<h1 class="campaign_h1">아이가 행복한 유튜브 만들기</h1>
			<h5 class="campaign_h5">키즈 유튜브를 하고 있는 부모님도, 키즈 유튜브를 시작하는 부모님도<br />
								가이드라인을 잘 지켜 아이들이 행복한 유튜브를 만들도록<br />
								여러분이 함께 힘을 실어주세요.
			</h5>
			<img src="../image/자세히보기btn.png" alt="" class="sf_campaign_plus_icon2"/>

		</div>




		<div class="sf_campaign_title_txt3">
			<h1 class="campaign_h1">SOS SAFETY</h1>
			<h5 class="campaign_h5">
				“ Every war is a war against children. ”
			</h5>
			<img src="../image/자세히보기btn.png" alt="" class="sf_campaign_plus_icon3"/>

		</div>




</div><!--sf_campaign_inner -->
 </div> <!-- sf_campaign_title end -->
