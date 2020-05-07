<%@page import="com.exam.safety.dao.SsabalDAO"%>
<%@page import="com.exam.safety.dto.SsabalVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제방법</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="personal_done_imp.css" type="text/css" />

</head>
<body>
<%
int done = Integer.parseInt(request.getParameter("person"));
int donew = Integer.parseInt(request.getParameter("personboxDirect"));

int fore = Integer.parseInt(request.getParameter("foreign"));
int forew = Integer.parseInt(request.getParameter("foreignboxDirect"));

int kor = Integer.parseInt(request.getParameter("korea"));
int korw = Integer.parseInt(request.getParameter("koreaboxDirect"));

int em = Integer.parseInt(request.getParameter("emer"));
int emw = Integer.parseInt(request.getParameter("emerboxDirect"));



System.out.println(done);


System.out.println(fore);
//System.out.println(forew);

System.out.println(kor);
//System.out.println(korw);

System.out.println(em);

System.out.println("해외 : "+forew+"개인 : "+donew+"국내 : "+korw+"긴급 : "+emw);

int total = done+fore+kor+em+donew+forew+korw+emw;

System.out.println(total);


/* 토탈 총 후원금이 0원 일 경우 알림으로 후원금이 없다고 말하고 결제방법 선택 페이지로 이동 */
if(total==0){
	out.println("<script>alert('후원금이 없습니다.'); document.location.href='NewFile.jsp';</script>");
}


%>

<!-- ===========nav ================ -->
<jsp:include page="../etc/sf_nav.jsp"></jsp:include>









<br />

<div class="balis">
</div>
<!-- 초반 이미지 부분 -->

<form action="travis2.jsp">
<input type="hidden" name="done" value="<%=done%>"/>
<input type="hidden" name="donew" value="<%=donew%>"/>

<input type="hidden" name="fore" value="<%=fore%>"/>
<input type="hidden" name="forew" value="<%=forew%>"/>

<input type="hidden" name="kor" value="<%=kor%>"/>
<input type="hidden" name="korw" value="<%=korw%>"/>

<input type="hidden" name="em" value="<%=em%>"/>
<input type="hidden" name="emw" value="<%=emw%>"/>

<input type="hidden" name="total" value="<%=total%>"/>


  <table class="table">
    <caption>표 제목</caption>
    <tr>
    	<th style="border-right: hidden;"></th>
    	<th style="border-right: hidden;">후원방법</th>
    	<th style="border-right: hidden;"></th>
    </tr>

		<tr>
			<td style="border-right: hidden;">카카오페이로 후원</td>
			<td style="border-right: hidden;"></td>
			<td style="border-right: hidden;">
				<img src="../image/wowowo.png" alt="" />
				<input type="checkbox" name="check" id="check" value="99" style="width: 20px; height: 20px"/>
			</td>
		</tr>
		<tr>
			<td style="border-right: hidden;">신용카드로 후원</td>
			<td style="border-right: hidden;"></td>
			<td style="border-right: hidden;">
				<img src="../image/card.jpg" alt="" />
				<input type="checkbox" name="check" id="check" value="88" style="width: 20px; height: 20px"/>
			</td>
		</tr>

		<tr>
			<td style="border-right: hidden; border-bottom: hidden;">후원자 이름</td>
			<td style="border-right: hidden; border-bottom: hidden;"></td>
			<td style="border-right: hidden; border-bottom: hidden;"><input type="text" name="names" id="names"  class="inputclass1"/></td>
		</tr>

		<tr>
			<td style="border-right: hidden; border-bottom: hidden;"></td>
			<td style="border-right: hidden; border-bottom: hidden;"></td>
			<td style="border-right: hidden; border-bottom: hidden;">* 실명이 아닌 익명, 가명으로 기부 가능합니다. *</td>

		</tr>

		<tr>
			<td style="border-right: hidden; border-bottom: hidden;"></td>
			<td style="border-right: hidden; border-bottom: hidden;"></td>
			<td style="border-right: hidden; border-bottom: hidden; color: red; text-align: right;">총 후원금 : <%= total %></td>
		</tr>


			<tr>
				<td style="border-right: hidden; border-bottom:none;"></td>

					<td style="border-bottom:none;  text-align: center;">
					<br></br><br></br>
						<input type="submit" value="후원하기" id="btn" style="width: 150px; height: 78px; text-align: center; font-size: 18px; "/>
					</td>

				<td style="border-right: hidden; border-left: hidden; border-bottom:none;"></td>
			</tr>

  </table>
  <br /><br />

</form>
 <hr style=" width: 800px; "/>

 <br /><br />
											<h5>SAFETY의 후원회원이 되시면,</h5>
                      <h6 class="nbg">지정기부금은 소득금액의 30%, 법정기부금은 소득금액의 100% 한도 내에서 15% 세액공제 받으실 수 있습니다.</h6>
                      <br />
                      <h6><button onclick="window.open('../support/list.jsp', '함께한 사람들','width=350px, height=400px')">함께한 사람들</button></h6>

  <!— ==================footer============= —>
  <jsp:include page="../etc/project_footer.jsp"></jsp:include>


</body>
</html>