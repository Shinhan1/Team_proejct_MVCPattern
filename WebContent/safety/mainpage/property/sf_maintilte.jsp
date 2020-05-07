<!DOCTYPE html>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<link rel="stylesheet" href="../../css/sf_maintitle.css">
<script type="text/javascript">
//current position
var pos = 0;   //인트값 총 페이지

//number of slides
var totalSlides = $('#slider-wrap ul li').length;
//get the slide width
var sliderWidth = $('#slider-wrap').width();
/* ------------변수 선언 */

function pagination(){
    $('#pagination-wrap ul li').removeClass('active');
    $('#pagination-wrap ul li:eq('+pos+')').addClass('active');
}
$(document).ready(function(){


    //set width to be 'x' times the number of slides
    $('#slider-wrap ul#slider').width(sliderWidth*totalSlides);

    //next slide
    $('#next').click(function(){
        slideRight();
    });

    //previous slide
    $('#previous').click(function(){
        slideLeft();
    });



    //automatic slider   /* 자동으로  slideRight 실행*/
    var autoSlider = setInterval(slideRight, 3000);





    //for each slide /* 되돌아가기 */
    $.each($('#slider-wrap ul li'), function() {

       //create a pagination
       var li = document.createElement('li');
       $('#pagination-wrap ul').append(li);
    });



    //pagination
    pagination();

    //hide/show controls/btns when hover
    //pause automatic slide when hover
    $('#slider-wrap').hover(
      function(){ $(this).addClass('active'); clearInterval(autoSlider); },
      function(){ $(this).removeClass('active'); autoSlider = setInterval(slideRight, 3000); }
    );



});//DOCUMENT READY



/***********
 SLIDE LEFT
************/
function slideLeft(){
    pos--;
    if(pos==-1){ pos = totalSlides-1; }
    $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos));

    //*> optional
    countSlides();
    pagination();
}


/************
 SLIDE RIGHT
*************/
function slideRight(){
    pos++;
    if(pos==totalSlides){ pos = 0; }
    $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos));

    //*> optional
  pagination();
}




/************************
 //*> OPTIONAL SETTINGS
************************/



</script>
<div id="wrapper">
      <div id="slider-wrap">
          <ul id="slider">
             <li data-color="#1abc9c">
                <div>
                    <h3>Slide #1</h3>
                    <span>Sub-title #1</span>
                </div>

<img src="../../image/main_img_1.png">
             </li>

             <li data-color="#3498db">
                <div>
                    <h3>Slide #2</h3>
                    <span>Sub-title #2</span>
                </div>
<img src="https://fakeimg.pl/350x200/D27328/000?text=22222">
             </li>

             <li data-color="#9b59b6">
                <div>
                    <h3>Slide #3</h3>
                    <span>Sub-title #3</span>
                </div>
<img src="https://fakeimg.pl/350x200/FF607F/000?text=33333">
             </li>

             <li data-color="#34495e">
                <div>
                    <h3>Slide #4</h3>
                    <span>Sub-title #4</span>
                </div>
<img src="https://fakeimg.pl/350x200/0A6E0A/000?text=44444">
             </li>

             <li data-color="#e74c3c">
                <div>
                    <h3>Slide #5</h3>
                    <span>Sub-title #5</span>
                </div>
<img src="https://fakeimg.pl/350x200/0064CD/000?text=55555">
             </li>


          </ul>

           <!--controls-->
          <div class="btns" id="next"><i class="fa fa-arrow-right"></i></div>
          <div class="btns" id="previous"><i class="fa fa-arrow-left"></i></div>
          <div id="counter"></div>

          <div id="pagination-wrap">
            <ul>
            </ul>
          </div>
          <!--controls-->

      </div>

   </div>


