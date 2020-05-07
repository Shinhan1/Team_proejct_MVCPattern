<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="../css/safetyNavi.css">
<script type="text/javascript">
$(function() {
	$('.list_hide_div').hide();

	$('.list_li').mouseover(function(){
		$(this).css('border-bottom','2px solid #72cbf3');
	});

	$('.list_li').mouseout(function(){
		$(this).css('border-bottom','0px');
	});

	$('.navi_menu_div').mouseover(function(){
		$('.list_hide_div').show();
	});

	$('.list_hide_div').mouseover(function(){
		$('.list_hide_div').show();
	});

	$('.list_hide_div').mouseout(function(){
		$('.list_hide_div').hide();
	});

	$('#logoutbtn').click(function(){

		 location="../login/logout.jsp";

	});

	$('#mypagebtn').click(function(){

		location="../myPage/myPage_Basic.jsp";
	});

	$('#support_btn').click(function(){

		 location="../support/done_main.jsp";
	});



});


</script>
<div class="navi_menu_div">
            <div class="navi_logo_div"><!-- 로고 부분  -->
                <a href="../mainpage/main.jsp" class="link"><img src="../image/sf_logo.png" alt="safetyLogo" id="navi_logo"/></a>
            </div>

            <div class="list_div"> <!-- 리스트 부분 -->
                <ul class="list_ul">
                    <li class="list_li">
                        <a href="../Introduce/safety_introduce.jsp" class="navi_a">소개</a>
                    </li>
                    <li class="list_li">
                        <a href="../support/done_main.jsp" class="navi_a">후원
                        </a>
                    </li>
                    <li class="list_li">
                        <a href="../activity/supmain.jsp" class="navi_a">활동</a>
                    </li>
                    <li class="list_li">
                        <a href="../ServiceCenter/customer_center.jsp" class="navi_a">고객센터</a>
                    </li>
                </ul>
           	 </div><!-- 리스트 end -->

            <div class="navi_menu_icon_div"><!-- 아이콘 이미지 -->

            <% String mem = (String)session.getAttribute("member");%> <!--색션 -->
            <% String ad = (String)session.getAttribute("admin");%> <!--색션 -->

 
	        <% if(ad==null && mem==null){%>
                <a href="../../safety/login/safetyLogin.jsp"><img src="../../safety/image/sf_icon_login.png" alt="" id="navi_menu_icon"/></a>
                <% }else if(ad==null && mem!=null) { %>

                <a href="마이페이지" id="loginOK_c" ><%=mem %> 님 환영합니다. </a>
                <div class="plusbtn"> <!-- 로그인이 되면 바뀔곳 -->
					<input type="button" value="logout" id="logoutbtn"/>
					<input type="button" value="mypage" id="mypagebtn"/>
				</div>
 				<% }else if (ad!=null && mem==null) { %>  <!-- 세션이 ad 면  -->
				<a href="마이페이지" id="loginOK_c" ><%=ad %> 님 환영합니다. </a>
                <div class="plusbtn"> <!-- 로그인이 되면 바뀔곳 -->
					<input type="button" value="logout" id="logoutbtn"/>
					<input type="button" value="mypage" id="mypagebtn"/>
				</div>



				<%} %>

            </div>

            <div class="support_btn_div"> <!-- 후원하기 버튼 -->
               <input type="button" value="후원하기" id="support_btn"/>
            </div>

</div><!-- menu div end  -->

<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------ -->

<div class="list_hide_div">
            <div class="list_hide1">
                <ul class="hide_ul1">
                    <!-- 소개 세부 -->
                    <li class="hide_li">
                        <a href="../Introduce/safety_history.jsp" class="navi_hide_a">세이프티 스토리</a>
                    </li>
                    <li class="hide_li">
                        <a href="../Introduce/safety_ci.jsp" class="navi_hide_a">ci소개</a>
                    </li>
                    <li class="hide_li">
                        <a href="../Introduce/siteMap.jsp" class="navi_hide_a">사이트맵</a>
                    </li>
                    <li class="hide_li">
                        <a href="../Introduce/map.jsp" class="navi_hide_a">위치정보</a>
                    </li>

                </ul>
            </div>

            <div class="list_hide2">

                <ul class="hide_ul2">
                    <!-- 소개 세부 -->
                    <li class="hide_li">
                        <a href="../support/organization_mod.jsp" class="navi_hide_a">단체후원</a>
                    </li>
                    <li class="hide_li">
                        <a href="../support/NewFile.jsp" class="navi_hide_a">개인후원</a>
                    </li>
                    <li class="hide_li">
                        <a href="../support/corporation_mod.jsp" class="navi_hide_a">법인체후원</a>
                    </li>
                    <li class="hide_li">
                        <a href="../support/test4.jsp" class="navi_hide_a">후원금현황</a>
                    </li>

                </ul>
            </div>
            <div class="list_hide3">
                <ul class="hide_ul3">
                    <!-- 소개 세부 -->
                    <li class="hide_li">
                        <a href="../activity/campaign.jsp" class="navi_hide_a">캠페인</a>
                    </li>
                    <li class="hide_li">
                        <a href="../support/caminfor.jsp" class="navi_hide_a">후원자가이드</a> <!-- 미정  -->
                    </li>
                    <li class="hide_li">
                        <a href="../activity/safety_gift.jsp" class="navi_hide_a">후원자선물가게</a><!-- 미정  -->
                    </li>

                </ul>
            </div>
            <div  class="list_hide4">
                <ul class="hide_ul4">
                    <!-- 소개 세부 -->
                    <li class="hide_li">
                        <a href="../ServiceCenter/question_answer.jsp" class="navi_hide_a">Q&A</a>
                    </li>
                    <li class="hide_li">
                        <a href="../ServiceCenter/help.jsp?fno=personal_infor" class="navi_hide_a">개인정보처리방침</a>
                    </li>
                    <li class="hide_li">
                        <a href="../ServiceCenter/help.jsp?fno=access" class="navi_hide_a">이용약관</a>
                    </li>
                    <li class="hide_li">
                    	<a href="../ServiceCenter/help.jsp?fno=personal_info_collectUse" class="navi_hide_a">개인정보 수집 및 이용</a>
                    </li>


                </ul>
            </div>
</div>
