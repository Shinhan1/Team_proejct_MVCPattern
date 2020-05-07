<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">


<link rel="stylesheet" href="../css/sf_ServiceCenter.css">
<script type="text/javascript">

$(function() {
 $('.sf_ServiceCenter_btn1').click(function () {
	 location.href = '../ServiceCenter/inquiry.jsp'; /* 해당링크로 */
 });
 $('.sf_ServiceCenter_btn2').click(function () {
	 location.href = '../ServiceCenter/customer_center.jsp';/* 해당링크로 */
 });
 $('.sf_ServiceCenter_btn3').click(function () {
	 location.href = '../ServiceCenter/question_answer.jsp';/* 해당링크로 */
 });


});


</script>




<div class="sf_ServiceCenter_div">
        <div class="TheNews_div">
            <img src="../image/sf_newImage.png" alt="">

        </div >

        <div class="Notice_div">
            <div>
				<h5 class="sf_ServiceCenter_title">공지사항</h5>
			</div>
			<div>
           		  <img src="../image/newicon1.png" alt="" class="sf_ServiceCenter_icon1" />
             </div>
             <div>
   				 <img src="../image/sf_btn_news.png" alt="" class="sf_ServiceCenter_btn1" />
			</div>
        </div>

 		<div class="service_div">
            <div>
				<h5 class="sf_ServiceCenter_title">고객센터</h5>
			</div>
			<div>
           		  <img src="../image/newicon2.png" alt="" class="sf_ServiceCenter_icon1" />
             </div>
             <div>
   				 <img src="../image/sf_btn_news.png" alt="" class="sf_ServiceCenter_btn2" />
			</div>
        </div>

        <div class="QNA_div">
            <div>
				<h5 class="sf_ServiceCenter_title">Q&A</h5>
			</div>
			<div>
           		  <img src="../image/newicon3.png" alt="" class="sf_ServiceCenter_icon1" />
             </div>
             <div>
   				 <img src="../image/sf_btn_news.png" alt="" class="sf_ServiceCenter_btn3" />
			</div>
        </div>


</div>


