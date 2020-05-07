<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<div class="w3-container">
  <h2>Dynamic Progress Bar</h2>

  <div class="w3-light-grey">
    <div id="myBar" class="w3-green" style="height:24px;width:0"> 1단계 </div>
  </div>
  <br>

</div>

<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>

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

</body>
</html> 
