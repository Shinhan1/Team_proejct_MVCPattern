<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/*
    Popup
*/
body.ov {overflow-y:hidden;height:100%;}
.popup-wrap{
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 999999;
}
.popup-wrap .dimmed{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 1;
    background: rgba(0,0,0,.65);
}
.popup{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 460px;
    background: #fff;
    z-index: 2;
}
.popup-head{
    position: relative;
    padding: 25px 33px 0 28px;
    height: 74px;
    border-bottom: 1px solid #e5e5e5;
}
.popup-head:after{
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 454px;
    height: 20px;
    border-top: 3px solid #da281f;
    border-right: 3px solid #da281f;
    border-left: 3px solid #da281f;
}
.popup-head h1{
    float: left;
    font-size: 23px;
    color: #333333;
}
button.popup-close{
    float: right;
    width: 25px;
    height: 25px;
    background: url('/webPub/sc_2018/images/support/popup_close_btn.png');
}
.popup-body{
    padding: 45px 25px 0;
}
.popup-body h2{
    font-size: 1.04em;
    color: #333333;
    line-height: 24px;
    text-align: center;
}
.popup-body h2 span{
    color: #da281f;
}
.user-border{
    margin: 12px 0 15px;
    padding: 24px 0 22px;
    text-align: center;
    border-top: 1px solid #dddddd;
    border-bottom: 1px solid #dddddd;
}
.user-border span{
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
    font-size: 15px;
    font-weight: bold;
    color: #555555;
}
.u-title{
    padding-right: 27px;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.03em;
    font-size: 15px;
    font-weight: bold;
    color: #555555;
}
.popup-btn-group{
    text-align: center;
}
.btn-cancel,
.btn-confirm{
    margin: 0 3px;
    width: 120px;
    height: 49px;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
    font-weight: bold;
}
.btn-cancel{
    border: 1px solid #cccccc;
    color: #333333;
}
.btn-confirm{
    color: #fff;
    background: #7a634f;
}
.popup-foot{
    margin-top: 55px;
    padding: 29px 40px 27px;
    border-top: 1px solid #e5e5e5;
}
.popup-foot h3{
    padding-bottom: 12px;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
    font-size: 14px;
    color: #7a634f;
}
.popup-foot p{
    padding-top: 15px;
    text-align: center;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
    font-size: 14px;
    font-weight: bold;
    color: #da281f;
}
.popup-foot ul li{
    line-height: 21px;
    font-size: 13px;
    color: #555555;
    padding-bottom: 7px;
    /* white-space: nowrap; */
}
.popup-foot h3 ~ ul li { white-space: nowrap; }
.popup-foot ul li:before{
    top: 9px;
}
.a-arrow{
    display: inline-block;
    vertical-align: middle;
    margin-left: 15px;
    padding-right: 11px;
    background: url('/webPub/sc_2018/images/support/a-arrow.png') no-repeat right center;
}
.btn-m{
    margin-top: 18px;
}
.set1{
    margin-top: 50px;
    padding: 29px 30px 27px;
}
.set2{
    padding: 45px 60px 0;
    text-align: center;
}
.set2 h2{
    padding-top: 2px;
    font-size: 17px;
}
.set2 p{
    padding: 8px 0 12px;
    line-height: 20px;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.04em;
    font-size: 14px;
    color: #555555;
}
.set4 { width: 550px; }
.set4 h1 { letter-spacing: -0.04em; }
.set4 .popup-head:after { box-sizing: border-box; width: 100%;}
.set4 span { font-size: 13px; color: #777777; }
.set4 ul li { font-size: 13px; color: #555555; }
.set4 .gray-box { margin: 15px 0 7px; }
.set4 .popup-foot { padding: 10px 40px; }
.set4 .check-left .checkbox { margin-top: 16px; font-size: 1.04em; letter-spacing: -0.06em; font-family: 'NanumSquare'; }

.gray-box{
    padding: 17px 40px;
    background: #f1f1f1;
}
.gray-box span{
    font-weight: bold;
    font-size: 1.04em;
    color: #333333;
}
.gray-box span b{
    letter-spacing: -0.06em;
    font-weight: bold;
    font-size: 18px;
    color: #da281f;
}




/* input */

input.disabled {
   user-select : none;
   -moz-user-select : none;
   -webkit-user-select : none;
   color: #555555;
   cursor: pointer;
   background : #fafafa;
}��








.type-wrap{
    display: inline-block;
    vertical-align: top;
    font-size: 0;
}
.type{
    display: inline-block;
    vertical-align: top;
    position: relative;
    height: 50px;
}

.type input{
    position: absolute;
    top: 0;
    left: 0;
    width: 66px;
    opacity: 0;
    cursor: default;
    z-index: -1;
}
.type input:disabled + span { cursor: default; }
.type span{
    position: relative;
    display: block;
    margin-right: -1px;
    height: 50px;
    line-height: 50px;
    font-family: 'NanumBarunGothic';
    text-align: center;
    color: #888888;
    font-size: 15px;
    font-weight: bold;
    background: #f5f5f5;
    border: 1px solid #ccc;
    z-index: 1;
}
.type:last-child span{
}
.type input:checked ~ span{
    color: #da281f;
    background: #fff;
    border: 1px solid #da281f;
    z-index: 2;
}








.agree-list-wrap { border-bottom: 1px solid #e5e5e5; }
.agree-list-wrap h1 { display: inline-block; vertical-align: middle; font-size: 17px; font-weight: 700; letter-spacing: -0.04em; }
.agree-list-wrap span { font-weight: normal; }
.agree-list-wrap table tr th { width: 835px; padding: 1.04em 20px; text-align: left; }
.agree-list-wrap table tr td { padding-right: 25px; text-align: right; }
.agree-list-wrap .al-first th { padding-top: 24px; padding-bottom: 24px; }
.agree-list-wrap .agree-detail-row th { padding: 14px 20px; }
.agree-list-wrap .pt-none,
.agree-list-wrap .agree-detail-row .pt-none { padding-top: 0; }
.agree-ul{
    display: inline-block;
    vertical-align: top;
    margin-right: 8px;
    width: 10px;
    height: 10px;
    background: url('/webPub/sc_2018/images/member/agree-ul.png');
}
.agree-detail-row{
    display: none;
}
.agree-detail-row span{
    padding-right: 15px;
    color: #555;
    letter-spacing: -0.085em;
}
.agree-detail-row a{
    position: relative;
    color: #666666;
}
.agree-detail-row a:after{
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 1px;
    background: #aaaaaa;
}
.agree-detail-row .check-option-list{
    margin-left: 43px;
}
.agree-detail-row .check-option-list .checkbox{
    margin-right: 10px;
}

.agree-list-wrap .checkbox-agree { margin-left: 9px; }
.checkbox-agree{
    display: inline-block;
    vertical-align: middle;
    position: relative;
    padding-right: 35px;
    height: 20px;
}
.checkbox-agree input[type=checkbox]{
    position: absolute;
    top: 0;
    right: 0;
    width: 26px;
    height: 13px;
    opacity: 0;
}
.checkbox-agree .chk{
    display: block;
    position: absolute;
    top: 0;
    right: 0;
    margin-top: 3px;
    width: 26px;
    height: 13px;
    background: url('/webPub/sc_2018/images/member/agree-arrow.png') no-repeat;
}
.checkbox-agree input[type=checkbox]:checked ~ .chk{
    background: url('/webPub/sc_2018/images/member/agree-on-arrow.png') no-repeat;
}



.checkbox-help{
    display: inline-block;
    vertical-align: middle;
    position: relative;
    padding-right: 35px;
    width: 197px;
    height: 20px;
}
.checkbox-help input[type=checkbox]{
    position: absolute;
    top: 0;
    right: 0;
    width: 26px;
    height: 13px;
    opacity: 0;
}
.checkbox-help .chk{
    display: block;
    position: absolute;
    top: 0;
    right: 0;
    margin-top: 3px;
    width: 15px;
    height: 8px;
    background: url('/webPub/sc_2018/images/icon/help-arrow.png') no-repeat;
}
.checkbox-help input[type=checkbox]:checked ~ .chk{
    background: url('/webPub/sc_2018/images/icon/help-on-arrow.png') no-repeat;
}






.name-wrap .select{
    position: relative;
}
.select{
    display: inline-block;
    vertical-align: top;
    position: relative;
    width: 130px;
    height: 50px;
}
.select select{
    border: 1px solid #ddd;
}
.table-don .email2{
    width: 172px;
}
.table-don .input-email .select{
    width: 149px;
}
.table-don .email3{
    width: 100%;
}
.table-don .input-email:after{
    right: 152px;
}





.name-wrap{
    font-size: 0;
}
.table-don .name-wrap input{
    margin-right: 10px;
    max-width: 373px;
}





.birth-gender{ font-size: 0; }
.birth-gender input[type=text]{
    width: 373px;
}
.gender-wrap{
    display: inline-block;
    vertical-align: top;
    margin-left: 10px;
}
.gender{
    display: inline-block;
    vertical-align: top;
    position: relative;
    width: 65px;
    height: 50px;
}

.gender input{
    position: absolute;
    top: 0;
    left: 0;
    width: 66px;
    opacity: 0;
}
.gender span{
    display: block;
    position: relative;
    margin-left: -1px;
    height: 50px;
    line-height: 50px;
    font-family: 'NanumBarunGothic';
    text-align: center;
    color: #888888;
    font-size: 15px;
    font-weight: bold;
    background: #f5f5f5;
    border: 1px solid #cccccc;
    z-index: 1;
}
.gender:first-child span{
    margin-left: 0;
}
.gender input:checked ~ span{
    color: #da281f;
    background: #fff;
    border: 1px solid #da281f;
    z-index: 2;
}









.relation-child { display: inline-block; vertical-align: top; margin-right: 7px; width: 513px; font-size: 0; }
.relation{
    display: inline-block;
    vertical-align: top;
    position: relative;
    width: 33.33333%;
    height: 50px;
}
.relation input{
    position: absolute;
    top: 0;
    left: 0;
    width: 66px;
    opacity: 0;
}
.relation span{
    display: block;
    position: relative;
    margin-left: -1px;
    height: 50px;
    line-height: 50px;
    font-family: 'NanumBarunGothic';
    text-align: center;
    color: #888888;
    font-size: 15px;
    font-weight: bold;
    background: #f5f5f5;
    border: 1px solid #cccccc;
    z-index: 1;
}
.relation:first-child span{
    margin-left: 0;
}
.relation input:checked ~ span{
    color: #da281f;
    background: #fff;
    border: 1px solid #da281f;
    z-index: 2;
}









/* table */
.pd22{
    padding: 22px 0 !important;
}








.table-don { width: 100%; }
.table-don tr th { padding: 26px 0 26px 25px; width: 257px; color: #555; border-top: 1px solid #e5e5e5; text-align: left; }
.table-don tr td { padding: 14px 25px 14px 0; font-family: 'Nanum Barun Gothic'; letter-spacing: -0.05em; color: #555; font-size: 15px; border-top: 1px solid #e5e5e5; }
.table-don tr:last-child th { border-bottom: 1px solid #e5e5e5; }
.table-don tr:last-child td { border-bottom: 1px solid #e5e5e5; }
.table-don tr th span { font-family: 'Nanum Barun Gothic'; font-size: 15px; letter-spacing: -0.05em; color: #555; }
.table-don input { max-width: 513px }
.table-don .input-email { max-width: 513px; }
.table-don .input-email .email1 { width: 165px; }
.td-div{
    padding: 16px 0;
}











/*
    Sub Visual
*/
.sub-visual{
    display: table;
    position: relative;
    padding-bottom: 61px;
    width: 100%;
    height: 335px;
}

.don2 { background: url('/webPub/sc_2018/images/support/visual_20181108.png') no-repeat center / cover; }

/*
.don1 { background: url('/webPub/sc_2018/images/support/visual1.png') no-repeat center / cover; }
.don1 { background: url('/webPub/sc_2018/images/support/visual_20181108.jpg') no-repeat center center ; background-size:auto 335px; }
*/

.don1 {
  /*background-image: url("/webPub/sc_2018/images/support/visual_20191106_bg.jpg"); 캘린더용*/
  background-image: url("/webPub/sc_2018/images/support/visual_20190114_bg.jpg");
  background-repeat: no-repeat;
  background-position: 50%;
  background-size: cover;
}

.sub-visual .title-wrap-1 {
	margin:0 auto; width:1050px;
	padding:72px 0 0 122px;
/*	display:none;
	overflow:hidden; position:absolute; left:0; top:0; width:0;height:0; */
}
.sub-visual .title-wrap-1 h2{
    line-height: 39px;
    font-size: 29px;
    font-weight: bold;
    color: #222222;
	letter-spacing:-0.04em;
}
.sub-visual .title-wrap-1 h2 strong { display:inline-block; background:#003312; color:#fff; padding:0 7px; }
.sub-visual .title-wrap-1 ul { margin:19px 0 12px;  height:22px;}
.sub-visual .title-wrap-1 ul:after { content:"";clear:both;display:block; }
.sub-visual .title-wrap-1 ul li { color:#222; height:22px; font-size:16.5px; letter-spacing:-0.05em; font-weight:700; margin-right:18px; line-height:22px;  display:inline-block; }
.sub-visual .title-wrap-1 ul li em { display:inline-block; border-radius:10px; background:#003312; color:#fff; padding:1px 8px; margin-right:5px;}
.sub-visual .title-wrap-1 ul li span { display:inline-block; }

.sub-visual .title-wrap-1 > p { color:#222; font-size:14px; letter-spacing:-0.05em; font-weight:400; line-height:14px; display:block; }
.sub-visual .title-wrap-1 > p > strong { color:#e60012;  font-weight:400; l}


.sub-visual .title-wrap{
    display: table-cell;
    vertical-align: middle;
    text-align: center;
	/* display:none; */
}
.sub-visual .title-wrap h1{
    line-height: 38px;
    font-size: 29px;
    font-weight: bold;
    color: #fff;
}
.sub-visual .support-tab{
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    background: rgba(0,0,0,.55);
}
.sub-visual .support-tab .tab-wrap{
    margin: auto;
    width: 1050px;
}
.support-tab-list:after { content: ''; display: block; clear: both; }
.support-tab-list li{
    float: left;
    width: 33.33333%;
    height: 61px;
    line-height: 61px;
    text-align: center;
    border-right: 1px solid rgba(255,255,255,.15);
}
.support-tab-list li:last-child{
    border-right: none;
}
.support-tab-list li a{
    display: block;
    font-family: 'NanumSquare';
    font-size: 21px;
    font-weight: bold;
    color: rgba(255,255,255,.5);
}
.support-tab-list li.on a{
    color: #da281f;
    background: #fff;
}






.support-area{
    margin: auto;
    padding: 60px 0 150px;
    width: 1050px;
}

.support-head:after { content: ''; display: block; clear: both; }
.support-head h2{
    line-height: 29px;
    float: left;
    font-size: 29px;
    font-weight: bold;
    color: #333333;
}
.step{
    float: right;
}
.step-list:after { content: ''; display: block; clear: both; }
.step li{
    float: left;
}
.step li i{
    display: inline-block;
    vertical-align: top;
    height: 27px;
    line-height: 31px;
    font-family: 'NanumSquare';
    font-size: 1.04em;
    font-weight: bold;
    font-style: normal;
    color: #999999;
}
.step .on i{
    line-height: 29px;
}
.step-list .on{
    width: 27px;
    text-align: center;
    border: 1px solid #555555;
    border-radius: 50%;
}
.step-list .on i{
    color: #333333;
}
[data-step="1"] li:first-child{
    margin-right: 12px;
}
[data-step="1"] li:nth-child(2){
    margin-right: 23px;
}
[data-step="1"] li:last-child{
    margin-right: 9px;
}
[data-step="2"] li:first-child{
    margin-right: 15px;
}
[data-step="2"] li:nth-child(2){
    margin-right: 15px;
}
[data-step="2"] li:last-child{
    margin-right: 9px;
}
[data-step="3"] li:first-child{
    margin-right: 23px;
}
[data-step="3"] li:nth-child(2){
    margin-right: 12px;
}
[data-step="3"] li:last-child{
    margin-right: 0px;
}






.support-body{
    margin-top: 19px;
    border-top: 1px solid #999999;
}



.support-table{
    margin: 20px 0 17px;
}
.support-table th{
    padding: 10px 0 10px 25px;
    text-align: left;
}
.support-table td{
    padding: 10px 0;
}
.support-table th h3{
    padding-right: 110px;
    font-size: 18px;
    font-weight: bold;
    color: #555555;
}
.support-table th span{
    padding-right: 42px;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
    font-size: 15px;
    font-weight: bold;
    color: #555555;
}
.support-table td{
    padding-right: 45px;
}
.support-table .left-side{
    margin-right: 25px;
}
.region-tab{ font-size: 0; }
.region-tab .type{
    width: 216px;
}



.support-children-row:after { content: ''; display: block; clear: both; }
.support-children-row > div{
    float: left;
}
.support-children-row > div:last-child{
    width: 217px;
    text-align: right;
}
.support-children-row input{
    padding: 0 20px;
    width: 160px;
    text-align: right;
}
.support-children-row p{
    line-height: 50px;
    font-size: 15px;
    font-weight: bold;
    color: #555555;
}
.children-tab{ margin-right: 10px; font-size: 0; }
.children-tab .type{
    width: 87px;
}
.left-side{
    display: inline-block;
    margin-right: 15px;
}

.span-lb{
    font-size: 14px;
    color: #999999;
}



.add-option{
    padding-left: 351px;
    width: 100%;
    height: 196px;
    border-top:1px solid #e5e5e5;
    background: url('/webPub/sc_2018/images/support/opt_bg_sty2.png') no-repeat center / cover;
}
.opt-top{
    padding-top: 45px;
}
.opt-top h3{
    font-size: 17px;
    padding-bottom: 15px;
}
.opt-bottom{
    padding-top: 48px;
    padding-right: 25px;
    text-align: right;
}
.opt-bottom h4{
    font-size: 19px;
    font-weight: bold;
    color: #333333;
}
.opt-bottom h4 em{
    display: inline-block;
    transform: translateY(2px);
    font-style: normal;
    font-size: 23px;
    color: #da281f;
}




.support-foot{
    padding-top: 80px;
}
.border-line{
    width: 100%;
    height: 23px;
    border-top: 3px solid #b0aaa5;
    border-right: 3px solid #b0aaa5;
    border-left: 3px solid #b0aaa5;
}
.foot-text{
    padding-left: 52px;
}
.support-foot h5{
    padding-top: 18px;
    font-size: 19px;
    color: #333333;
    font-weight: bold;
}
.support-foot h6{
    padding-top: 10px;
    font-size: 15px;
    color: #555555;
}
.support-foot span{
    display: inline-block;
    padding-top: 17px;
    font-size: 15px;
    color: #777777;
}
.support-foot p{
    display: inline-block;
    padding-top: 9px;
    line-height: 21px;
    font-size: 15px;
    color: #555555;
}










/* 2 - �썑�썝�옄 �젙蹂� �엯�젰 (蹂몄씤�솗�씤) */
.identify-box{
    padding: 49px 0 50px;
    text-align: center;
}
.identify-box h3{
    margin-bottom: 15px;
    font-size: 24px;
    font-weight: bold;
    color: #333333;
}
.identify-box h4{
    font-size: 1.04em;
    font-weight: bold;
    color: #555555;
}
.identify-button-wrap{
    font-size: 0;
    padding-top: 30px;
}
.identify-button-wrap .btn-ide{
    margin: 0 5px;
}






/* 2 - �썑�썝�옄 �젙蹂� �엯�젰 */
.sponsor-info{
    padding: 15px 0 10px;
}
.sponsor-info p{
    padding-bottom: 16px;
    font-size: 15px;
    color: #555555;
}
.sponsor-info p:last-child{
    padding-bottom: 0;
}
.eng-name span{
    font-size: 15px;
    color: #555555;
}
.eng-name span:first-child{
    padding-right: 10px;
}
.input-eng-name { font-size: 0; }
.input-eng-name input{
    margin-right: 10px;
    width: 252px;
}
.input-eng-name p{
    padding-top: 13px;
    padding-bottom: 4px;
    font-size: 14px;
    color: #999999;
}


.support-rrn-wrap{
    padding: 15px 0;
}
.support-rrn-input{
    display: none;
    padding-top: 15px;
}
.support-rrn:after{ content: ''; display: block; clear: both; }
.support-rrn > div{
    float: left;
    position: relative;
    margin-top: 19px;
    font-weight: bold;
}
.support-rrn > div:first-child{
    margin-right: 15px;
    padding-right: 15px;
}
.support-rrn > div:first-child:after{
    content: '';
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    margin: auto;
    width: 1px;
    height: 13px;
    background: #e5e5e5;
}
.support-rrn p{
    clear: left;
    padding-top: 10px;
    font-size: 14px;
    color: #999999;
}




.bor{
    border-bottom: 1px solid #e5e5e5;
}
.row-don{
    padding-top: 59px;
}
.row-don h4,
.row-don h5{
    padding-bottom: 17px;
    font-size: 21px;
    font-weight: bold;
    color: #333333;
}



.sponsor-child-row th span:last-child{
    display: block;
    margin-top: 58px;
    margin-bottom: 27px;
}
.sponsor-child-row .sponsor-info p:nth-child(2){
    padding-bottom: 25px;
}




/* ------- Install ------- */
.install-box{
    padding-bottom: 48px;
    text-align: center;
    border-bottom: 1px solid #e5e5e5;
}
.install-box img{
    transform: translateX(7px);
    margin: 0 auto 25px;
}
.install-box h2{
    margin-bottom: 15px;
    font-size: 24px;
    font-weight: bold;
    color: #333333;
}
.install-box h3{
    font-size: 1.04em;
    font-weight: bold;
    color: #555555;
}

.program-table{
    border-top: 1px solid #e5e5e5;
}
.program-table th{
    position: relative;
    padding: 17px 0;
    text-align: center;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
    font-size: 15px;
    font-weight: bold;
    color: #555555;
    border-bottom: 1px solid #e5e5e5;
}
.program-table th:after{
    content: '';
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    margin: auto;
    width: 1px;
    height: 13px;
    background: #e5e5e5;
}
.program-table th:last-child:after{
    content: none;
}
.program-table td{
    padding: 22px 0;
    text-align: center;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
    font-size: 15px;
    color: #555555;
    border-bottom: 1px solid #e5e5e5;
}
.install-type{
    display: block;
    margin: 0 auto 5px;
}







/* 3 - 寃곗젣諛⑸쾿 �꽑�깮 */
.for-cms-text{
    display: none;
    padding: 14px 0 0px 255px;
}
.for-cms-text i{
    display: inline-block;
    vertical-align: top;
    margin-right: 8px;
    width: 10px;
    height: 10px;
    background: url('/webPub/sc_2018/images/icon/icon_line1.png');
}
.for-cms-text span{
    font-size: 15px;
    color: #da281f
}
.table-don tr .for-credit-card,
.table-don tr .for-cms,
.table-don tr .for-payco{
    padding: 0;
    border: none;
}
.table-don tr .for-cms,
.table-don tr .for-payco{
    display: none;
}

.payment-type tr:last-child th,
.payment-type tr:last-child td{
    border-bottom: none;
}


.card-select{
    position: relative;
    width: 513px;
}
.eff-life{
    font-size: 0;
}
.eff-life .select{
    position: relative;
    width: 251px;
}
.eff-life .select:first-child{
    margin-right: 10px;
}
.name-same{
    margin-left: 28px;
}


.payment-method {
    display: inline-block;
    vertical-align: top;
    width: 769px;
    font-size: 0;
}
.payment{
    display: inline-block;
    vertical-align: top;
    position: relative;
    width: 33.33333%;
    height: 50px;
}
.payment input{
    position: absolute;
    top: 0;
    left: 0;
    width: 66px;
    opacity: 0;
}
.payment span{
    display: block;
    position: relative;
    margin-top: -1px;
    margin-left: -1px;
    height: 50px;
    line-height: 50px;
    font-family: 'NanumBarunGothic';
    text-align: center;
    color: #888888;
    font-size: 15px;
    font-weight: bold;
    background: #f5f5f5;
    border: 1px solid #cccccc;
    z-index: 1;
}
.payment:first-child span,
.payment:nth-child(2) span,
.payment:nth-child(3) span{
    margin-top: 0;
}
.payment input:checked ~ span{
    color: #da281f;
    background: #fff;
    border: 1px solid #da281f !important;
    z-index: 2;
}



.regular-day { display: inline-block; vertical-align: top; margin-right: 7px; width: 513px; font-size: 0; }
.regular{
    display: inline-block;
    vertical-align: top;
    position: relative;
    width: 33.33333%;
    height: 50px;
}
.regular input{
    position: absolute;
    top: 0;
    left: 0;
    width: 66px;
    opacity: 0;
}
.regular span{
    display: block;
    position: relative;
    margin-left: -1px;
    height: 50px;
    line-height: 50px;
    font-family: 'NanumBarunGothic';
    text-align: center;
    color: #888888;
    font-size: 15px;
    font-weight: bold;
    background: #f5f5f5;
    border: 1px solid #cccccc;
    z-index: 1;
}
.regular:first-child span{
    margin-left: 0;
}
.regular input:checked ~ span{
    color: #da281f;
    background: #fff;
    border: 1px solid #da281f;
    z-index: 2;
}




.csm-identify-type-wrap { font-size: 0; }
.cms-identify-type { display: inline-block; vertical-align: top; margin-right: 10px; width: 341px; font-size: 0; }
.cms-identify{
    display: inline-block;
    vertical-align: top;
    position: relative;
    width: 50%;
    height: 50px;
}
.cms-identify input{
    position: absolute;
    top: 0;
    left: 0;
    width: 66px;
    opacity: 0;
}
.cms-identify span{
    display: block;
    position: relative;
    margin-left: -1px;
    height: 50px;
    line-height: 50px;
    font-family: 'NanumBarunGothic';
    text-align: center;
    color: #888888;
    font-size: 15px;
    font-weight: bold;
    background: #f5f5f5;
    border: 1px solid #cccccc;
    z-index: 1;
}
.cms-identify:first-child span{
    margin-left: 0;
}
.cms-identify input:checked ~ span{
    color: #da281f;
    background: #fff;
    border: 1px solid #da281f;
    z-index: 2;
}
.csm-identify-type-wrap button{
    vertical-align: middle;
    width: 160px;
}


.help-accordion{
    display: inline-block;
    vertical-align: middle;
    margin-top: 5px;
    margin-left: 30px;
    padding-left: 30px;
    background: url('/webPub/sc_2018/images/icon/help.png') no-repeat left top;
}
.help-accordion em{
    font-style: normal;
    font-weight: bold;
    font-size: 15px;
    color: #777777;
}


.help-accordion-contents{
    margin-top: 15px;
    padding: 23px 30px;
    background: #fafafa;
    border: 1px solid #eeeeee;
}
.help-accordion-contents p{
    margin-bottom: 7px;
    line-height: 21px;
    font-size: 15px;
    color: #555555;
}
.help-accordion-contents p:last-child{
    margin-bottom: 0;
}
.help-accordion-contents em{
    font-style: normal;
    font-size: 15px;
    color: #da281f;
}
.help-accordion-contents a{
    position: relative;
    margin-left: 15px;
    color: #da281f;
}
.help-accordion-contents a:after{
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 1px;
    background: #da281f;
}

.help-accordion-contents,
.help-for-ars,
.help-for-rrn{
    display: none;
}


.csm-identify-complete-wrap{
    padding-top: 17px;
    padding-bottom: 16px;
}
.csm-identify-complete-wrap span{
    display: inline-block;
    font-size: 15px;
    color: #555555;
}
.csm-identify-complete-wrap span em{
    font-style: normal;
    color: #da281f;
}










/* ------- �썑�썝 �떊泥� �셿猷� ------- */
.complete-wrap{
    padding-bottom: 150px;
}

.complete-top{
    padding-top: 85px;
    padding-bottom: 60px;
    background: #fafafa;
    border-bottom: 1px solid #e5e5e5;
}
.complete-top .title-wrap{
    text-align: center;
}
.complete-top .title-wrap h1{
    padding-bottom: 15px;
    font-size: 30px;
    color: #926d49;
}
.complete-top .title-wrap h2{
    line-height: 24px;
    font-weight: 400;
    font-size: 17px;
    color: #555555;
}
.complete-top .title-wrap h2 em{
    font-style: normal;
    font-size: 18px;
    letter-spacing: -0.04em;
}


.info-wrap{
    padding-top: 6px;
}
.info-box-wrap{
    margin: auto;
    padding-top: 70px;
    padding-left: 495px;
    width: 1050px;
    height: 281px;
    background: url('/webPub/sc_2018/images/support/complete_bg.png') no-repeat;
}
.complete-table tr th{
    padding: 10px 0;
    width: 80px;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
    font-size: 15px;
    color: #333333;
    text-align: left;
}
.complete-table tr td{
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
    font-size: 15px;
    color: #555555;
}
.info-body{
    display: table;
    margin-top: 37px;
    padding-right: 137px;
    min-height: 95px;
    width: 100%;
}
.info-body .inner{
    display: table-cell;
    vertical-align: middle;
    padding-top: 5px;
}
.info-body li{
    padding-bottom: 9px;
    font-size: 14px;
    color: #999999;
}
.info-body li:before{
    background: #aaaaaa;
}





.complete-bottom{
    padding-top: 50px;
    text-align: center;
}
.complete-bottom-home{
    padding-top: 30px;
    text-align: center;
}
.complete-check-text{
    padding-left: 3px;
}
.complete-check-text .text-wrap{
    display: inline-block;
    vertical-align: middle;
    margin-left: 10px;
    text-align: left;
}
.complete-check-text .text-wrap h3{
    line-height: 22px;
    font-weight: 400;
    font-size: 15px;
    color: #555555;
}
.complete-check-text .text-wrap h3 em{
    font-style: normal;
    font-weight: bold;
    color: #926d49;
}
.complete-check-text .text-wrap span{
    position: relative;
}
.complete-check-text .text-wrap span:before{
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 1px;
    background: #ccc;
}

.complete-bottom .btn-group{
    font-size: 0;
}
.complete-bottom .btn-group a:first-child{
    margin-right: 10px;
}





/* 鍮꾪쉶�썝�씪 寃쎌슦 �쉶�썝媛��엯 �쁺�뿭 */
.membership-form-wrap{
    margin-top: 100px;
    padding-top: 99px;
    border-top: 1px solid #e5e5e5;
}
.membership-form-wrap .title-wrap{
    padding-bottom: 37px;
    text-align: center;
}
.membership-form-wrap h4{
    margin-bottom: 16px;
    font-size: 24px;
    color: #333333;
}
.membership-form-wrap h5{
    font-size: 1.04em;
    color: #555555;
}
.membership-form-wrap table tr th{
    width: 256px;
}
.membership-form-wrap input{
    min-width: 510px;
}
.membership-form-wrap .form-password,
.membership-form-wrap .form-password-check{
    max-width: 510px;
}
.membership-form-wrap .input-text{
    font-size: 14px;
}






/* ------- �젙湲� �썑�썝 1�떒怨� ------- */
.non-bor { border-top: none; }
.monthly-choice-type{
    margin-top: 0;
    margin-bottom: 0;
}
.monthly-choice-type tr:last-child{
    border-bottom: none;
}
.don-monthly-row td{
    padding-right: 0;
}
.don-monthly-row[data-choice="off"]{
    border-bottom: 1px solid #e5e5e5;
    border-right: 1px solid transparent;
    border-left: 1px solid transparent;
}
.monthly-choice-type .don-monthly-row[data-choice="on"]{
    border:none;
}
.closest-bor[data-choice="off"]{
    border-bottom-color: #bbb1a7;
}
.choice-help-row{
    border-top: 1px solid #999999;
}
.monthly-choice-type .don-monthly-row[data-choice="on"].choice-help-row {border-top: 1px solid #999999;border-bottom:1px solid #e5e5e5;}
.don-monthly-row[data-choice="off"] > td,
.don-monthly-row[data-choice="on"] > td{
    padding-top: 22px;
    padding-bottom: 18px;
}
.don-monthly-row[data-choice="off"] .top-help-td,
.don-monthly-row[data-choice="on"] .top-help-td{
    padding-top: 0;
    padding-bottom: 9px;
}

.choice-table{
    min-height: 50px;
}
.choice-table tr td{
    padding-right: 0;
}
.don-day-head{
    width: 230px;
}
.don-day-head{
    width: 250px;
}

.choice-top-help{
    position: relative;
    margin-bottom: 10px;
    padding-left: 59px;
    height: 54px;
    line-height: 56px;
    background: #f2efed;
}
.choice-top-help:before{
    content: '';
    position: absolute;
    left: 25px;
    bottom: -10px;
    border-top: 10px solid #f2efed;
    border-right: 10px solid transparent;
    border-left: 10px solid transparent;
}
.choice-top-help h3{
    font-weight: 400;
    font-size: 15px;
    color: #555555;
}


.don-monthly-wrap{
    padding-right: 25px;
    font-size: 0;
}
.don-monthly-wrap span{
    display: inline-block;
    vertical-align: middle;
    line-height: 20px;
    font-weight: bold;
    font-size: 15px;
    color: #555555;
}
.select-monthly{
    position: relative;
    width: 207px;
}
.manual-input{
    display: inline-block;
    vertical-align: middle;
    margin: 0 10px;
    width: 207px;
    height: 50px;
}
.manual-input input{
    text-align: right;
}

.sponsorship-toggle{
    display: none;
}


/* 19.07.04 비회원 회원가입유도용 레이어팝업 */
.layer_popup_wrap .dimmed{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 1;
    background: rgba(0,0,0,.65);
}
.layer_complete {
     position: absolute;
     z-index:10;
    width: 1050px;
    margin-top: -267px;
    margin-left: -525px;
    top: 50%;
    left: 50%;
    background: #fff;
    box-shadow: 0px 5px 10px 0px rgba(0,0,0,.15);
    border-radius: 5px;
    border: 1px solid #ddd;
}


.layer_complete .membership-form-wrap {margin-top:0;padding: 30px 0;border-top: 0;}
.layer_complete .popup-close{
    position:absolute;
    top:15px;
    right:15px;
    width: 25px;
    height: 25px;
    cursor:pointer;
    background: url('/webPub/sc_2018/images/support/popup_close_btn.png');
}

.container.pop1100, #footer.pop1100 {width:1100px;}
.close_pop1100 {padding-top:0;margin:-137px auto 55px;}

/*200217 후원하기 버튼 위치 변경*/
.spbtn_area{position: relative; overflow:hidden; margin:0 auto; padding-top:26px; width:1050px;}
.spbtn_area .support-tab-list{float:right;}
.spbtn_area .support-tab-list li{float: left; margin-right:10px; width:160px; height: 40px; line-height: 40px; text-align: center; background:#898987;}
.spbtn_area .support-tab-list li:last-child{margin-right:0;}
.spbtn_area .support-tab-list li a{display: block; font-family: 'NanumSquare'; font-size: 20px; font-weight: bold; color:#fff;}
.spbtn_area .support-tab-list li.on a{background:#da281f;}

@media (max-width: 1680px) {
	.spbtn_area{padding-top:22px;}
}

.new-sub-visual{display: table; position: relative; width: 100%; height: 185px;}
.new-sub-visual .title-wrap{display: table-cell;  vertical-align: middle; text-align: center;}
.new-sub-visual .title-wrap h1{line-height: 38px; font-size: 29px; font-weight: bold; color: #fff;}
.new-sub-visual.bnr01 {background-image: url("/webPub/sc_2018/images/support/visual_20190114_bg.jpg"); background-repeat: no-repeat; background-position: 50%; background-size: cover;}

/* ======= Font ======= */
@font-face {
 font-family: 'NanumSquare';
 font-weight: 400;
 src: url(//cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/NanumSquareR.eot);
 src: url(//cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/NanumSquareR.eot?#iefix) format('embedded-opentype'),
      url(//cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/NanumSquareR.woff) format('woff'),
      url(//cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/NanumSquareR.ttf) format('truetype');
}
@font-face {
 font-family: 'NanumSquare';
 font-weight: 700;
 src: url(//cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/NanumSquareB.eot);
 src: url(//cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/NanumSquareB.eot?#iefix) format('embedded-opentype'),
      url(//cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/NanumSquareB.woff) format('woff'),
      url(//cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/NanumSquareB.ttf) format('truetype');
}
@font-face {
 font-family: 'NanumSquare';
 font-weight: 800;
 src: url(//cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/NanumSquareEB.eot);
 src: url(//cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/NanumSquareEB.eot?#iefix) format('embedded-opentype'),
      url(//cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/NanumSquareEB.woff) format('woff'),
      url(//cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/NanumSquareEB.ttf) format('truetype');
}
@font-face {
 font-family: 'NanumSquare';
 font-weight: 300;
 src: url(//cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/NanumSquareL.eot);
 src: url(//cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/NanumSquareL.eot?#iefix) format('embedded-opentype'),
      url(//cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/NanumSquareL.woff) format('woff'),
      url(//cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/NanumSquareL.ttf) format('truetype');
}

@font-face {
 font-family: 'Nanum Barun Gothic';
 font-style:normal; 
 font-weight: 400;
 src: url(//cdn.jsdelivr.net/gh/moonspam/NanumBarunGothic@1.0/NanumBarunGothicSubset.eot);
 src: url(//cdn.jsdelivr.net/gh/moonspam/NanumBarunGothic@1.0/NanumBarunGothicSubset.eot?#iefix) format('embedded-opentype'),
      url(//cdn.jsdelivr.net/gh/moonspam/NanumBarunGothic@1.0/NanumBarunGothicSubset.woff) format('woff'),
      url(//cdn.jsdelivr.net/gh/moonspam/NanumBarunGothic@1.0/NanumBarunGothicSubset.ttf) format('truetype');
}
@font-face {
 font-family: 'Nanum Barun Gothic';
 font-style:normal; 
 font-weight: 700;
 src: url(//cdn.jsdelivr.net/gh/moonspam/NanumBarunGothic@1.0/NanumBarunGothicBoldSubset.eot);
 src: url(//cdn.jsdelivr.net/gh/moonspam/NanumBarunGothic@1.0/NanumBarunGothicBoldSubset.eot?#iefix) format('embedded-opentype'),
      url(//cdn.jsdelivr.net/gh/moonspam/NanumBarunGothic@1.0/NanumBarunGothicBoldSubset.woff) format('woff'),
      url(//cdn.jsdelivr.net/gh/moonspam/NanumBarunGothic@1.0/NanumBarunGothicBoldSubset.ttf) format('truetype');
}

@font-face {
  font-family: 'SavetheChildren';
  font-weight: 300;
  font-style: normal;
  src: url('../font/savethechildren/SavetheChildrenL.eot');
  src: url('../font/savethechildren/SavetheChildrenL.woff2') format('woff2'),
       url('../font/savethechildren/SavetheChildrenL.woff') format('woff'),
       url('../font/savethechildren/SavetheChildrenL.ttf') format('truetype'),
       url('../font/savethechildren/SavetheChildrenL.svg#SavetheChildrenL') format('svg'),
       url('../font/savethechildren/SavetheChildrenL.eot?#iefix') format('embedded-opentype');
}

@font-face {
  font-family: 'SavetheChildren';
  font-weight: 400;
  font-style: normal;
  src: url('../font/savethechildren/SavetheChildrenM.eot');
  src: url('../font/savethechildren/SavetheChildrenM.woff2') format('woff2'),
       url('../font/savethechildren/SavetheChildrenM.woff') format('woff'),
       url('../font/savethechildren/SavetheChildrenM.ttf') format('truetype'),
       url('../font/savethechildren/SavetheChildrenM.svg#SavetheChildrenM') format('svg'),
       url('../font/savethechildren/SavetheChildrenM.eot?#iefix') format('embedded-opentype');
}

@font-face {
  font-family: 'SavetheChildren';
  font-weight: 600;
  font-style: normal;
  src: url('../font/savethechildren/SavetheChildrenB.eot');
  src: url('../font/savethechildren/SavetheChildrenB.woff2') format('woff2'),
       url('../font/savethechildren/SavetheChildrenB.woff') format('woff'),
       url('../font/savethechildren/SavetheChildrenB.ttf') format('truetype'),
       url('../font/savethechildren/SavetheChildrenB.svg#SavetheChildrenB') format('svg'),
       url('../font/savethechildren/SavetheChildrenB.eot?#iefix') format('embedded-opentype');
}
/*
@font-face {
 font-family: 'NanumSquare';
 font-weight: 400;
 src: url(../font/NanumSquare/NanumSquareR.eot);
 src: url(../font/NanumSquare/NanumSquareR.eot?#iefix) format('embedded-opentype'),
      url(../font/NanumSquare/NanumSquareR.woff) format('woff'),
      url(../font/NanumSquare/NanumSquareR.ttf) format('truetype');
}
@font-face {
 font-family: 'NanumSquare';
 font-weight: 700;
 src: url(../font/NanumSquare/NanumSquareB.eot);
 src: url(../font/NanumSquare/NanumSquareB.eot?#iefix) format('embedded-opentype'),
      url(../font/NanumSquare/NanumSquareB.woff) format('woff'),
      url(../font/NanumSquare/NanumSquareB.ttf) format('truetype');
}
@font-face {
 font-family: 'NanumSquare';
 font-weight: 800;
 src: url(../font/NanumSquare/NanumSquareEB.eot);
 src: url(../font/NanumSquare/NanumSquareEB.eot?#iefix) format('embedded-opentype'),
      url(../font/NanumSquare/NanumSquareEB.woff) format('woff'),
      url(../font/NanumSquare/NanumSquareEB.ttf) format('truetype');
}
@font-face {
 font-family: 'NanumSquare';
 font-weight: 300;
 src: url(../font/NanumSquare/NanumSquareL.eot);
 src: url(../font/NanumSquare/NanumSquareL.eot?#iefix) format('embedded-opentype'),
      url(../font/NanumSquare/NanumSquareL.woff) format('woff'),
      url(../font/NanumSquare/NanumSquareL.ttf) format('truetype');
}
@font-face{
    font-family:'Nanum Barun Gothic';
    font-style:normal;
    font-weight:700;
    src:url(../font/nanumbarungothic/NanumBarunGothic-Bold.eot);
    src:url(../font/nanumbarungothic/NanumBarunGothic-Bold.eot?#iefix) format('embedded-opentype'),
        url(../font/nanumbarungothic/NanumBarunGothic-Bold.woff) format('woff'),
        url(../font/nanumbarungothic/NanumBarunGothic-Bold.ttf) format('truetype');
}
@font-face{
    font-family:'Nanum Barun Gothic';
    font-style:normal;
    font-weight:400;
    src:url(../font/nanumbarungothic/NanumBarunGothic-Regular.eot);
    src:url(../font/nanumbarungothic/NanumBarunGothic-Regular.eot?#iefix) format('embedded-opentype'),
        url(../font/nanumbarungothic/NanumBarunGothic-Regular.woff) format('woff'),
        url(../font/nanumbarungothic/NanumBarunGothic-Regular.ttf) format('truetype');
}
*/

/* ========== Style Default ========== */
* {
  margin: 0;
  padding: 0;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
body {
  font-family: 'NanumSquare', "Apple SD Gothic Neo", Helvetica, sans-serif, Arial;
  word-break:keep-all;
  white-space:-moz-pre-wrap;
  white-space:-pre-wrap;
  white-space:-o-pre-wrap;
  word-wrap:break-word;
  font-size: 100%;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
  font-variant-ligatures: none;
  -webkit-font-variant-ligatures: none;
  text-rendering: optimizeLegibility;
  -moz-osx-font-smoothing: grayscale;
  font-smoothing: antialiased;
  -webkit-font-smoothing: antialiased;
  text-shadow: #ccc 1px 1px 1px rgba(0,0,0,0.004);
  font-smooth: always;
}
::-moz-selection { color: #fff; background: #0078D7; }
::selection { color: #fff; background: #0078D7; }
h1 { letter-spacing: -0.04em; }
h2 { letter-spacing: -0.04em; }
h3 { letter-spacing: -0.04em; }
h4 { letter-spacing: -0.04em; }
h5 { letter-spacing: -0.04em; }
h6 { letter-spacing: -0.04em; }
p { letter-spacing: -0.04em; }
span { letter-spacing: -0.04em; }
a { letter-spacing: -0.04em; color: #555; text-decoration: none; }
em { font-style: normal; }
label { letter-spacing: -0.05em; }
select { letter-spacing: -0.05em; padding: 0 20px; color: #555; font-size: 15px; }
input { letter-spacing: -0.05em; font-family: 'Nanum Barun Gothic'; outline: none; padding: 0 20px; border: 1px solid #dddddd; color: #666; font-size: 15px; }
button { letter-spacing: -0.06em; font-family: 'NanumSquare'; font-size: 16px; background: none; border: none; cursor: pointer; }
button:focus { outline: 0; }
/* li { letter-spacing: -0.05em; font-family: 'Nanum Barun Gothic'; } */

img { display: block; border: none; }
img.txc-image {display:inline;max-width:100%;}
ul { list-style: none; }
table { width: 100%; border-collapse: collapse; text-align: left; }
input[type=text]:disabled { color: #555555; background: #fafafa; }
select:disabled { color: #555555; background: #fafafa; cursor: default; }
textarea { font-family: inherit; padding-left: 10px; border: 1px solid #e5e5e5; }
select { font-family: 'Nanum Barun Gothic'; padding-left: 20px; border: 1px solid #e5e5e5; }
label, select, button, input[type="button"], input[type="reset"], input[type="submit"], input[type="radio"], input[type="checkbox"] { cursor: pointer; }
fieldset { margin: 0; padding: 0; border: 0; }
legend { display: none; }
caption { width: 0; height: 0; line-height: 0; font-size: 0; }
::placeholder { color: #888; }
:-ms-input-placeholder { color: #888 !important; }
::-ms-input-placeholder { color: #888 !important; }
:focus { outline: none !important; }
select::-ms-expand { display: none; }
input[type=text]::-ms-clear { display:none; }
input[type=text]:-ms-clear { display:none; }
select{
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  position: relative;
  border: none;
  width: inherit;
  height: inherit;
  z-index: 2;
  background: transparent;
}

@page { size:230mm 297mm; margin: 0; }

body {overflow-x:hidden;}
/* 이메일 무단 수집 거부*/
.email-popup-wrap { position: fixed; top: 0; left: 0; width: 100%; height: 100%;
    z-index: 100000;
}
.popup-bg {
    width: 100%;
    height: 100%;
    position: fixed;
    background-color: rgba(0, 0, 0, 0.65);
    z-index: 999999;
}

.email-popup {
    width: 590px;
    height: 529px;
    background-color: #fff;
    overflow: auto;
    margin: auto;
    position: absolute;
    z-index: 9999999;
    text-align: center;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
}

.email-popup div:nth-child(1) {
    text-align: left;
    ;
    position: relative;
    height: 74px;
    background: url('/webPub/sc_2018/images/etc/b-copy.png');
    background-position: center top;
    background-repeat: no-repeat;
    border-bottom: 1px solid rgba(0, 0, 0, 0.05);
}

.email-popup div:nth-child(1) img {
    margin-top: 17px;
    margin-left: 15px;
    position: relative;
    display: inline-block;
    left: 15px;
}

.email-popup div:nth-child(1) button {
    margin-top: 12px;
    float: right:35px;
    float: right;
    margin-right: 35px;
}

.email-popup div:nth-child(1) button>img {
    right: 35px;
    margin-top: 14px;
    margin-right: 15px;
}

.email-popup div:nth-child(2) {
    position: relative;
    margin-bottom: 0px;
}

.email-popup div:nth-child(2) h2 {
    margin-top: 73px;
    margin-bottom: 19px;
    font-size: 29px;
}

.email-popup div:nth-child(2) h3 {
    font-size: 1.04em;
    color: #333333;
    font-family: 'Nanum Barun Gothic', sans-serif;
    padding-bottom: 19px;
    line-height: 1.5;
}

.email-popup div:nth-child(2) p {
    margin-top: 0px;
    margin-bottom: 0px;
    line-height: 1.5;
    border-bottom: 1px solid rgba(0, 0, 0, 0.05);
    padding-bottom: 77px;
    font-family: 'Nanum Barun Gothic', sans-serif;
    font-size: 15px;
    color: #555555;
}

.email-popup div:nth-child(2) p strong{
    font-weight: bold;
}

.email-popup div:nth-child(3) {
    position: relative;
    height: 115px;
}

.email-popup .close-btn {
    overflow: auto;
    margin: auto;
    width: 146px;
    height: 55px;
    background-color: #555555;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    color: white;
    font-family: 'Nanum Barun Gothic', sans-serif;
    font-size: 1.04em;
}

/* ================================================== */








/* ========== COMMON ========== */
.slide-page { display: none; }

/* top-ribbon-banner */
.hiddenZoneV { position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; clip: rect(0, 0, 0, 0); border: 0; *visibility: hidden; }
.top-ribbon-banner {width:100%;height:100px;}
.top-ribbon-banner .inner {position:relative;width:100%;margin:0 auto;text-align:center;}
.txt-box-ribbon {position:relative;z-index:50;display:block;height:100px;}
.top-ribbon-banner .txt1, .top-ribbon-banner .txt2 {font-weight:bold;text-align:center;}
.top-ribbon-banner .txt1 {display:block;padding:24px 0 7px;font-size:26px;color:#333;font-family: 'NanumSquare';letter-spacing:-1px;}
.top-ribbon-banner .txt2 {display:block;font-size:15px;color:#555;font-family:'Nanum Barun Gothic';}
.top-ribbon-banner .close-btn {position:absolute;z-index:150;top:15px;right:27px;width:21px;height:21px;background:url('/webPub/sc_2018/images/main/banner/close_ribbon_banner.png') no-repeat left top; cursor:pointer;}
.top-ribbon-banner .wrap-chkbox {position:absolute;z-index:150;top:70px;right:27px;height:24px;}
.top-ribbon-banner input[type=checkbox]:not(old) {
    margin:0; padding:0; opacity:0; 
    background:url(/webPub/sc_2018/images/main/banner/check_on_2.gif) no-repeat 0 0;  
    width:0; 
} 
.top-ribbon-banner input[type=checkbox]:not(old) + label {
    display: inline-block; 
    text-align: left; height:20px; padding-left: 30px; 
    background: url(/webPub/sc_2018/images/main/banner/check_off_2.gif) no-repeat 0 0; 
    line-height: 130%; vertical-align: top;
}
.top-ribbon-banner input[type=checkbox]:not(old):checked + label {
    background: url(/webPub/sc_2018/images/main/banner/check_on_2.gif) no-repeat 0 0;
}

.top-ribbon-banner label {font-family: 'Nanum Barun Gothic';padding-top:1px;font-size:14px;color:#555;}

/* Wrap */
.wrap {
    overflow: hidden;
    margin: auto;
    max-width: 1920px;
    min-width: 1263px;
}

[data-scroll="off"]{
    overflow-y: hidden;
}
.contents-area{position:relative;width:1050px;margin:auto;text-align: center;}

.nbg { font-family: 'Nanum Barun Gothic'; letter-spacing: -0.05em; }
.nbsp { padding: 1px; }
.nbsp2 { padding: 2px; }

.clearfix:after { content: ''; display: table; clear: both; }
ul.list:after { content: ''; display: table; clear: both; }
ul.list > li { float: left; }
.float:after { content: ''; display: block; clear: both; }
.f-left { float: left; }
.f-right { float: right; }
.fLeft { float: left; }
.fRight { float: right; }
.b { font-weight: bold; }

.align-l { text-align: left; }
.align-c { text-align: center; }
.align-r { text-align: right; }

.ph0 { padding-left: 0 !important; padding-right: 0 !important; }


/* Grid */
.grid:after { content: ''; display: table; clear: both; }
.grid-12 { float: left; padding: 10px; width: 50%; }
.grid-6 { float: left; padding: 10px; width: 25%; }
.grid-8 { float: left; padding: 10px; width: 33.333333%; }
.grid-12 { float: left; padding: 10px; width: 50%; }


.dimmed{
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0,0,0,.65);
    z-index: 999;
}


/* text */
.input-text{
    display: block;
    margin-top: 15px;
    font-size: 15px;
    color: #777777;
}
.color-point { color: #da281f; }
.text-b { font-weight: 700; }
.color-b { color: #926d49; }
.color-w { color: #fff; }


/* Skip Navigation */
.skip-nav a {
    position: absolute;
    top: -100px;
    display: block;
    overflow: hidden;
    margin: 0 -1px -1px 0;
    height: 1px;
    width: 1px;
    text-align: center;
    font-size: 0;
    line-height: 0;
    z-index: 100000;
}
.skip-nav a:focus {
    top: 0;
    margin: 0;
    padding: 5px;
    width: 100%;
    height: 50px;
    line-height: 40px;
    font-size: 18px;
    font-weight: 700;
    color: #fff;
    outline: none;
    background: #20262c;
}
.blind{
    overflow: hidden;
    display: block;
    position: absolute;
    top: -99999px;
    left: 0;
    width: 1px;
    height: 1px;
    margin: -1px;
}




/* List Style */
.ul li { position: relative; padding-left: 13px; padding-bottom: 12px; font-size: 15px; color: #555555; }
.ul li:last-child { padding-bottom: 0 !important; }
.ul-square li:before { content: ''; position: absolute; top: 6px; left: 0; width: 3px; height: 3px; background: #777777; }

.list-square { margin-left: 15px; list-style: square; }



/* Tab List Style */
.tab-list{
    width: 100%;
}
.tab-list:after { content: ''; display: block; clear: both; }
.tab-list li{
    float: left;
    position: relative;
    margin-top: -1px;
    margin-right: -1px;
    height: 58px;
    color: #555555;
    border: 1px solid #e5e5e5;
    z-index: 1;
}
.tab-list li a,
.tab-list li button{
    display: block;
    width: 100%;
    height: 100%;
    line-height: 58px;
    font-family: 'NanumSquare';
    letter-spacing: -0.06em;
    text-align: center;
    font-size: 18px;
    color: inherit;
}
.tab-list li.on{
    color: #fff;
    background: #926d49;
    border: none;
    z-index: 2;
}
.tab-list[data-tab-col="6"] li{
    width: 16.75%;
}
.tab-list[data-tab-col="5"] li{
    width: 20%;
}
.tab-list[data-tab-col="4"] li{
    width: 25.05%;
}
.tab-list[data-tab-col="3"] li{
    width: 33.33333%;
}
.tab-list[data-tab-col="2"] li{
    width: 50%;
}
.tab-contents > li{
    display: none;
}
.tab-contents > li.on{
    display: block;
}







.country-link-wrap{
    padding-top: 80px;
}
.country-link-wrap .left{
    float: left;
    position: relative;
    padding: 41px 50px 0 120px;
    width: 50%;
    height: 125px;
    background: url('/webPub/sc_2018/images/mypage/country-link1.png');
}
.country-link-wrap .left:after{
    content: '';
    position: absolute;
    top: 0;
    left: 45px;
    bottom: 0;
    margin: auto;
    transform: translateY(1px);
    width: 56px;
    height: 42px;
    background: url('/webPub/sc_2018/images/mypage/video.png');
}
.country-link-wrap .right{
    float: left;
    position: relative;
    padding: 28px 50px 0 120px;
    width: 50%;
    height: 125px;
    background: url('/webPub/sc_2018/images/mypage/country-link2.png');
}
.country-link-wrap .right:after{
    content: '';
    position: absolute;
    top: 0;
    left: 44px;
    bottom: 0;
    margin: auto;
    width: 47px;
    height: 51px;
    background: url('/webPub/sc_2018/images/mypage/document.png');
}
.country-link-wrap a{
    display: inline-block;
    width: 100%;
    background: url('/webPub/sc_2018/images/mypage/country-link.png') no-repeat right center;
}
.country-link-wrap p{
    font-size: 18px;
    color: #333333;
    font-weight: bold;
}
.country-link-wrap span{
    display: inline-block;
    padding-top: 5px;
    line-height: 20px;
    font-size: 13px;
}





/* Icon Style */
.ico{
    display: inline-block;
    vertical-align: middle;
}
.ico-complete{
    margin-right: 5px;
    width: 17px;
    height: 17px;
    background: url('/webPub/sc_2018/images/icon/ico-complete.png');
}
.ico-gift{
    margin-right: 5px;
    width: 41px;
    height: 38px;
    background: url('/webPub/sc_2018/images/icon/ico-gift.png');
}
.ico-link{
    margin-left: 10px;
    width: 6px;
    height: 12px;
    background: url('/webPub/sc_2018/images/icon/ico-link.png');
    vertical-align: middle !important;
}
.ico-play{
    width: 45px;
    height: 45px;
    background: url('/webPub/sc_2018/images/icon/ico-play.png');
}
.ico-n{
    width: 26px;
    height: 24px;
    background: url('/webPub/sc_2018/images/icon/n.png');
}





/* Table */
.table { width: 100%; }
.table tr th { padding: 26px 0 26px 25px; width: 210px; color: #555; border-top: 1px solid #e5e5e5; }
.table tr td { padding: 14px 0; font-family: 'Nanum Barun Gothic'; letter-spacing: -0.05em; color: #555; font-size: 15px; border-top: 1px solid #e5e5e5; }
.table tr:last-child th { border-bottom: 1px solid #e5e5e5; }
.table tr:last-child td { border-bottom: 1px solid #e5e5e5; }
.table tr th span { font-family: 'Nanum Barun Gothic'; font-size: 15px; letter-spacing: -0.05em; color: #555; }
.t-f span { font-family: 'Nanum Barun Gothic'; font-size: 15px; }



/* Pager */
.pager{
    margin: auto;
    width: auto;
}
.pager tr td{
    width: 40px;
    height: 33px;
    line-height: 33px;
    text-align: center;
}
.pager tr td a,
.pager tr td button{
    display: block;
    width: 100%;
    height: inherit;
    line-height: 36px;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
    font-size: 15px;
    color: #777777;
}

.pager tr td.blank{
    width: 30px;
}
.pager tr td.current_page a,
.pager tr td.current_page button{
    font-weight: bold;
    color: #333333;
}
.pager tr td.backward{
    width: 33px;
    border: 1px solid #dbdbdb;
    background: #fff url('/webPub/sc_2018/images/common/backward.png') no-repeat center;
}
.pager tr td.prev{
    width: 33px;
    border: 1px solid #dbdbdb;
    background: #fff url('/webPub/sc_2018/images/common/prev.png') no-repeat center;
}
.pager tr td.next{
    width: 33px;
    border: 1px solid #dbdbdb;
    background: #fff url('/webPub/sc_2018/images/common/next.png') no-repeat center;
}
.pager tr td.forward{
    width: 33px;
    border: 1px solid #dbdbdb;
    background: #fff url('/webPub/sc_2018/images/common/forward.png') no-repeat center;
}


/*
    Form Style
*/
input[type=text]:disabled { border: 1px solid #dddddd; }
 .text-select2 input[type=text]:disabled { border: none; }

.input-id,
.input-email { letter-spacing: -0.03em; }


.search-box{
    position: relative;
    padding-right: 52px;
    margin: auto;
    width: 460px;
    height: 49px;
    border: 1px solid #dddddd;
}
.search-box input{
    width: 100%;
    height: 100%;
    border: none;
}
.search-box button{
    position: absolute;
    top: 0;
    right: 0px;
    bottom: 0;
    margin: auto;
    width: 47px;
    height: 47px;
    background: url('/webPub/sc_2018/images/common/search-btn.png') no-repeat center;
}




/* ------- Button ------- */
.btn-group{
    position: relative;
    margin-top: 30px;
    text-align: center;
}
.btn-group .left{
    float: left;
}
.btn-group .right{
    float: right;
}
.btn-group *{
    vertical-align: top;
}
.btn-group .right *:first-child{
    margin-right: 6px;
}
.btn-group .right *:last-child{
    margin-right: 0;
}
.pos-right { position: absolute; top: 0; right: 0; }

.btn{
    display: inline-block;
    padding: 0 60px;
    height: 55px;
    line-height: 55px;
    font-size: 1.04em;
    font-weight: 700;
    color: #fff;
    letter-spacing: -0.04em;
}
.atn-modify-group {
    padding-top: 20px;
    text-align: center;
}
.atn-modify-group > *:first-child{
    vertical-align: top;
    margin-right: 10px;
}
.atn {
    display: inline-block;
    padding: 0 60px;
    height: 55px;
    line-height: 55px;
    font-size: 1.04em;
    font-weight: 700;
    color: #fff;
    letter-spacing: -0.04em;
    cursor:pointer;
}
.btn2{
    display: inline-block;
    vertical-align: top;
    padding: 0 30px;
    height: 50px;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
    font-size: 15px;
    font-weight: bold;
}
.atn2 {
     display: inline-block;
    vertical-align: top;
    padding: 0 30px;
    height: 50px;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
    font-size: 15px;
    font-weight: bold;
    line-height: 50px;
    cursor:pointer;
}
a.btn2{
    line-height: 50px;
}
.btn-w{
    display: inline-block;
    width: 149px;
    height: 55px;
    line-height: 55px;
    font-size: 1.04em;
    font-weight: 700;
    color: #fff;
    letter-spacing: -0.04em;
}
.btn-g{
    color: #fff;
    background: #777;
}
.btn-b{
    color: #fff;
    background: #7a6654;
}
.atn-b {
    color: #fff;
    background: #7a6654;
}
.btn-f{
    width: 100%;
}
.btn-a{
    padding-right: 25px;
    font-family: 'Nanum Barun Gothic';
    font-size: 15px;
    color: #555;
    background: url('/webPub/sc_2018/images/member/btn-arrow.png') no-repeat right center;
}
.btn-point { background: #da281f; }
.btn-dark { background: #555555; }
.atn-dark { background: #555555; }
.btn-member,
.btn-b-dark { background: #61564b; }

.btn-ide{
    position: relative;
    padding-left: 48px;
    width: 185px;
    height: 50px;
    text-align: center;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
    font-size: 16px;
    font-weight: bold;
    color: #666666;
    background: #fff;
    border: 1px solid #e5e5e5;
    border-radius: 5px;
}
.btn-ide:before{
    content: '';
    position: absolute;
    top: 0;
    left: 49px;
    width: 1px;
    height: 100%;
    background: #f8f8f8;
}
.btn-ide:after{
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 48px;
    height: 48px;
    border-right: 1px solid #e5e5e5;
}
.btn-support{
    width: 223px;
    color: #fff;
    background: #61564b;
    border-color: #4f453b;
}
.btn-support:before { background: rgba(255,255,255,.3); }
.btn-support:after { background: url('/webPub/sc_2018/images/icon/login.png') no-repeat center; border-right-color: #574d43; }
.btn-naver-login:after { background: url('/webPub/sc_2018/images/icon/n.png') no-repeat center; }
.btn-phone:after { background: url('/webPub/sc_2018/images/icon/phone.png') no-repeat center; }
.btn-rate14:after { background: url('/webPub/sc_2018/images/icon/rate14.png') no-repeat center; }
.btn-anonymous:after { background: url('/webPub/sc_2018/images/icon/anonymous.png') no-repeat center; }

.btn-install {
    display: inline-block;
    vertical-align: top;
    padding: 0 17px;
    height: 30px;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
    font-size: 15px;
    color: #555555;
    background: #f7f7f7;
    border: 1px solid #ccc;
}

.btn-border{
    display: inline-block;
    vertical-align: top;
    width: 156px;
    height: 49px;
    line-height: 49px;
    text-align: center;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
    font-weight: bold;
    font-size: 15px;
    color: #333333;
    border: 1px solid #cccccc;
}
.btn-bor{
    color: #333333;
    border: 1px solid #cccccc;
}
.atn-bor{
    color: #333333;
    border: 1px solid #cccccc;
}

.btn-agree{
    vertical-align: bottom;
    padding-right: 16px;
    font-weight: bold;
    background: url('/webPub/sc_2018/images/icon/ico-agree-link.png') no-repeat right center;
}
.btn-link{
    display: inline-block;
    vertical-align: middle;
    width: 50px;
    height: 50px;
    background: #fff url('/webPub/sc_2018/images/icon/btn-link.png') no-repeat left 21px center;
    border: 1px solid #cccccc;
}
.btn-link-d{
    display: inline-block;
    vertical-align: middle;
    width: 50px;
    height: 50px;
    background: #fff url('/webPub/sc_2018/images/icon/btn-link.png') no-repeat left 21px center;
    border: 1px solid #dddddd;
}
.btn-over{
    display: inline-block;
    vertical-align: middle;
    width: 125px;
    height: 45px;
    line-height: 45px;
    color: #fff;
    font-weight: bold;
    font-size: 16px;
    border: 1px solid #fff;
}
.btn-link-s{
    display: inline-block;
    vertical-align: middle;
    width: 30px;
    height: 30px;
    background: #fff url('/webPub/sc_2018/images/icon/btn-link-s.png') no-repeat left 12px center;
    border: 1px solid #cccccc;
}
.btn span{
    position: relative;
}


.var-width { width: auto; }









/* ------- input ------- */
input { max-width: 475px; width: 100%; height: 50px; }


/* ------- select -------- */
.select:after{
    content: '';
    position: absolute;
    top: 0;
    right: 10px;
    bottom: 0;
    margin: auto;
    width: 11px;
    height: 6px;
    background: url('/webPub/sc_2018/images/member/select.png');
    z-index: 1;
}
.sel-bor select{
    border: 1px solid #e5e5e5;
}


/* Select Style */
.select-tab:after { content: ''; display: block; clear: both; }
.t-item2 li { width: 50%; }
.t-item3 li { width: 33.33333%; }
.t-item4 li { width: 25%; }
.t-item5 li { width: 20%; }
.select-tab li{
    float: left;
    position: relative;
}
.select-tab li label{
    display: block;
    position: relative;
    width: 100%;
    height: 100%;
}
.select-tab li label span{
    display: block;
    position: relative;
    top: 0;
    left: 0;
    margin-bottom: -1px;
    margin-right: -1px;
    height: 44px;
    line-height: 44px;
    font-family:'Nanum Barun Gothic';
    letter-spacing: -0.05em;
    text-align: center;
    font-size: 14px;
    color: #888888;
    font-weight: bold;
    background: #f5f5f5;
    border: 1px solid #cccccc;
    z-index: 1;
}
.select-tab li label input{
    position: absolute;
    top: 0;
    left: 0;
    opacity: 0;
    visibility: hidden;
}
.select-tab li label input:checked + span{
    color: #da281f;
    background: #fff;
    border: 1px solid #da281f;
    z-index: 2;
}





/* ------- radio ------- */
.radio{
    position: relative;
    padding-left: 35px;
    height: 20px;
}
.radio input[type=radio]{
    position: absolute;
    top: 0;
    left: 0;
    width: 20px;
    height: 20px;
    opacity: 0;
}
.radio .chk{
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    width: 20px;
    height: 20px;
    background: url('/webPub/sc_2018/images/member/radio.png') no-repeat;
}
.radio input[type=radio]:checked ~ .chk{
    background: url('/webPub/sc_2018/images/member/radio_checked.png') no-repeat;
}


/* ------- checkbox ------- */
.checkbox{
    display: inline-block;
    position: relative;
    padding-right: 35px;
    height: 20px;
}
.checkbox input[type=checkbox],
.checkbox input[type=radio]{
    position: absolute;
    top: 0;
    right: 0;
    width: 20px;
    height: 20px;
    opacity: 0;
}
.checkbox .chk{
    display: block;
    position: absolute;
    top: 0;
    right: 0;
    width: 20px;
    height: 20px;
    background: url('/webPub/sc_2018/images/member/checkbox.png') no-repeat;
}

.checkbox .chk-disabled{
    background: url('/webPub/sc_2018/images/member/checkbox-disabled.png') no-repeat;
}
label.checkbox span{
    line-height: 20px;
    font-size: 1.04em;
    font-weight: bold;
    font-family: 'NanumSquare';
    letter-spacing: -0.04em;
    color: #333;
}
.checkbox input[type=checkbox]:checked ~ .chk,
.checkbox input[type=radio]:checked ~ .chk{
    background: url('/webPub/sc_2018/images/member/checkbox_checked.png') no-repeat;
}
.checkbox input[type=checkbox]:checked ~ span{}
.check-all{
    font-size: 1.04em;
    font-weight: 700;
}
.check-all input[type=checkbox]:checked ~ span{
    color: #da281f;
}
.check-option-list { display: inline-block; }
.check-option-list .checkbox,
.check-option-list .radio { margin-right: 30px; }
.check-option-list .checkbox:last-child { margin-right: 0; }

.check-block-list > div { margin-bottom: 25px; }
.check-block-list > div:last-child { margin-bottom: 0; }

.check-left .checkbox{
    font-family: 'Nanum Barun Gothic';
    padding-left: 33px;
    padding-right: 0;
    font-size: 16px;
}
.check-left input[type=checkbox] { left: 0; right: auto; }
.check-left .checkbox .chk { left: 0; right: auto; }

.id-check-left{
    margin-right: 30px;
    font-family: 'Nanum Barun Gothic';
    font-size: 15px;
    line-height: 20px;
    color: #555;
}
.id-check-left:last-child { margin-right: 0; }
.id-check-left { padding-left: 30px; padding-right: 0; }
.id-check-left input[type=checkbox] { left: 0; right: auto; }
.id-check-left .chk { left: 0; right: auto; }

.check-choice em{
    font-family: 'NanumSquare';
    font-style: normal;
    font-size: 18px;
    color: #555555;
}







/* ------- password ------- */
.form-password,
.form-password-check{
    display: inline-block;
    position: relative;
    max-width: 475px;
    width: 100%;
}
.form-password i,
.form-password-check i{
    content: '';
    position: absolute;
    top: 0;
    right: 12px;
    bottom: 0;
    margin: auto;
    width: 20px;
    height: 19px;
}
.form-password [data-pswd="on"] + i { background: url('/webPub/sc_2018/images/member/form_password.png') no-repeat left center; }
.form-password-check [data-pswd="on"] + i { background: url('/webPub/sc_2018/images/member/form_password_check.png') no-repeat left center; }
.form-password [data-pswd="true"] + i { background: url('/webPub/sc_2018/images/member/form_password_true.png') no-repeat left center; }
.form-password-check [data-pswd="true"] + i { background: url('/webPub/sc_2018/images/member/form_password_check_true.png') no-repeat left center; }
.form-password [data-pswd="false"] + i { background: url('/webPub/sc_2018/images/member/form_password_false.png') no-repeat left center; }
.form-password input,
.form-password-check input { padding-right: 45px; }
.form-password [data-pswd="true"] ~ .password-check-text{
    position: absolute;
    top: 0;
    right: 42px;
    height: 50px;
    line-height: 50px;
    font-family: 'Nanum Barun Gothic';
    font-size: 15px;
    font-weight: bold;
    color: #926d49;
}
.form-password [data-pswd="false"] ~ .password-check-text{
    position: absolute;
    top: 0;
    right: 42px;
    height: 50px;
    line-height: 50px;
    font-family: 'Nanum Barun Gothic';
    font-size: 15px;
    font-weight: bold;
    color: #da281f;
}



/* ------- email ------- */
.input-email{
    position: relative;
    max-width: 475px;
    height: 50px;
    text-align: left;
    color: #555;
    border: 1px solid #dddddd;
}
.input-email:after{
    content: '';
    position: absolute;
    top: 0;
    right: 119px;
    bottom: 0;
    margin: auto;
    width: 1px;
    height: 27px;
    background: #e5e5e5;
}
.input-email .email1,
.input-email .email2,
.input-email .email3{
    display: inline-block;
    vertical-align: middle;
    height: 48px;
    border: none;
}
.input-email .email1 { width: 130px; }
.input-email .email2 { padding-left: 20px; width: 200px; }
.input-email .email3 { vertical-align: top; position: absolute; top: 0; right: 0; width: 118px; }



/* Phone */

.input-phone{
    position: relative;
    margin-bottom: 0px;
    max-width: 475px;
    width: 100%;
    height: 50px;
    border: 1px solid #dddddd;
    font-size: 0;
}
.input-phone:after{
    content: '';
    position: absolute;
    top: 0;
    left: 129px;
    bottom: 0;
    margin: auto;
    width: 1px;
    height: 27px;
    background: #e5e5e5;
}
.input-phone input{
    margin-left: 1px;
    padding-left: 20px;
    width: 298px;
    height: 48px;
    border: none;
}
.input-phone .select{
    display: inline-block;
    vertical-align: top;
    position: relative;
    width: 129px;
    height: 48px;
}




.non-select{
    background: #fafafa;
}
.non-select:after{
    content: none;
}
.input-disabled input:disabled{
    border: none;
}




/* ------- Address ------- */
.input-address{
    font-size: 0;
}
.input-address .address1{
    margin: 0 10px 10px 0;
    width: 252px;
}
.input-address .address2{
    max-width: 100%;
}
.input-address p{
    padding-top: 13px;
    padding-bottom: 4px;
    font-size: 14px;
    color: #999999;
}






/* RRN */
.input-rrn{
    padding-top: 5px;
    font-size: 0;
}
.rrn1,
.rrn2{
    margin-right: 10px;
    width: 135px;
}
.input-rrn p{
    padding-top: 13px;
    font-size: 14px;
    color: #999999;
}



/* span wrap */
.span-wrap span{
    display: block;
    padding-bottom: 16px;
}
.span-wrap span:last-child{
    padding-bottom: 0;
}










/*
    Header
*/
.header{
    position: relative;
    z-index: 99999;
    max-width: 1920px;
    min-width: 1263px;
    width: 100%;
}
.header-main{
    position: absolute;
    z-index: 99999;
}
.header-wrap {
    position: relative;
    height: 91px;
    text-align: center;
    background: rgba(0,0,0,.5);
    border-bottom: 1px solid rgba(255,255,255,.2);
}
.logo{
    position: absolute;
    top: 20px;
    left: 70px;
    z-index: 11;
}
.logo span{
    overflow: hidden;
    display: block;
    width: 244px;
    height: 50px;
    background: url('/webPub/sc_2018/images/main/logo.png') no-repeat center;
    text-indent: 101%;
    white-space: nowrap;
}


.gnb{
    display: inline-block;
    margin-left: -75px;
}
.gnb > ul:after { content: ''; display: block; clear: both; }

.gnb > ul > li{
    position: relative;
    float: left;
    height: 91px;
    line-height: 91px;
}
.gnb > ul > li > a{
    display: block;
    padding: 0 55px;
    font-size: 20px;
    color: #ffffff;
    font-weight: 700;
    letter-spacing: -0.06em;
}
.gnb-sub{
    display: none;
    position: absolute;
    top: 90px;
    left: 0;
    padding: 30px 0 40px;
    width: 100%;
}
.gnb-sub ul li{
    line-height: normal;
    margin-bottom: 10px;
}
.gnb-sub ul li:last-child{
    margin-bottom: 0;
}
.gnb-sub ul li a{
    font-family: 'Nanum Barun Gothic';
    font-size: 15px;
    letter-spacing: -0.05em;
}
.gnb-sub ul li a:hover,
.gnb-sub ul li a:focus{
    color: #da281f;
    font-weight: 700;
}
.gnb-sub-bg{
    display: none;
    position: absolute;
    top: 91px;
    width: 100%;
    height: 432px;
    background: #fff;
    box-shadow: 0px 14px 35px -10px rgba(0,0,0,.28);
}
[data-sub="on"]{
    border-bottom-color: #e5e5e5;
    background: rgba(255,255,255,1);
}
[data-sub="on"] .gnb-sub{
    display: block;
}
.gnb > ul > li:hover:after,
[data-gnb="on"]:after{
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 2px;
    background: #da281f;
}
[data-sub="on"] .gnb > ul > li > a{
    color: #222222;
}
[data-sub="on"] .logo span,
[data-full-menu="on"] .logo span{
    background: url('/webPub/sc_2018/images/main/logo_on.png') no-repeat center;
}
/* [data-sub="on"] .login button{
    background: url('/webPub/sc_2018/images/main/login_on.png') no-repeat center;
} */
[data-sub="on"] .search button{
    background: url('/webPub/sc_2018/images/main/search_on.png') no-repeat center;
}
[data-sub="on"] .gnb-service a{
    border-left-color: #e5e5e5;
    background: url('/webPub/sc_2018/images/main/gnb_on.png') no-repeat center;
}
[data-sub="on"] .gnb-sub-bg{
    display: block;
}



[data-sub="on"] .login [data-login="false"] i{
    background: url('/webPub/sc_2018/images/main/login_on.png') no-repeat center;
}
[data-sub="on"] .login [data-login="true"] i{
    background: url('/webPub/sc_2018/images/main/login_on.png') no-repeat center;
}
[data-sub="on"] .login [data-login="false"] em{
    color: #555555;
}
[data-sub="on"] .login [data-login="true"] em{
    color: #555555;
}




/*
    Header: Join & Member Style
*/
[data-thm="light"]{
    border-bottom-color: #e5e5e5;
    background: rgba(255,255,255,1);
}
[data-thm="light"] .gnb > ul > li > a{
    color: #222222;
}
[data-thm="light"] .logo span{
    background: url('/webPub/sc_2018/images/main/logo_on.png') no-repeat center;
}

[data-thm="light"] .login [data-login="false"] i{
    background: url('/webPub/sc_2018/images/main/login_on.png') no-repeat center;
}
[data-thm="light"] .login [data-login="true"] i{
    background: url('/webPub/sc_2018/images/main/login_on_active.png') no-repeat center;
}
[data-thm="light"] .login [data-login="false"] em{
    color: #555555;
}
[data-thm="light"] .login [data-login="true"] em{
    color: #926d49;
}

[data-thm="light"] .search button{
    background: url('/webPub/sc_2018/images/main/search_on.png') no-repeat center;
}
[data-thm="light"] .gnb-service a{
    border-left-color: #e5e5e5;
    background: url('/webPub/sc_2018/images/main/gnb_on.png') no-repeat center;
}






.header-button-wrap{
    position: absolute;
    top: 0;
    right: 0;
}
.header-button-wrap > div{
    float: left;
}
.header-button-wrap:after { content: ''; display: block; clear: both; }
.login-search{
    padding: 20px 40px 0 0;
}
.login-search > ul > li{
    float: left;
}
.login {
    position: relative;
    margin-right: 10px;
}
.login button{
    width: 55px;
    height: 50px;
}
.login button i { display: inline-block; margin-top: 2px; width: 28px; height: 22px; }
.login button em { display: block; margin-top: 0px; font-family: 'Nanum Barun Gothic'; letter-spacing: -0.05em; font-size: 12px; }
.login [data-login="false"] i{
    background: url('/webPub/sc_2018/images/main/login.png') no-repeat center;
}
.login [data-login="true"] i{
    background: url('/webPub/sc_2018/images/main/login-active.png') no-repeat center;
}
.login [data-login="false"] em{
    color: #fff;
}
.login [data-login="true"] em{
    color: #fff9d2;
}
.login-menu-section{
    display: none;
    position: absolute;
    top: 69px;
    left: -85px;
    width: 222px;
    height: 333px;
    background: #fff;
    border: 1px solid #e5e5e5;
    z-index: 1;
    box-shadow: 0px 10px 16px 0px rgba(0,0,0,.3);
}
.login-menu-section:after{
    content: '';
    position: absolute;
    top: -6px;
    left: 50%;
    margin-left: -11px;
    width: 20px;
    height: 20px;
    background: #fff;
    border: 1px solid #e5e5e5;
    transform: rotate(45deg);
    z-index: -1;
}
[data-login-menu="on"]{
    display: block;
}




.login-link-wrap{
    padding: 15px 0;
    background: #fff;
    border-bottom: 1px solid #ddd;
}
.login-link-wrap a{
    display: inline-block;
    width: 83px;
    height: 32px;
    line-height: 32px;
    font-size: 15px;
    font-weight: 700;
}
a.login_link{
    margin-right: 10px;
    color: #fff;
    background: #61564b;
    border: 1px solid #554b40;
}
a.join_link{
    color: #444444;
    border: 1px solid #cccccc;
}
.my-menu-wrap ul li{
    border-bottom: 1px solid #eee;
}
.my-menu-wrap ul li:last-child{
    border-bottom: none;
}
.my-menu-wrap ul li a{
    display: block;
    padding: 14px 19px;
    text-align: left;
    font-size: 15px;
    line-height: 1.04em;
    background: url('/webPub/sc_2018/images/main/my_menu_arrow.png') no-repeat right 20px center;
}
.my-menu-wrap ul li a:hover,
.my-menu-wrap ul li a:focus{
    color: #da281f;
    font-weight: 700;
    background: url('/webPub/sc_2018/images/main/my_menu_arrow_on.png') no-repeat right 20px center;
}



.search button{
    width: 50px;
    height: 50px;
    background: url('/webPub/sc_2018/images/main/search.png') no-repeat center;
}

.gnb-service a{
    display: block;
    width: 100px;
    height: 90px;
    background: url('/webPub/sc_2018/images/main/gnb.png') no-repeat center;
    border-left: 1px solid rgba(255,255,255,.2);
}
.sponsorship-service button{
    width: 150px;
    height: 90px;
    font-size: 19px;
    font-weight: 700;
    color: #fff;
    background: #da281f;
}


/* GNB 전체 메뉴 */
#gnb-full-wrap{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    padding: 130px 0 30px;
    background: #fff;
    border-bottom: 1px solid #dddddd;
    z-index: 10;
    box-shadow: 0px 10px 25px 8px rgba(0,0,0,.28);
}
[data-gnb-full="off"] { display: none; }
[data-gnb-full="on"] { display: block; }
.gnb-full-inner{
    margin: auto;
    width: 1480px;
}
.close-gnb-full{
    position: absolute;
    top: 25px;
    right: 70px;
}
.close-gnb-full button{
    width: 38px;
    height: 38px;
    background: url('/webPub/sc_2018/images/main/close_gnb_full.png') no-repeat center;
}
.full-menu-list ul{
    float: left;
    padding-right: 50px;
    width: 255px;
    text-align: left;
}
.full-menu-list:after { content: ''; display: block; clear: both; }
.full-menu-list ul:last-child{
    padding-right: 0;
    width: 205px;
}
.full-menu-list ul li{
    margin-bottom: 11px;
    letter-spacing: -0.12em;
}
.full-menu-list ul li:last-child{
    margin-bottom: 0;
}
.full-menu-list ul li a{
    font-family: 'Nanum Barun Gothic';
    font-size: 15px;
}
.full-menu-list ul li a:hover,
.full-menu-list ul li a:focus{
    font-weight: 700;
    color: #da281f;
}
.full-menu-list h1{
    margin-bottom: 23px;
    padding-bottom: 6px;
    font-size: 21px;
    font-weight: 700;
    color: #333333;
    border-bottom: 1px solid #aaaaaa;
}
.full-grid-list{
    margin-top: 40px;
    border: 1px solid #e5e5e5;
}
.full-grid-list.inner-gnb{
    max-width:1400px; 
	margin:276px auto 0;
}
.campaign-wrap ul{
    font-size: 0;
}
.campaign-wrap ul li{
    display: inline-block;
    vertical-align: top;
    padding: 25px 0;
    height: 138px;
    text-align: center;
    border-right: 1px solid #e5e5e5;
}
.campaign-wrap ul li:last-child { border-right: none; }

[data-camp-item="10"] ul li { width: 10%; }
[data-camp-item="9"] ul li { width: 11.11111%; }
[data-camp-item="8"] ul li { width: 12.5%; }
[data-camp-item="7"] ul li { width: 14.28571%; }
[data-camp-item="6"] ul li { width: 16.66666%; }
[data-camp-item="5"] ul li { width: 20%; }
[data-camp-item="4"] ul li { width: 25%; }
[data-camp-item="3"] ul li { width: 33.33333%; }
[data-camp-item="2"] ul li { width: 50%; }
[data-camp-item="1"] ul li { width: 100%; }
.campaign-icon img{
    margin: auto;
}
.campaign-title p{
    font-family: 'Nanum Barun Gothic';
    margin-top: 10px;
    font-size: 15px;
    color: #555555;
}




/*
    Header: Quick 후원하기 버튼
*/
.quick-sponsorship{
    position: fixed;
    right: 70px;
    bottom: 50px;
}
.quick-sponsorship button{
    display: block;
    width: 140px;
    height: 140px;
}
.quick-wrap,
[data-quick-visual="in"] { background: url('/webPub/sc_2018/images/common/quick_in.png') no-repeat center / contain; }
.quick-wrap:hover,
[data-quick-visual="out"] { background: url('/webPub/sc_2018/images/common/quick_out.png') no-repeat center / contain; }





/* 서브 GNB */
.header-2depth-wrap{
    position: absolute;
    max-width: 1920px;
    width: 100%;
    background: rgba(248, 248, 248, .95);
    text-align: center;
    z-index: 2;
}
.header-2depth-wrap ul li{
    display: inline-block;
    vertical-align: top;
}
.header-2depth-wrap a{
    display: block;
    padding: 15px;
    height: 50px;
    font-family: 'Nanum Barun Gothic';
    letter-spacing: -0.05em;
}
.header-2depth-wrap ul li.on a{
    color: #da281f;
    font-weight: bold;
}















/*
    Footer
*/
#footer{
    background: #f1f1f1;
    border-top: 1px solid #e5e5e5;
}
#footer .inner{
    margin: auto;
    width: 1050px;
}
#footer a,
#footer span{
    font-family: "NanumBarunGothic";
    letter-spacing: -0.05em;
}

.footer-top{
    padding-top: 20px;
}
.footer-top:after { content: ''; display: block; clear: both; }
.sns-link-wrap{
    float: left;
    margin-top: 2px;
}
.family-site-wrap{
    float: right;
}
.sns-link-wrap:after { content: ''; display: block; clear: both; }
.sns-link-wrap a{
    float: left;
    margin-right: 20px;
}
.sns-link-wrap a:last-child{
    margin-right: 0;
}
.sites{
    float: left;
    position: relative;
    margin-right: 5px;
}
.link-btn button{
    position: relative;
    padding-left: 15px;
    width: 160px;
    height: 35px;
    text-align: left;
    font-size: 13px;
    color: #666666;
    background: #fff;
    border: 1px solid #cccccc;
}
.link-btn button i{
    position: absolute;
    top: 0;
    right: 10px;
    bottom: 0;
    margin: auto;
    width: 11px;
    height: 6px;
    background: url('/webPub/sc_2018/images/main/sites_arrow.png');
}
.sites .link-list{
    overflow-y: scroll;
    display: none;
    position: absolute;
    bottom: 34px;
    right: 0;
    height: 450px;
    background: #fff;
    border: 1px solid #e5e5e5;
    z-index: 99999;
}
.sites .link-list a{
    display: block;
    padding: 6px 5px 6px 15px;
    font-size: 15px;
}
.sites .link-list a:hover{
    background: #f8f8f8;
}
.global .link-list{
    width: 200px;
}
.family .link-list{
    padding: 0 30px;
}
.link-list .tit{
    position: relative;
    padding: 10px 5px 10px 5px;
    border-bottom: 1px solid #e5e5e5;
}
.family .tit{
    padding-left: 105px;
}
.family .tit span {
    position: absolute;
    top: 17px;
    left: 0;
    font-family: 'Nanum Barun Gothic';
    font-size: 15px;
    letter-spacing: -0.05em;
    font-weight: bold;
    color: #333333;
}
[data-sites="on"] .link-list{
    display: block;
}
[data-sites="on"] .link-btn button i{
    background: url('/webPub/sc_2018/images/main/sites_on_arrow.png');
}
.site-top{
    float: left;
}
.site-top button{
    display: block;
    width: 35px;
    height: 35px;
    background: #555555 url('/webPub/sc_2018/images/main/site_top.png') no-repeat center;
}




.footer-menu-list{
    margin-top: 22px;
}
.footer-menu-list ul li{
    float: left;
    position: relative;
    margin-right: 15px;
    padding-right: 17px;
}
.footer-menu-list ul:after { content: ''; display: block; clear: both; }
.footer-menu-list ul li:after{
    content: '';
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    margin: auto;
    width: 1px;
    height: 13px;
    background: #e5e5e5;
}
.footer-menu-list ul li:last-child{
    margin-right: 0;
    padding-right: 0;
}
.footer-menu-list ul li:last-child:after{
    content: none;
}
.footer-menu-list ul li a{
    font-size: 15px;
    color: #555555;
    font-weight: 700;
}
.footer-info-list{
    margin-top: 14px;
}
.footer-info-list ul:after { content: ''; display: block; clear: both; }
.footer-info-list ul li{
    float: left;
    position: relative;
    margin-right: 10px;
    padding-right: 12px;
}
.footer-info-list ul li:after{
    content: '';
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    margin: auto;
    width: 1px;
    height: 13px;
    background: #e5e5e5;
}
.footer-info-list ul li:last-child{
    margin-right: 0;
    padding-right: 0;
}
.footer-info-list ul li:last-child:after{
    content: none;
}
.footer-info-list ul li a{
    font-size: 13px;
    color: #777777;
    letter-spacing: -0.05em;
}
.copyright{
    margin-top: 6px;
    padding-bottom: 22px;
}
.copyright span{
    font-size: 13px;
    color: #999999;
    letter-spacing: -0.03em;
}










@media (max-width: 1680px) {
    .header-wrap{
        height: 81px;
    }
    .logo{
        top: 18px;
    }
    .logo span{
        width: 213px;
        height: 44px;
        background-size: contain;
    }
    [data-sub="on"] .logo span,
    [data-full-menu="on"] .logo span,
    [data-thm="light"] .logo span{
        background-size: contain;
    }
    .gnb > ul > li{
        height: 80px;
        line-height: 80px;
    }
    .gnb > ul > li > a{
        font-size: 18px;
    }
    .gnb-service a{
        width: 80px;
        height: 80px;
    }
    .login-search{
        padding-top: 15px;
    }
    .sponsorship-service button{
        height: 80px;
        font-size: 18px;
    }
    .gnb-sub{
        top: 80px;
    }
    .gnb-sub-bg{
        top: 81px;
    }
    .login-menu-section{
        top: 59px;
    }

    .gnb-full-inner{
        width: 100%;
    }
    .full-menu-list{
        text-align: center;
    }
    .full-menu-list ul{
        float: none;
        display: inline-block;
        vertical-align: top;
        width: 198px;
    }
    .full-menu-list ul:last-child{
        width: 135px;
    }

}

@media (max-width: 1440px) {
    .logo{
        left: 30px;
    }
    .logo span{
        width: 190px;
    }
    .login{
        margin-right: 0;
    }
    .login-search{
        padding: 16px 20px 0 0;
    }
    .gnb{
        margin-left: -115px;
    }
    .gnb-sub ul li a{
        font-size: 14px;
    }
    .gnb > ul > li > a{
        padding: 0 40px;
    }
}


@media (max-width: 1280px) {
    .quick-sponsorship { right: 55px; bottom: 35px; }
    .quick-sponsorship button { width: 120px; height: 120px; }
}


@media (max-width: 1279px) {
    /*
        Header
    */
    /* #gnb{
        display: none;
    } */
}



@media print {
    * {
        -webkit-print-color-adjust: exact !important;   /* Chrome, Safari */
        color-adjust: exact !important;                 /*Firefox*/
    }
}

</style>
</head>
<body>


<div id="contents" class="container">




            <!-- 후원하기 컨텐츠 영역 -->
            <div class="support-area">

                <div class="support-head">
                    <h2>후원분야 선택</h2>
                    <div class="step">

                    </div>
                </div>



                <div class="support-body non-bor">
                    <form action="">
                        <fieldset>
                            <legend>후원분야 선택</legend>
                        </fieldset>
                        <table class="support-table monthly-choice-type">
                            <caption>후원 1단계</caption>
                            <tbody>



                                <!-- 일반후원 -->
                                <tr class="don-monthly-row choice-help-row" data-choice="on">
                                    <td colspan="2" class="top-help-td">

                                        <div class="choice-top-help">
                                            <h3 class="nbg">기부에 감사드립니다.</h3>
                                        </div>

                                        <table class="choice-table">
                                            <caption>일반후원 테이블</caption>
                                            <tbody>
                                                <tr><th class="don-monthly-head">
                                                    <div class="check-left check-choice">
                                                        <label class="checkbox selCheck" for="chk_0416">
                                                            <input id="chk_0416" type="checkbox" name="chkProj" value="0416" title="일반후원" data-monthly-check="0416" checked="">
                                                            <input type="hidden" id="cate_0416" value="정기후원">
                                                            <i class="chk"></i>
                                                            <em>개인후원</em>
                                                        </label>
                                                    </div>
                                                </th>
                                                <td align="right">
                                                    <div class="don-monthly-wrap">
                                                        <div class="select select-monthly">
                                                            <select class="selectSupportPrice" id="sel_0416" title="일반후원 금액 선택" data-monthly-type="0416">
                                                                <option value="">선택</option>



																<option value="100000">100000</option>

																<option value="50000">50000</option>

																<option value="30000">30000</option>

																<option value="20000">20000</option>




                                                                <option value="write">직접입력</option>


                                                            </select>
                                                        </div>
                                                        <div class="manual-input">
                                                            <input type="text" id="txt_0416" title="일반후원 금액 직접 입력" data-monthly-input="0416" onkeyup="onlyNumber(this); fn_selMoney(this.id);" value="0" readonly="" maxlength="10">
                                                        </div>
                                                        <span class="nbg">원</span>
                                                    </div>
                                                </td>
                                            </tr></tbody>
                                        </table>
                                    </td>
                                </tr>



                                <!-- 해외후원 -->
                                <tr class="don-monthly-row choice-help-row" data-choice="off">
                                    <td colspan="2" class="top-help-td">

                                        <table class="choice-table">
                                            <caption>해외후원 테이블</caption>
                                            <tbody>
                                                <tr><th class="don-monthly-head">
                                                    <div class="check-left check-choice">
                                                        <label class="checkbox selCheck" for="chk_0414">
                                                            <input id="chk_0414" type="checkbox" name="chkProj" value="0414" title="해외후원" data-monthly-check="0414">
                                                            <input type="hidden" id="cate_0414" value="정기후원">
                                                            <i class="chk"></i>
                                                            <em>해외후원</em>
                                                        </label>
                                                    </div>
                                                </th>
                                                <td align="right">
                                                    <div class="don-monthly-wrap">
                                                        <div class="select select-monthly">
                                                            <select class="selectSupportPrice" id="sel_0414" title="해외후원 금액 선택" data-monthly-type="0414">
                                                                <option value="">선택</option>



																<option value="100000">100000</option>

																<option value="50000">50000</option>

																<option value="30000">30000</option>

																<option value="20000">20000</option>




                                                                <option value="write">직접입력</option>


                                                            </select>
                                                        </div>
                                                        <div class="manual-input">
                                                            <input type="text" id="txt_0414" title="해외후원 금액 직접 입력" data-monthly-input="0414" onkeyup="onlyNumber(this); fn_selMoney(this.id);" value="0" readonly="" maxlength="10">
                                                        </div>
                                                        <span class="nbg">원</span>
                                                    </div>
                                                </td>
                                            </tr></tbody>
                                        </table>
                                    </td>
                                </tr>




                                <!-- 국내후원 -->
                                <tr class="don-monthly-row choice-help-row" data-choice="off">
                                    <td colspan="2" class="top-help-td">

                                        <table class="choice-table">
                                            <caption>국내후원 테이블</caption>
                                            <tbody>
                                                <tr><th class="don-monthly-head">
                                                    <div class="check-left check-choice">
                                                        <label class="checkbox selCheck" for="chk_496">
                                                            <input id="chk_496" type="checkbox" name="chkProj" value="496" title="국내후원" data-monthly-check="496">
                                                            <input type="hidden" id="cate_496" value="정기후원">
                                                            <i class="chk"></i>
                                                            <em>국내후원</em>
                                                        </label>
                                                    </div>
                                                </th>
                                                <td align="right">
                                                    <div class="don-monthly-wrap">
                                                        <div class="select select-monthly">
                                                            <select class="selectSupportPrice" id="sel_496" title="국내후원 금액 선택" data-monthly-type="496">
                                                                <option value="">선택</option>



																<option value="100000">100000</option>

																<option value="50000">50000</option>

																<option value="30000">30000</option>

																<option value="20000">20000</option>




                                                                <option value="write">직접입력</option>


                                                            </select>
                                                        </div>
                                                        <div class="manual-input">
                                                            <input type="text" id="txt_496" title="국내후원 금액 직접 입력" data-monthly-input="496" onkeyup="onlyNumber(this); fn_selMoney(this.id);" value="0" readonly="" maxlength="10">
                                                        </div>
                                                        <span class="nbg">원</span>
                                                    </div>
                                                </td>
                                            </tr></tbody>
                                        </table>
                                    </td>
                                </tr>



                                <!-- 긴급구호/인도적지원 -->
                                <tr class="don-monthly-row choice-help-row" data-choice="off">
                                    <td colspan="2" class="top-help-td">

                                        <table class="choice-table">
                                            <caption>긴급구호/인도적지원 테이블</caption>
                                            <tbody>
                                                <tr><th class="don-monthly-head">
                                                    <div class="check-left check-choice">
                                                        <label class="checkbox selCheck" for="chk_0420">
                                                            <input id="chk_0420" type="checkbox" name="chkProj" value="0420" title="긴급구호/인도적지원" data-monthly-check="0420">
                                                            <input type="hidden" id="cate_0420" value="정기후원">
                                                            <i class="chk"></i>
                                                            <em>긴급구호/인도적지원</em>
                                                        </label>
                                                    </div>
                                                </th>
                                                <td align="right">
                                                    <div class="don-monthly-wrap">
                                                        <div class="select select-monthly">
                                                            <select class="selectSupportPrice" id="sel_0420" title="긴급구호/인도적지원 금액 선택" data-monthly-type="0420">
                                                                <option value="">선택</option>



																<option value="100000">100000</option>

																<option value="50000">50000</option>

																<option value="30000">30000</option>

																<option value="20000">20000</option>




                                                                <option value="write">직접입력</option>


                                                            </select>
                                                        </div>
                                                        <div class="manual-input">
                                                            <input type="text" id="txt_0420" title="긴급구호/인도적지원 금액 직접 입력" data-monthly-input="0420" onkeyup="onlyNumber(this); fn_selMoney(this.id);" value="0" readonly="readonly" maxlength="10">
                                                        </div>
                                                        <span class="nbg">원</span>
                                                    </div>
                                                </td>
                                            </tr></tbody>
                                        </table>
                                    </td>
                                </tr>



                            </tbody>
                        </table>



					</form>
                        <div class="btn-group">
                            <button id="btnNext" class="btn btn-point" type="button" onclick="fn_nextStep();">다음 단계로</button>
                        </div>

                </div>

                <div class="support-foot">
                    <hr>
                    <div class="foot-text">

											<h5>SAFETY의 후원회원이 되시면,</h5>
                      <h6 class="nbg">지정기부금은 소득금액의 30%, 법정기부금은 소득금액의 100% 한도 내에서 15% 세액공제 받으실 수 있습니다.</h6>
                    </div>
                </div>

            </div> <!-- support_area end -->



</div> <!-- 본문 컨텐츠: contents end -->



<!-- Footer 삽입 위치 -->

		<div id="footer">
            <div class="inner">
                <div class="footer-top">
									<!-- 로고 이미지를 박는 곳 -->
                    <div class="sns-link-wrap">
                        <a href="https://blog.naver.com/savethechildrenkr" target="_blank"><img src="./SAFETY_files/sns1.png" alt=""></a>
                        <a href="https://www.facebook.com/savethechildrenkorea" target="_blank"><img src="./SAFETY_files/sns2.png" alt=""></a>
                        <a href="https://www.instagram.com/savethechildrenkr" target="_blank"><img src="./SAFETY_files/sns3.png" alt=""></a>
                        <a href="https://twitter.com/stckorea" target="_blank"><img src="./SAFETY_files/sns4.png" alt=""></a>
                        <a href="https://www.youtube.com/user/savethechildrenkr" target="_blank"><img src="./SAFETY_files/sns5.png" alt=""></a>
                    </div>

                </div>
                <div class="footer-bottom">
                    <div class="footer-menu-list">
                        <ul>
                            <li><a href="#">이용약관</a></li>
                            <li><a href="https://www.google.co.kr/maps/place/%EA%B5%AC%ED%8A%B8%EC%95%84%EC%B9%B4%EB%8D%B0%EB%AF%B8/@37.4820385,126.8960117,17z/data=!3m1!4b1!4m5!3m4!1s0x357c9e15a9d09d3d:0xc6bd63de2a7fb0c7!8m2!3d37.4820385!4d126.8982004">오시는 길</a></li>
                            <li><a href="#" target="_blank">FAQ</a></li>
                        </ul>
                    </div>
                    <div class="footer-info-list">
                        <ul>
                            <li><a>서울특별시 구로구 구로동 시흥대로163길 33 주호타워 2층,3층</a></li>
                            <li><a>대표전화 010-2128-4513</a></li>
                            <li><a>대표자 정준호</a></li>
                        </ul>
                    </div>
                    <div class="copyright">
                        <span>Copyright © hoilea KOREA </span>
                    </div>
                </div>
            </div>
        </div>

<!-- Footer end -->



</body>
</html>