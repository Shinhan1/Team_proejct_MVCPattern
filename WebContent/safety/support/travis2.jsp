<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<%
		System.out.println("==================================================");


      	//읽어옴
        int done = Integer.parseInt(request.getParameter("done"));
        String donew = request.getParameter("donew");
        if(donew == null){
        	donew = "0";
        }
        int donews = Integer.parseInt(donew);

		int fore = Integer.parseInt(request.getParameter("fore"));
		String forew = request.getParameter("forew");
		if(forew == null){
			forew = "0";
		}
		int forews = Integer.parseInt(forew);

		int kor = Integer.parseInt(request.getParameter("kor"));
		String korw = request.getParameter("korw");
        if(korw == null){
        	korw = "0";
        }
        int korws = Integer.parseInt(korw);

		int em = Integer.parseInt(request.getParameter("em"));
		String emw = request.getParameter("emw");
        if(emw == null){
        	emw = "0";
        }
        int emws = Integer.parseInt(emw);

        String names = request.getParameter("names");

        if(names==""){
        	out.println("<script>alert('이름을 입력하지 않았습니다. 처음으로 돌아갑니다.'); document.location.href='NewFile.jsp';</script>");
        }



		System.out.println("==================================================");
		System.out.println(done);
		System.out.println(donews);
		System.out.println(fore);
		System.out.println(forews);
		System.out.println(kor);
		System.out.println(korws);
		System.out.println(em);
		System.out.println(emws);
		System.out.println(names+"%%%%%%%%%%%%%%%");


		int total = done+fore+kor+em+donews+forews+korws+emws;

		int ko = 0;

		String checks = request.getParameter("check");
		if(checks!=null){
		ko = Integer.parseInt(request.getParameter("check"));
		}else{
			out.println("<script>alert('결제방법을 선택하지 않았습니다. 처음으로 돌아갑니다.'); document.location.href='NewFile.jsp';</script>");
		}
		System.out.println(ko);


		String kol = null;

		/* 이 부분은 카카오 결제 카드결제 나누는 부분임 */
      	if (ko < 90) {
      		kol = "imp87367715";
      	} else {
      		kol = "imp94723924";
      	}


      %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/httpRequest.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<title>Money</title>

<script>
   $(function(){


     var msg = "";
     var buyer_name ="";

      var IMP = window.IMP; // 생략가능
      IMP.init('<%= kol %>');

      IMP.request_pay({
          pg : 'inicis', // version 1.1.0부터 지원.
          pay_method : 'kakao',
          merchant_uid : 'merchant_' + new Date().getTime(),
          name : '주문명:결제테스트',
          amount : <%=total %>,
          buyer_email : 'iamport@siot.do',
          buyer_name : '갓오현',
          //company_nane : 'SAFETY'
          buyer_tel : '010-1234-5678',
          buyer_addr : '서울특별시 강남구 삼성동',
          buyer_postcode : '123-456',
          m_redirect_url : 'http://www.naver.com'
      }, function(rsp) {
          if ( rsp.success ) {
              msg = '결제가 완료되었습니다.';
              // msg += '고유ID : ' + rsp.imp_uid;
             // msg += '구매자 이름 : ' + rsp.buyer_name;
              // msg += '상점 거래ID : ' + rsp.merchant_uid;
            //  msg += '결제 금액 : ' + rsp.paid_amount;
              // msg += '카드 승인번호 : ' + rsp.apply_num;

         checkUp();

         alert(msg);

          } else {
              msg = '결제에 실패하였습니다.';
              msg += '에러내용 : ' + rsp.error_msg;
              alert(msg);


          }
          location.href = 'NewFile.jsp';						/* 결제 후 가고싶은 페이지로 이동 */
      });
      function checkUp() {
 					/* 스트링값이라서 ""요 표시가 아니라 ''이렇게만 해서 돌려야 들어갑니다 왕오형 */
         var params = "total=" + encodeURIComponent(<%=total%>) + "&names="+encodeURIComponent('<%=names%>');
         console.log("ddddd");
         sendRequest('insertOK.jsp', params, callback, 'GET');
        /* insertOK로 넘겨서 다오 실행되게하는거임 */

     }


      function callback() {
         if(xhr.readyState==4 & xhr.status==200){
         msg = '결제가 완료되었습니다.';
         alert(msg);
         /*  msg += '구매자 이름 : ' + rsp.buyer_name;*/
         }
     }

   });

   </script>
</head>
<body>
</body>
</html>