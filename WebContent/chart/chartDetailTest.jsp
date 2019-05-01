<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <a href="../index.jsp"><strong>[ HOME ]</strong></a>
        </li>
        <li>
            <a href="#" title="Introduction">Introduction</a>
        </li>
        <li>
            <a href="Charts.jsp" title="Data Charts">Data - Charts</a>
        </li>
        <li>
            <a href="#" title="Notice">Notice</a>
        </li>
        <li>
            <a href="#" title="Service">Service</a>
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
                    <h1 class="title">연도별 전국 인구분포 (2018)</h1>
                    <h2 class="subtitle"></h2>
                    <div class="info">
                        <div class="left">
                            <dl>
                                <dt>데이터 출처</dt>
                                <dd>통계청</dd>
                                <dt>기준 년도</dt>
                                <dd>2018년</dd>
                                <dt>자료 단위</dt>
                                <dd>명</dd>
                            </dl>
                        </div>
                        <div class="line"></div>
                        <div class="right">
                            <dl>
                                <dt>시각화 유형</dt>
                                <dd>multi-line</dd>
                                <dt>제작자</dt>
                                <dd>Op5p</dd>
                                <dt>키워드</dt>
                                <dd>순이동, 인구, 전국</dd>
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
                <h2 style="text-align:center">연도별 전국 인구분포</h2><br>
                <!-- <iframe width="100%" height="600" src="https://dplive.dataplanet.co.kr/401KY/code/6675" frameborder="0" class="chart-frame"></iframe> -->
                <iframe width="100%" height="600" src="../data/city_sum_Detail.html" frameborder="0" class="chart-frame"></iframe>
            </div>
            <div class="clear"></div>    
            
        </div>
    </div>
</div><!-- </container> -->

<div class="push"></div>
</div>

<section class="container-footer" style="padding-top:20px;">
    <footer class="footer">
    <div class="space"></div>
        <div class="text">
            ⓒ <a href="index.html">Op5p PROJECT</a> All Rights Reserved.
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