<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../fuckCSS.css">
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
<link rel="stylesheet" href="../css/done_mod.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>


<script>
$(document).ready(
function move() {
  var elem = document.getElementById("myBar");
  var width = 1;
  var id = setInterval(frame, 10);
  function frame() {
    if (width >= 25) {
      clearInterval(id);
    } else {
      width++;
      elem.style.width = width + '%';
    }
  }
});
function openWin(){
    window.open("http://dart.fss.or.kr/", "네이버새창", "width=800, height=700, toolbar=no, menubar=no,resizable=yes" );
}
//-->
</script>
<script>

$(document).ready(function(){
	$("#submit").click(function(){

		if($("#cr_name").val().length==0){ alert("단체 명을 입력하세요."); $("#cr_name").focus(); return false; }
			if($("#cr_number").val().length==0){ alert("법인등록번호를 입력하세요."); $("#cr_number").focus(); return false; }
			if($("#cr_number").val().length!=13){ alert("사업자 등록번호는 '-제외' 10자리 입니다."); $("#cr_number").focus(); return false; }
			if($("#cr_man_name").val().length==0){ alert("법인 담당자를 입력하세요."); $("#cr_man_name").focus(); return false; }
			if($("#cr_man_phone_number").val().length==0){ alert("담당자 휴대폰번호를 입력하세요."); $("#cr_man_phone_number").focus(); return false; }
			if($("#cr_man_phone_number").val().length!=11){ alert("휴대폰 번호는 '-'제외  11자리입니다.'"); $("#cr_man_phone_number").focus(); return false; }

		});
});
</script>
<style>
.falis{margin-top: 670px;margin-right: -800px;}
.balis{background-image: url("../image/chd.jpg");height:300px;width:1920px;}
.topsi{height:75px;}
</style>
</head>
<body>
	<jsp:include page="../etc/dona.jsp" />
	<div class="top"><jsp:include page="../etc/sf_nav.jsp" ></jsp:include></div>
	<div class="topsi"></div>
	<div class="balis"></div>
<div class="alis">
	<%@include file="organizationHeader.jsp" %>
		<div class="w3-container">
  			<h2> 1. 단체 정보 입력단계 :: </h2>
  		<div class="w3-light-grey">
    		<div id="myBar" class="w3-green" style="height:24px;width:0"> 25% </div>
  		</div>
	</div><br>


<div id="text">
 <form action="organization_mod2.jsp"> <!--form action="mod_2.jsp">  -->
 	<table class="corporation_table">
<!-- ****************************************************************************************************************************** -->
	<h3>&nbsp;&nbsp;&nbsp;단체 정보 입력</h3>
   <tr class="pont_L">
  <th class="pont_L">
      <span>단체 명   </span>
  </th>
  <td>
  <span><input type="text" title="법인체 명" class="pont_L"id="cr_name" name="cr_name" placeholder=" 단체 명" size="40" maxlength="20"></span>

  </td>
   </tr>

<!-- ****************************************************************************************************************************** -->
   <tr class="f_row">  <th class="f_c_row">
      <span>사업자등록번호 &nbsp;&nbsp;&nbsp;</span>
      <!--법인 등록번호 13자리 | 사업자 등록번호 10자리 -->
  </th>
  <td>
 	 <span>
  		<input type="text" title="법인 등록번호" class="pont_L" id="cr_number" name="cr_number" placeholder="  13자리 '-'제외 " size="20" maxlength="20">
  		<input type="button" id="cr_number" name="cr_number" value=" 사업자등록번호가 기억이 안나요." size="50"  onclick="javascript:openWin()">
  	</span>
  </td>
   </tr>
<!-- ****************************************************************************************************************************** -->

   <tr>
  <th class="f_c_row">
      <span>담당자 명</span>
  </th>
  <td>
  <span><input type="text" title="법인체 담당자" class="pont_L" id="cr_man_name" name="cr_man_name" placeholder=" 단체 담당자 " size="20" maxlength="20"></span>
  </td>
   </tr>

<!-- ****************************************************************************************************************************** -->
   <tr class="f_row">
  <th class="f_c_row">
      <span>담당자 번호</span>
  </th>
  <td>
  <span><input type="text" title="담당자 번호" class="pont_L" id="cr_man_phone_number" name="cr_man_phone_number" placeholder="  -제외 11자 입력 " size="40" maxlength="20"></span>

  </td>
   </tr>







</table>

  <input type="submit" title="다음" class="corporation_button" id="submit" name="Donation" value="다음 단계" size="40" maxlength="20">
   </form>
   </div><br><br><hr>



   </div>

   <div class="falis">
  </div>
<div class="footer">
 <jsp:include page="../etc/project_footer.jsp" ></jsp:include>
</div>
</body>
</html>











