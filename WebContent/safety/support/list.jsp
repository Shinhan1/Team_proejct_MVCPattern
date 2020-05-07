<%@page import="com.exam.safety.dao.SsabalDAO"%>
<%@page import="com.exam.safety.dto.SsabalVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
    .table {
      border-collapse: collapse;
      border-top: 3px solid #168;
      margin: 0 auto;
    }  
    .table th {
      color: #168;
      background: #f0f6f9;
      text-align: center;
    }
    .table th, .table td {
      padding: 10px;
      border: 1px solid #ddd;
    }
    .table th:first-child, .table td:first-child {
      border-left: 0;
    }
    .table th:last-child, .table td:last-child {
      border-right: 0;
    }
    .table tr td:first-child{
      text-align: center;
    }
    .table caption{caption-side: bottom; display: none;}
    
    th{
    	font-size: 20px;
    }
    th{
    	width : 30%;
    }
  </style>
</head>
<body>
  <table class="table">
    <caption>표 제목</caption>
    <tr>
    	<th>기부자</th>
    	<th>기부금</th>
    </tr>
    
    <%
   		SsabalDAO dao = new SsabalDAO();
    	ArrayList<SsabalVO> list = dao.blurrys();
    	
    	for(SsabalVO vo : list){
    %>
    	<tr>
    		<td><%= vo.getNames() %></td>
    		<td><%= vo.getDonation() %></td>
    	</tr>
    
    <%
    	}
    %>
    
  </table>    
</body>
</html>