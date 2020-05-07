<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../fuckCSS.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="../css/done_mod.css">
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
<meta charset="UTF-8">
<title>mod.jsp</title>
<script>
$(document).ready(
		function move() {
		  var elem = document.getElementById("myBar");
		  var width = 1;
		  var id = setInterval(frame, 10);
		  function frame() {
		    if (width >= 50) {
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

		if($("#price").val().length==0){ alert("금액을 입력하세요."); $("#price").focus(); return false; }

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
  		<h2> 2. 후원 금액 및 매체 선택 단계 :: </h2>
  		<div class="w3-light-grey">
    		<div id="myBar" class="w3-green" style="height:24px;width:0"> 50%
    		</div>
  		</div>
	</div> <br>
<%
request.setCharacterEncoding("UTF-8");
String cr_name = request.getParameter("cr_name");
String cr_number = request.getParameter("cr_number");
String cr_man_name = request.getParameter("cr_man_name");
String cr_man_phone_number = request.getParameter("cr_man_phone_number");
%>




<div id="text">
 <form action="organization_mod3.jsp">
 	<table class="corporation_table">
 		<%-- <%=cr_name %><%=cr_number %><%=cr_man_name %><%=cr_man_phone_number %><%=price %> --%>

<!-- ****************************************************************************************************************************** -->
	<h3>&nbsp;&nbsp;&nbsp;후원 금액 및 매체 선택</h3>
   <tr class="pont_L">
  <th class="pont_L">
		<span>후원 방법  </span>
  			</th>
  			<td>
				<input type="checkbox"
				 name="box"  class="pont_L" id="" value="kakao"/> 카카오페이
				<input type="checkbox" name="box"  id="" value="kg"/> KG이니시스
				<input type="checkbox" name="box"  id="" value="toss"/> 토스
			</td>
   		</tr>

<!-- ****************************************************************************************************************************** -->
   <tr class="f_row">
   	<th class="f_c_row">
    	<span>후원 선택</span>
  			</th>
  			<td>
  				<input type="checkbox" name="box2" class="pont_L" id="" value="regular"/>정기  후원
				<input type="checkbox" name="box2"  id="" value="irregular"/>비 정기 후원
			</td>
   		</tr>
<!-- ****************************************************************************************************************************** -->
<tr class="f_c_row">
  			<th class="f_c_row">
      			<span>후원금액</span>
  			</th>
  			<td>
  				<span>
  					<input type="text" title="후원금액" class="pont_L" id="price" name="price"  placeholder=" 금액을 입력해 주세요." size="30">
  				</span>
  			</td>
   		</tr>
<!-- ****************************************************************************************************************************** -->

	<tr class="f_c_row">
		<td>
			<input type="hidden" title="법인체 명" id="cr_name" name="cr_name" value="<%=cr_name %>" size="50">
			<input type="hidden" title="법인 등록번호" id="cr_number" name="cr_number" value="<%=cr_number %>" size="50">
			<input type="hidden" title="법인체 담당자" id="cr_man_name" name="cr_man_name" value="<%=cr_man_name %>" size="10">
            <input type="hidden" title="담당자 번호" id="cr_man_phone_number" name="cr_man_phone_number" value="<%=cr_man_phone_number %>" size="11">

			<%-- <input type="hidden" title="후원금액" id="price" name="price"  placeholder="price" value="<%=price %>" size="50"> --%>
		<td>
	</tr>
</table>
  <input type="submit" title="다음" id="submit" class="corporation_button"  name="Donation" value="다음 단계" size="50">




   </form>
   </div>
   <br><br><hr>
  </div>
   <div class="falis">
   </div>
   <div class="footer">
 <jsp:include page="../etc/project_footer.jsp" ></jsp:include>
</div>
</body>
</html>