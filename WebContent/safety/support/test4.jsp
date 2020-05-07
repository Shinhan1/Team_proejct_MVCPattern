<%@page import="com.exam.safety.dto.DNVO"%>
<%@page import="com.exam.safety.dao.DNDAO"%>
<%@page import="com.exam.safety.dto.SsabalVO"%>
<%@page import="com.exam.safety.dao.SsabalDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후원금 사용 현황</title>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
   google.charts.load('current', {'packages':['corechart']});
   google.charts.setOnLoadCallback(drawVisualization);

   <%
   SsabalVO vo = new SsabalVO();
   SsabalDAO dao = new SsabalDAO();

   DNDAO dao1 = new DNDAO();
   DNVO vo1 = new DNVO();

   double sumsum = dao.getsum();		/* 개인후원 원금 */
   double people = dao.getpeople();

   double sumsum1 = dao1.getsum();		/* 단체후원 원금 */
   double sumsum2 = sumsum+1000000;



   /* =======그레프 들어갈 돈 ============== */

   double sum = sumsum/10000;			/* 만원 단위로 나눔  개인후원*/
   double sum1 = sumsum1/10000;		/* 단체후원 */
   double sum2 = sumsum2/10000;				/* 기업후원 */

   double total = sumsum+sumsum1+sumsum2;	/* 원금의 총 합 */
   double totals = (sum+sum2+sum2);	/* 그레프 들어갈 돈의 총 합 */


   double total1 = Math.round((sumsum/total)*100)*100/100.0;
   double total2 = Math.round((sumsum1/total)*100);
   double total3 = Math.round((sumsum2/total)*100);


   double mok = sum/totals;

   System.out.println("***********************************");
   System.out.println("sumsum : "+sumsum);
   System.out.println("sumsum1 : "+sumsum1);
   System.out.println("sumsum2 : "+sumsum2);

   System.out.println("total : "+total);
   System.out.println("-----------------------------------");

   System.out.println("total1 : "+total1);
   System.out.println("total2 : "+total2);
   System.out.println("total3 : "+total3);

   %>

   function drawVisualization() {
      var data = google.visualization.arrayToDataTable([
         ['Month', '개인후원', '단체 후원', '기업 후원'],
         ['2020/01',   432,       561,        575],
         ['2020/02',   501,       518,        516],
         ['2020/03',   492,       684,        486],
         ['2020/04',   <%= sum%>,  <%= sum1 %>,   <%= sum2%>]

      ]);

      var options = {
            title : 'support',
            vAxis : {title: 'Price'},
            hAxis : {title: 'Month'},
            seriesType: 'bars',
            series : {5: {type: 'line'}}

      };

      var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
      chart.draw(data, options);


   }

   google.charts.setOnLoadCallback(drawVisualization2);

   function drawVisualization2() {
      var data = google.visualization.arrayToDataTable([
         ['Month', '단체 후원비', '사업비', '관리 운영비'],
         ['2020/01',   156,       561,        575],
         ['2020/02',   874,       518,        516],
         ['2020/03',   515,       684,        486],
         ['2020/04',   516,       987,        248]

      ]);

      var options = {
            title : 'expenditure',
            vAxis : {title: 'Price'},
            hAxis : {title: 'Month'},
            seriesType: 'bars',
            series : {5: {type: 'line'}}

      };

      var chart = new google.visualization.ComboChart(document.getElementById('chart_div2'));
      chart.draw(data, options);


   }


</script>
<script>
$(document).ready(
function move() {
  var elem = document.getElementById("myBar");
  var width = 1;
  var id = setInterval(frame, 30);
  function frame() {
    if (width >= 33) {
      clearInterval(id);
    } else {
      width++;
      elem.style.width = width + '%';
    }
  }
});
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style type="text/css">


   hr.two{width:900px; color:skyblue; border:thin solid skyblue;}

   .main{margin-left: 360px; width:1200px;}

   #btn {width:150px; height: 53px;}

   #skyname{width:180px; height:65px; background-color: skyblue; text-align: center; padding-top: 10px;}



</style>

</head>



<body>


   	<jsp:include page="../etc/dona.jsp" />
<jsp:include page="../etc/sf_nav.jsp"></jsp:include>

<div class="main">
	<div style="height: 80px;"></div>


   <div style="margin: 100px 0 0 40px;">

    <h1>한국 위원회</h1>

   </div>


   <div style="margin: 130px 200px 100px 40px;">

       <h2>* 2020년 세이프티위원회 결산</h2>

   <div style="float: right;">

      <select name="year" style="width:75px; height:30px;">

          <option value="2020">2020</option>

          <option value="2019">2019</option>

          <option value="2018">2018</option>

          <option value="2017">2017</option>

      </select>

   </div>
   </div>






   <div style="margin:0 0 0 700px;">

      <input id="btn" type="button" value="감사보고서보기" style="border:0; outline:0; background-color:#4364ae; color:white; font-size: 20px;" />

      <input id="btn" type="button" value="연차보고서보기" style="border:0; outline:0; background-color:#4364ae; color:white; font-size: 20px;"/>

   </div>



   <div id="skyname" style=" margin:0px 0 0 42px;">

   <h2 style="margin-top: 12px; font-weight: bold;">2020 수입</h2>

   </div>



   <hr class="two" style="margin: 0 0 0 42px;">



   <div id="chart_div" style="width:1000px; height:500px; margin: 20px 0 0 40px;"></div>





   <div style="margin: 60px 0 0 100px;">



   <table border="1" bordercolor="black" width ="800" height="300"  >

    <tr bgcolor="gray" align ="right">

   <p><td colspan = "3" style="color:white">총 후원 금액 : 165,818,255,515원</td></p>

    </tr>



    <tr align = "center" bgcolor="grey">

   <td>구분</td>

   <td>금액(원)</td>

   <td>비율</td>

    </tr>



    <tr>

   <td align = "center">개인후원</td>

   <td align = "right"><%= sumsum %></td>

   <td align = "right"><%= total1 %>%</td>

    </tr>





    <tr>

   <td align = "center">단체후원</td>

   <td align = "right"><%= sumsum1 %></td>

   <td align = "right"><%=total2 %>%</td>

    </tr>





    <tr>


   <td align = "center">기업후원</td>

   <td align = "right"><%=sum2 %></td>

   <td align = "right"><%= total3%>%</td>

    </tr>





    <tr>

   <td rowspan="2" align = "center" bgcolor="gray">총계</td>

   <td align = "center">소계</td>

   <td></td>

    </tr>





    <tr>

   <td align = "right"><%= total %></td>

   <td align = "right">100.0%</td>

    </tr>







   </table>



   </div>



   <div style="width:1200px; height:140px;  margin: 40px 0 0 0;">

   <h3 style="margin: 30px 0 0 100px;">*정기후원 : 매월 정해진 금액을 후원하는 것</h3>

   <h3 style="margin: 30px 0 0 100px;">*일시후원 : 개인이나 단체가 비정기적으로 후원하는 것</h3>

   <h3 style="margin: 30px 0 0 100px;">*이자수익 및 기타 : 예금이자수익 등</h3>



   </div>



   <div id="skyname" style=" margin:20px 0 0 40px;">

   <h2 style="margin-top: 12px; font-weight: bold;">2020 지출</h2>

   </div>



   <hr class="two" style="margin:0 0 0 40px;">





   <div id="chart_div2" style="width:1000px; height:500px; margin: 20px 0 0 40px;"></div>



   <div style="margin: 60px 0 0 100px;">



   <table border="1" bordercolor="black" width ="800" height="300" >

    <tr bgcolor="grey" align ="right">

   <p><td colspan = "3" style="color:white">총 지출 : 165,845,515,818원</td></p>

    </tr>



    <tr align = "center" bgcolor="grey">

   <td>구분</td>

   <td>금액(원)</td>

   <td>비율</td>

    </tr>



    <tr>

   <td align = "center">개발도상국 지원비</td>

   <td align = "right">123,516,515,516</td>

   <td align = "right">84.4%</td>

    </tr>





    <tr>

   <td align = "center">사업비</td>

   <td align = "right">515,515,518</td>

   <td align = "right">3.9%</td>

    </tr>





    <tr>

   <td align = "center">관리 운영비</td>

   <td align = "right">861,818,357</td>

   <td align = "right">4.3%</td>

    </tr>





    <tr>

   <td rowspan="2" align = "center" bgcolor="grey">총계</td>

   <td align = "center">소계</td>

   <td></td>

    </tr>





    <tr>

   <td align = "right">878,578,115,881</td>

   <td align = "right">100.0%</td>

    </tr>







   </table>



   </div>



   <div style="width:1200px; height:200px;  margin: 40px 0 0 0;">

   <h4 style="margin: 30px 0 0 100px;">*개발도상국 지원비: 157개 나라의 유니세프 프로그램 지원비이며, 당해년도 모금수입의 85%를 지원하고 있음</h4>

   <h4 style="margin: 30px 0 0 100px;">*사업비 : 후원자관리 및 제반 홍보활동 포함</h4>

   <h4 style="margin: 30px 0 0 100px;">*아동권리 증진: 국내아동권리 증진 및 교육 프로그램</h4>

   <h4 style="margin: 30px 0 0 100px;">*관리 운영비: 법인 운영관련 비용 및 인건비 등</h4>



   </div>




 </div>

<jsp:include page="../etc/project_footer.jsp"></jsp:include>



</body>

</html>