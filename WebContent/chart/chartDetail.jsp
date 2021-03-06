<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="format-detection" content="telephone=no" />
<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />

<title>Visualization Project</title>

<!-- 데이터플래닛 -->
<link rel="stylesheet" href="../css/user/icons.css" />
<link rel="stylesheet" href="../css/user/style.css" />
<link rel="stylesheet" href="../css/common/animate.min.css" />
<script src="../js/common/jquery-latest.js"></script>
<script src="../js/common/jquery-ui.min.js"></script>


<!-- 부트스트랩 관련 -->
<link rel="stylesheet" href="../css/vendor/bootstrap.css">
<script src="../js/vendor/bootstrap.js"></script>
<script src="../js/vendor/sidebar.js"></script>
<link rel="stylesheet" href="../css/vendor/navbar.css">

<!-- Fade In 효과 -->
<script type="text/javascript">

      // 페이지 Fade In 효과
      $(document).ready(function(){

          /*! Fades in page on load */
          $('body').css('display', 'none');
          $('body').fadeIn(700);

      });
</script>   

</head>
<body class="overflow-x-hidden" style="">

<!-- Navigation 부분 -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a id="menu-toggle" href="#" class="nav-btn btn-dark btn-lg toggle">
                <i class="fa fa-bars" style="color:#fff;"></i>
            </a>
        </div>
    </div>
</nav>
<nav id="sidebar-wrapper">
    <ul class="sidebar-nav">
        <a id="menu-close" href="#" class="btn btn-danger pull-right hidden-md hidden-lg toggle"><i class="fa fa-times"></i></a>
        <li class="sidebar-brand">
            <a href="../"><strong>[ HOME ]</strong></a>
        </li>
        <li>
            <a href="#" title="About">About</a>
        </li>
        <li>
            <a href="chartList.io" title="Data Charts">Data - Charts</a>
        </li>
        <li>
            <a href="../comingsoon.html" title="Issue">Issue</a>
        </li>
        <li>
            <a href="../comingsoon.html" title="Service">Service</a>
        </li>
    </ul>
</nav>
<!-- /navigation -->

<div class="wrapper">

<div class="chart-view-bg" style="background-image: url(../images/chart/cover/chart_bg3.jpg);">
    <div class="container">
        <div class="chart">
            <div class="view">
                <div class="summury">
                    <span class="icn type1"></span>
                    &nbsp;
                    <h1 class="title">${chart.chart_title}</h1>
                    <h2 class="subtitle"></h2>
                    <div class="info">
                        <div class="left">
                            <dl>
                                <dt>데이터 출처</dt>
                                <dd>${chart.chart_datasource}</dd>
                                <dt>기준 년도</dt>
                                <dd>${chart.chart_year}</dd>
                                <dt>자료 단위</dt>
                                <dd>${chart.chart_unit}</dd>
                            </dl>
                        </div>
                        <div class="line"></div>
                        <div class="right">
                            <dl>
                                <dt>시각화 유형</dt>
                                <dd>${chart.chart_visualtype}</dd>
                                <dt>제작자</dt>
                                <dd>${chart.chart_author}</dd>
                                <dt>키워드</dt>
                                <dd>${chart.chart_keyword}</dd>
                            </dl>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="overlay-bg"></div>
</div><!-- </wrapper> -->

<div class="container">
    <div class="chart">
        <div class="view">
            <div class="cont">
                <h2 style="text-align:center">${chart.chart_title}</h2><br>
                <%-- <h3>../data${chart.chart_filepath}</h3><br> --%>
                <!-- <iframe width="100%" height="600" src="https://dplive.dataplanet.co.kr/401KY/code/6675" frameborder="0" class="chart-frame"></iframe> -->
                 
                 <c:if test="${chart.chart_datatype eq 'HTML'}">
	                <iframe width="100%" height="600" src="../data${chart.chart_filepath}" frameborder="0" class="chart-frame"></iframe>
                 </c:if>
                 <c:if test="${chart.chart_datatype eq 'JPG'}">
                    <img src="../data${chart.chart_filepath}">
	             </c:if>
	             
	            <div class="container-fluid full-width">
	               <div class="row-fluid">
			            <input class="btn btn-primary pull-right" type="button" value="이전" 
			            onclick="history.back()" style="width:200px; margin-bottom:50px; font-size:16px; border-radius:4px;"/>
			            <!-- 
	                    <input class="btn btn-danger pull-right" type="button" value="관련기사" 
                        onclick="history.back()" style="width:200px; margin-bottom:50px; margin-right:10px; font-size:16px; border-radius:4px;"/>
			             -->
			            <!-- 모달 연결 -->
		                 <c:if test="${chart.chart_id eq 'sm_gumi' || chart.chart_id eq 'sm_total' 
		                 || chart.chart_id eq 'sm_guri' || chart.chart_id eq 'sm_hanam'}">
		                  <button type="button" class="btn btn-danger pull-right" data-toggle="modal" data-target="#myModal" 
		                  style="width:200px; margin-bottom:50px; margin-right:10px; font-size:16px; border-radius:4px;">관련기사</button>
		                 </c:if>
		                 <%-- 
		                 <c:if test="${chart.chart_id eq 'sm_guri'}">
		                  <button type="button" class="btn btn-danger pull-right" data-toggle="modal" data-target="#myModal" 
		                  style="width:200px; margin-bottom:50px; margin-right:10px; font-size:16px; border-radius:4px;">관련기사</button>
		                 </c:if>
		                 <c:if test="${chart.chart_id eq 'sm_hanam'}">
		                  <button type="button" class="btn btn-danger pull-right" data-toggle="modal" data-target="#myModal" 
		                  style="width:200px; margin-bottom:50px; margin-right:10px; font-size:16px; border-radius:4px;">관련기사</button>
		                 </c:if>
			             --%>
	               </div>
	            </div>
            </div>
            <div class="clear"></div>    
            
        </div>
    </div>
</div><!-- </container> -->


<!-- 모달 실행 부분 -->
        
<div class="modal fade" id="myModal" tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <!-- 모달 Header -->
            <div class="modal-header">
                ${chart.chart_title}
                <button class="close" data-dismiss="modal">&times;</button>
            </div>
            
            <!-- 모달 Body -->
            <div class="modal-body">
                <c:if test="${chart.chart_id eq 'sm_gumi'}">
	                <img src="../data/images/gumi_issue.png" style="width:800px;height:auto">
                </c:if>
                
                <c:if test="${chart.chart_id eq 'sm_guri'}">
                    <img src="../data/images/guri_issue.png" style="width:800px;height:auto">
                </c:if>
                
                <c:if test="${chart.chart_id eq 'sm_hanam'}">
                    <img src="../data/images/hanam_issue.png" style="width:800px;height:auto">
                </c:if>
                
                <c:if test="${chart.chart_id eq 'sm_total'}">
                    <img src="../data/images/extinction_issue.png" style="width:800px;height:auto">
                </c:if>
                
                
                <!-- 
                <img src="images/city_sum.png" id="imagepreview"
                    style="width: 400px; height: 200px;">
                     -->
            </div>
            
            <!-- 모달 Footer -->
            <div class="modal-footer">
              <button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
            </div>
        </div>
    </div>
</div>


<div class="push"></div>
</div>

<section class="container-footer" style="padding-top:20px;">
    <footer class="footer">
    <div class="space"></div>
        <div class="text">
            ⓒ <a href="../">Op5p PROJECT</a> All Rights Reserved.
        </div>
        <div class="space"></div>
    </footer>
</section>

<script src="../js/common/slick.min.js"></script>
<script src="../js/common/magnific-popup.min.js"></script>
<script src="../js/common/wow.min.js"></script>
<script src="../js/common/particles.min.js"></script>
<script src="../js/user/script.js"></script>
</body>
</html>