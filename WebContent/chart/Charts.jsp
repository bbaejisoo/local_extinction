<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

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
<link rel="stylesheet"
	href="https://www.dataplanet.co.kr/css/user/style.css?v=2018121705" />
<!-- <link rel="stylesheet" href="css/user/style.css" /> -->
<link rel="stylesheet" href="../css/common/animate.min.css" />
<script src="//code.jquery.com/jquery-latest.js"></script>
<!-- <script src="js/common/jquery-latest.js"></script> -->
<script src="../js/common/jquery-ui.min.js"></script>

<!-- 부트스트랩 관련 -->
<link rel="stylesheet" href="../css/vendor/bootstrap.css">
<script src="../js/vendor/bootstrap.js"></script>
<script src="../js/vendor/sidebar.js"></script>
<link rel="stylesheet" href="../css/vendor/navbar.css">

<!-- Fade In 효과 -->
<script>
	$(document).ready(function() {

		/*! Fades in page on load */
		//$('body').css('display', 'none');
		$('body').fadeIn(1000);

	});
</script>
<style>
    section{
        padding-bottom:0;
    }
</style>

</head>
<body class="" style="display: none;">

	<!-- Navigation 부분 -->
	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css"
		rel="stylesheet"
		integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1"
		crossorigin="anonymous">
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a id="menu-toggle" href="#" class="nav-btn btn-dark btn-lg toggle">
					<i class="fa fa-bars" style="color: #fff;"></i>
				</a>
			</div>
		</div>
	</nav>
	<nav id="sidebar-wrapper">
		<ul class="sidebar-nav">
			<a id="menu-close" href="#"
				class="btn btn-danger pull-right hidden-md hidden-lg toggle"><i
				class="fa fa-times"></i></a>
			<li class="sidebar-brand"><a href="../"><strong>[ HOME ]</strong></a></li>
			<li><a href="#" title="About">About</a></li>
			<li><a href="chartList.io" title="Data Charts">Data - Charts</a>
			</li>
			<li><a href="../comingsoon.html" title="Issue">Issue</a></li>
			<li><a href="../comingsoon.html" title="Service">Service</a></li>
		</ul>
	</nav>
	<!-- /navigation -->

	<!-- 배경 애니메이션 효과 -->
	<div class="chart-list-bg type1" style="">
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
				</div>
			</div>
		</div>
	</div>
	<div class="wrapper">

		<section class="container">

			<section class="chart">

				<div class="desc">
					<div class="graph type1"></div>
					<div class="clear"></div>
					<h1 class="title">Charts</h1>
					<div class="clear"></div>
					<p class="text">지방소멸 관련 차트를 제공합니다.</p>
				</div>

				<div class="list-wrap default">
					<div class="top">
						<div class="list-type">
							<a href="#" class="gallery active" title="썸네일 보기"></a> <a
								href="#" class="default " title="리스트 보기"></a>
						</div>

						<div class="clear"></div>
					</div>
					<div class="cont gallery active">
						<ul>
						    <!--  
						    <li chart-idx="6150">
                                <a href="https://www.dataplanet.co.kr/user/chart/view?chart_id=KjedS">
                                <a href="chartDetail.io?chart_id=pop_move">
                                    <h2 class="title">
                                        <span class="plus">┼</span> 전국 연도별 인구 변화(2018)
                                    </h2> <span class="info">제공기관: 가연 / 유형: using custom colors</span>
                                    <div class="cate">Culture /  Life</div>
                                    <div class="new right">New</div>
                                    <div class="cover"
                                        style="background-image: url(../images/chart/cover/default.png);"></div>
                                    <div class="bg"
                                        style="background-image: url(../images/chart/cover/chart_bg2.jpg);">
                                        <div class="overlay-chart"></div>
                                    </div>
                                 </a>
                            </li> -->
						    <c:forEach items="${chartList}" var="chart" varStatus="status">
						    <!-- 4번째 게시글 마다 last 클래스 적용. 줄바꿈 적용 -->
						        <c:set var="test" value="${status.count }"/>
						        
							    <c:if test="${test % 4 == 0}">
							      <li class="last">
							    </c:if>
							    <c:if test="${test % 4 != 0}">
								 <li>
								</c:if>
							    
								<!-- <a href="https://www.dataplanet.co.kr/user/chart/view?chart_id=KjedS"> -->
								<a href="chartDetail.io?chart_id=${chart.chart_id }">
									<h2 class="title">
										<span class="plus">┼</span> ${chart.chart_title }
									</h2> <!-- <span class="info">제공기관: 가연 / 유형: using custom colors</span> -->
									<!-- <div class="cate">Culture /  Life</div>-->
									<div class="new right">New</div>
									<div class="cover"
										style="background-image: url(../images/chart/cover/default.png);"></div>
									<div class="bg"
										style="background-image: url(../images/chart/cover/chart_bg2.jpg);">
										<div class="overlay-chart"></div>
									</div>
							     </a>
							</li>
							</c:forEach>
							<!-- <li chart-idx="6149">
							        <a href="#">
									<h2 class="title">
										<span class="plus">┼</span> 세계인이 가장 사랑하는 유럽 국가는? (2017)
									</h2> <span class="info">제공기관: 익스피디아 / 유형: clustered</span>
									<div class="cate">World</div>
									<div class="new right">New</div>
									<div class="cover"
										style="background-image: url(../images/chart/cover/default.png);"></div>
									<div class="bg"
										style="background-image: url(../images/chart/cover/chart_bg2.jpg);">
										<div class="overlay-chart"></div>
									</div>
							</a></li>
							<li chart-idx="6148"><a href="#">
									<h2 class="title">
										<span class="plus">┼</span> 세계인이 가장 사랑하는 유럽 도시는? (2017)
									</h2> <span class="info">제공기관: 익스피디아 / 유형: clustered</span>
									<div class="cate">World</div>
									<div class="new right">New</div>
									<div class="cover"
										style="background-image: url(https://www.dataplanet.co.kr/images/common/chart/_cover/bar/default.png);"></div>
									<div class="bg"
										style="background-image: url('https://dplive.dataplanet.co.kr//files/chart/A8f5p/e8d98c65c0950ec7c2d8aec867610b7c.jpg');">
										<div class="overlay-chart"></div>
									</div>
							</a></li>
							<li class="last" chart-idx="6147"><a href="#">
									<h2 class="title">
										<span class="plus">┼</span> 한국인이 가장 사랑하는 유럽 국가는? (2017)
									</h2> <span class="info">제공기관: 익스피디아 / 유형: clustered</span>
									<div class="cate">Life</div>
									<div class="new right">New</div>
									<div class="cover"
										style="background-image: url(https://www.dataplanet.co.kr/images/common/chart/_cover/bar/default.png);"></div>
									<div class="bg"
										style="background-image: url('https://dplive.dataplanet.co.kr//files/chart/r4sr8/8ef95c50058ee33f2cac634ef2417f0a.jpg');">
										<div class="overlay-chart"></div>
									</div>
							</a></li>
							<li chart-idx="6146"><a href="#">
									<h2 class="title">
										<span class="plus">┼</span> 한국인이 가장 사랑하는 유럽 도시는? (2017)
									</h2> <span class="info">제공기관: 익스피디아 / 유형: clustered</span>
									<div class="cate">Life</div>
									<div class="new right">New</div>
									<div class="cover"
										style="background-image: url(https://www.dataplanet.co.kr/images/common/chart/_cover/bar/default.png);"></div>
									<div class="bg"
										style="background-image: url('https://dplive.dataplanet.co.kr//files/chart/M61S7/b9e0cf71a04ce51ec6a8d9c0c0fbf0fd.jpg');">
										<div class="overlay-chart"></div>
									</div>
							</a></li> -->

						</ul>
						<div class="clear"></div>
						<div class="options white">
							<div class="pagination">
								<a href="#" class="active ">1</a> <a href="#" class="">2</a> <a
									href="#" class="">3</a> <a href="#" class="">4</a> <a href="#"
									class="">5</a> <a href="#" class="">6</a> <a href="#" class="">7</a>
								<a href="#" class="">8</a> <a href="#" class="">9</a> <a
									href="#" class="last">10</a> <a href="#" class="next"> ▶ </a>
							</div>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
			</section>
		</section>

		<div class="push"></div>
	</div>
	<!-- /wrapper End -->
	<section class="container-footer" style="padding-top: 20px;">
		<footer class="footer">
			<div class="space"></div>
			<div class="text">
				ⓒ <a href="../">Op5p PROJECT</a> All Rights Reserved.
			</div>
			<div class="space"></div>
		</footer>
	</section>



	<!-- 배경 애니메이션 효과 -->
	<script src="../plugin/animatedBackgrounds/TweenLite.min.js"></script>
	<script src="../plugin/animatedBackgrounds/EasePack.min.js"></script>
	<script src="../plugin/animatedBackgrounds/rAF.js"></script>
	<script src="../plugin/animatedBackgrounds/demo-1.js"></script>

	<!-- 데이터 플래닛 -->
	<script src="../js/common/slick.min.js"></script>
	<script src="../js/common/magnific-popup.min.js"></script>
	<script src="../js/common/wow.min.js"></script>
	<script src="../js/common/particles.min.js"></script>
	<script src="../js/user/script.js"></script>

</body>
</html>