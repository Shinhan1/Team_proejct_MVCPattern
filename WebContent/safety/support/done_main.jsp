<%@page import="com.exam.safety.dao.SsabalDAO"%>
<%@page import="com.exam.safety.dto.SsabalVO"%>
<%@page import="com.exam.safety.dto.DNVO"%>
<%@page import="com.exam.safety.dao.DNDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/done_main.css">

<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
   // 배너의 위치를 가져와 저장
   var floatPosition = parseInt($("#floatMenu").css('top'));
   $(window).scroll(function() {
      // 현재 스크롤 위치를 가져온다.
      var scrollTop = $(window).scrollTop();
      var newPosition = scrollTop + floatPosition + "px";
      $("#floatMenu").stop().animate({
         "top" : newPosition
      }, 000);
   }).scroll();
});
</script>
<title>Insert title here</title>

</head>
<%
DNDAO dao = new DNDAO();
DNVO vo = new DNVO();
SsabalVO vo1 = new SsabalVO();
SsabalDAO dao1 = new SsabalDAO();


int sumsum = dao.getsum();
int people = dao.getpeople();
int sumsum1 = dao1.getsum();
int people1 = dao1.getpeople();
System.out.println(sumsum);

int hapsum = sumsum+sumsum1;
int happeo = people+people1;

%>
<style>.topsi{height:25px;}.bottomis{height:420px;}
#btndd{ border: 1px solid skyblue; background-color: rgba(0,0,0,0); color: skyblue;
 padding: 5px; width: 250px; height: 135px; font-size: 30px; margin : 0 auto; margin-left: 50px; margin-bottom:-50px;}
#btndd:hover{ color:white; background-color: skyblue; }
.sssi{
margin-bottom: 35px;
}
.xxx{
margin-top: 90px;
}
</style>
<body>

   <div class="top"><jsp:include page="../etc/sf_nav.jsp" ></jsp:include></div>
    <div class="topsi"></div>
   <section id="edgar" class="appear">
      <div class="lbwrap">
         <img src="../image/lbjpg2.png" alt="my images" class="lbimg">
         <div class="fonts">세이프티는 전 세계 아동의 권리가 지켜지도록 노력하고 도움이 필요한
            아동들의 경제적, 사회적 자립을 돕습니다.</div>

         <div class="sboard1">
            <h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;함께 한 후원자 </h5>
            <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=happeo %>명 </h3>
         </div>
         <div class="sboard2">
            <h5>지원 아동·가족 및 지역사회 </h5>
            <h3>&nbsp;&nbsp;: 3,845,640명</h3>
         </div>
         <div class="sboard3">
            <h5>&nbsp;&nbsp;전체 후원금 </h5>
            <h3>&nbsp; <%= hapsum %> 원 </h3>
         </div>
         <ul class="slides">
            <input type="radio" name="radio-btn" id="img-1" checked />
            <li class="slide-container">
               <div class="slide">
                  <img src="../image/SAF1.png" />
               </div>
               <div class="navii">
                  <label for="img-6" class="prev">&#x2039;</label>
                  <label for="img-2" class="next">&#x203a;</label>
               </div>
            </li>

            <input type="radio" name="radio-btn" id="img-2" />
            <li class="slide-container">
               <div class="slide">
                  <img src="../image/SAF2.jpg" />
               </div>
               <div class="navii">
                  <label for="img-1" class="prev">&#x2039;</label>
                  <label for="img-3" class="next">&#x203a;</label>
               </div>
            </li>

            <input type="radio" name="radio-btn" id="img-3" />
            <li class="slide-container">
               <div class="slide">
                  <img src="../image/SAF3.png">
               </div>
               <div class="navii">
                  <label for="img-2" class="prev">&#x2039;</label>
                  <label for="img-4" class="next">&#x203a;</label>
               </div>
            </li>

            <input type="radio" name="radio-btn" id="img-4" />
            <li class="slide-container">
               <div class="slide">
                  <img src="../image/SAF1.png" />
               </div>
               <div class="navii">
                  <label for="img-3" class="prev">&#x2039;</label>
                  <label for="img-5" class="next">&#x203a;</label>
               </div>
            </li>

            <input type="radio" name="radio-btn" id="img-5" />
            <li class="slide-container">
               <div class="slide">
                  <img src="../image/SAF2.jpg" />
               </div>
               <div class="navii">
                  <label for="img-4" class="prev">&#x2039;</label>
                  <label for="img-6" class="next">&#x203a;</label>
               </div>
            </li>

            <input type="radio" name="radio-btn" id="img-6"  />
            <li class="slide-container">
               <div class="slide">
                  <img src="../image/SAF3.png" />
               </div>
               <div class="navii">
                  <label for="img-5" class="prev">&#x2039;</label>
                  <label for="img-1" class="next">&#x203a;</label>
               </div>
            </li>

            <li class="nav-dots">
               <label for="img-1" class="nav-dot" id="img-dot-1"></label>
                <label for="img-2" class="nav-dot" id="img-dot-2"></label>
                <label for="img-3" class="nav-dot" id="img-dot-3"></label>
                <label for="img-4" class="nav-dot" id="img-dot-4"></label>
                <label for="img-5" class="nav-dot" id="img-dot-5"></label>
                <label for="img-6" class="nav-dot" id="img-dot-6"></label>
             </li>
         </ul>
      </div>
   </section>
   <!-- ===================================  정회석 부분  ========================================== -->
   <br /><br /><br /><br />
   <br /><br /><br /><br />
   <br /><br /><br /><br />
   <br /><br /><br /><br />
   <br /><br /><br /><br />
   <br /><br /><br /><br />
   <br /><br /><br /><br />
   <br /><br /><br /><br />
   <br /><br /><br /><br />
  <br /><br /><br /><br />
   <br /><br /><br /><br />
   <br /><br /><br />





 <div class="xxx">
 <img alt="" src="../image/chd.jpg" class="sssi">
</div>

 <button id="btndd"><a href="NewFile.jsp">개인후원</a></button>
 <button id="btndd"><a href="corporation_mod.jsp">법인후원</a></button>
 <button id="btndd"><a href="organization_mod.jsp">단체후원</a></button>
 <button id="btndd"><a href="../ServiceCenter/question_answer.jsp">Q&A</a></button>
 <button id="btndd"><a href="../ServiceCenter/inquiry.jsp">1:1문의</a></button>
 <button id="btndd"><a href="caminfor.jsp">후원가이드</a></button>





   <div class="bottomis"></div>
   <div class="footer"><jsp:include page="../etc/project_footer.jsp" ></jsp:include></div>
</body>
</html>