<%@page import="com.exam.safety.dao.SsabalDAO"%>
<%@page import="com.exam.safety.dto.SsabalVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 후원</title>
<link rel="stylesheet" href="personal_done_imp.css" type="text/css" />

<!--   <script type="text/javascript">
    function inNumber(){
        if(event.keyCode<48 || event.keyCode>57){
           event.returnValue=false;
        }
    }
    </script> -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<script type="text/javascript">

	$(function(){

		      //직접입력 인풋박스 기존에는 숨어있다가

		$("#personboxDirect").hide();
		$("#koreaboxDirect").hide();
		$("#emerboxDirect").hide();
		$("#foreignboxDirect").hide();



		$("#person").change(function() {



		                //직접입력을 누를 때 나타남

				if($("#person").val() == "00") {
					$("#personboxDirect").show();
				}  else {
					$("#personboxDirect").hide();
				}
			})


			/* =================================================================== */

			$("#korea").change(function() {



                //직접입력을 누를 때 나타남

		if($("#korea").val() == "00") {
			$("#koreaboxDirect").show();
		}  else {
			$("#koreaboxDirect").hide();
		}
	});

/* =================================================================== */

$("#emer").change(function() {



                //직접입력을 누를 때 나타남

		if($("#emer").val() == "00") {
			$("#emerboxDirect").show();
		}  else {
			$("#emerboxDirect").hide();
		}
	});

/* =================================================================== */

$("#foreign").change(function() {



                //직접입력을 누를 때 나타남

		if($("#foreign").val() == "00") {
			$("#foreignboxDirect").show();
		}  else {
			$("#foreignboxDirect").hide();
		}
	});

/* =================================================================== */




		});



</script>
<!-- 숫자만 입력 -->
  <script type="text/javascript">
    function inNumber(){
        if(event.keyCode<48 || event.keyCode>57){
           event.returnValue=false;
        }
    }
    </script>
</head>
<body>

<!-- nav ======================================= -->
<jsp:include page="../etc/sf_nav.jsp"></jsp:include>

<br />

<div class="balis">
</div>

	<form action="nextfile.jsp">
		<table class="table">
			<caption>개인 후원</caption>
			<tr>
				<th style="border-right: hidden;">후원 분야</th>
				<th style="border-right: hidden; text-align: right;">금액</th>
				<th style="border-right: hidden;"></th>
			</tr>

			<tr>
				<td style="border-right: hidden;">개인후원</td>
				<td style="border-right: hidden; text-align: right;"><select
					name="person" id="person">
						<option value="0">선택</option>
						<option value="100000">100000</option>
						<option value="50000">50000</option>
						<option value="30000">30000</option>
						<option value="20000">20000</option>
						<option value="00">직접입력</option>
				</select></td>
				<td style="border-right: hidden;"><input type="text"
					onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
					id="personboxDirect" name="personboxDirect" value="0"
					class="inputclass" />&nbsp;&nbsp;원</td>
			</tr>
			<!-- ==================================================================== -->
			<tr>
				<td style="border-right: hidden;">해외후원</td>
				<td style="border-right: hidden; text-align: right;"><select
					name="foreign" id="foreign">
						<option value="0">선택</option>
						<option value="100000">100000</option>
						<option value="50000">50000</option>
						<option value="30000">30000</option>
						<option value="20000">20000</option>
						<option value="00">직접입력</option>
				</select></td>
				<td style="border-right: hidden;"><input type="text"
					onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
					id="foreignboxDirect" name="foreignboxDirect" value="0"
					class="inputclass" />&nbsp;&nbsp;원</td>
			</tr>
			<!-- ==================================================================== -->
			<tr>
				<td style="border-right: hidden;">국내후원</td>
				<td style="border-right: hidden; text-align: right;"><select
					name="korea" id="korea">
						<option value="0">선택</option>
						<option value="100000">100000</option>
						<option value="50000">50000</option>
						<option value="30000">30000</option>
						<option value="20000">20000</option>
						<option value="00">직접입력</option>
				</select></td>
				<td style="border-right: hidden;"><input type="text"
					onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
					id="koreaboxDirect" name="koreaboxDirect" value="0"
					class="inputclass" />&nbsp;&nbsp;원</td>
			</tr>
			<!-- ==================================================================== -->
			<tr>
				<td style="border-right: hidden;">긴급구호/인도적지원</td>
				<td style="border-right: hidden; text-align: right;"><select
					name="emer" id="emer">
						<option value="0">선택</option>
						<option value="100000">100000</option>
						<option value="50000">50000</option>
						<option value="30000">30000</option>
						<option value="20000">20000</option>
						<option value="00">직접입력</option>
				</select></td>
				<td style="border-right: hidden;"><input type="text"
					onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
					id="emerboxDirect" name="emerboxDirect" value="0"
					class="inputclass" />&nbsp;&nbsp;원</td>
			</tr>

			<tr>
				<td style="border-right: hidden; border-bottom: none;"></td>

				<td style="border-bottom: none; text-align: center;"><br></br>
				<br></br> <input type="submit" value="다음" id="btn"
					style="width: 150px; height: 78px; text-align: center; font-size: 18px;" />
				</td>

				<td
					style="border-right: hidden; border-left: hidden; border-bottom: none;"></td>
			</tr>

		</table>
		<br />
		<br />
		<hr style="width: 800px;" />

	</form>
	<!— =========================결제end================================= —>

	<br />
	<br />
	<h5>SAFETY의 후원회원이 되시면,</h5>
	<h6 class="nbg">지정기부금은 소득금액의 30%, 법정기부금은 소득금액의 100% 한도 내에서 15%
		세액공제 받으실 수 있습니다.</h6>
	<br />
	<br />
	<h6>
		<button
			onclick="window.open('../support/list.jsp', '함께한 사람들','width=350px, height=400px')">함께한
			사람들</button>
	</h6>


	<!— ===========================푸터달곳 ==================================== —>

	<jsp:include page="../etc/project_footer.jsp"></jsp:include>

</body>
</html>