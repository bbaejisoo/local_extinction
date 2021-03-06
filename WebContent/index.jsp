<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Visualization Project</title>
		<meta name="description" content="Extinction" />
		<meta name="keywords" content="op5p, teamProject, Visualization" />
		<meta name="author" content="PSC" />
		<link rel="shortcut icon" href="favicon.ico">
		<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/vendor/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/base.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css">
		
		<script>document.documentElement.className="js";var supportsCssVars=function(){var e,t=document.createElement("style");return t.innerHTML="root: { --tmp-var: bold; }",document.head.appendChild(t),e=!!(window.CSS&&window.CSS.supports&&window.CSS.supports("font-weight","var(--tmp-var)")),t.parentNode.removeChild(t),e};supportsCssVars()||alert("Please view this demo in a modern browser that supports CSS Variables.");</script>
		<!--script src="//tympanus.net/codrops/adpacks/analytics.js"></script-->
		<!-- <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script> -->
		<script src="js/vendor/jquery-3.2.1.min.js"></script>
		
		<!-- HTML 끼워넣기 -->
		<script type="text/javascript">
		      $(document).ready(function(){
		         $("#html-inner1").load("data/mainSlide/PopulationMovement.html")
		         //$("#html-inner2").load("data/mainSlide/순유입.html")
		         $("#html-inner3").load("data/mainSlide/total_sm_population.html")
		         $("#html-inner4").load("data/mainSlide/total_year_finance.html")
		        
			     /* $('.section__more-linktext').on('click',function(){
		    	    $('.modal-body').load('img/city_sum.png',function(){
		    	        $('#myModal').modal({show:true});
		    	    });
	    	     }); */
		      });
		      
		      // 페이지 Fade In 효과
		      $(document).ready(function(){

		    	  /*! Fades in page on load */
		    	  //$('body').css('display', 'none');
		    	  $('body').fadeIn(1000);

	    	  });
		      
		</script>    
		
		<style>
		  .section__img-content{
		      width:90%; height:60%;
		      vertical-align:middle;position:absolute;
              margin:auto;
              top:0; bottom:0; left:0; right:0;opacity:0.95;
              border-radius: 10px;
		  }
		</style>
		
	</head>
	<body class="loading" style="display:none;">
		<svg class="hidden">
			<symbol id="icon-arrow" viewBox="0 0 24 24">
				<title>arrow</title>
				<polygon points="6.3,12.8 20.9,12.8 20.9,11.2 6.3,11.2 10.2,7.2 9,6 3.1,12 9,18 10.2,16.8 "/>
			</symbol>
			<symbol id="icon-drop" viewBox="0 0 24 24">
				<title>drop</title>
				<path d="M12,21c-3.6,0-6.6-3-6.6-6.6C5.4,11,10.8,4,11.4,3.2C11.6,3.1,11.8,3,12,3s0.4,0.1,0.6,0.3c0.6,0.8,6.1,7.8,6.1,11.2C18.6,18.1,15.6,21,12,21zM12,4.8c-1.8,2.4-5.2,7.4-5.2,9.6c0,2.9,2.3,5.2,5.2,5.2s5.2-2.3,5.2-5.2C17.2,12.2,13.8,7.3,12,4.8z"/><path d="M12,18.2c-0.4,0-0.7-0.3-0.7-0.7s0.3-0.7,0.7-0.7c1.3,0,2.4-1.1,2.4-2.4c0-0.4,0.3-0.7,0.7-0.7c0.4,0,0.7,0.3,0.7,0.7C15.8,16.5,14.1,18.2,12,18.2z"/>
			</symbol>
			<symbol id="icon-menu" viewBox="0 0 24 13">
				<title>menu</title>
				<path d="M.75 1.515h22.498a.75.75 0 0 0 0-1.5H.75a.75.75 0 0 0 0 1.5zM23.248 5.265H8.168a.75.75 0 0 0 0 1.5h15.08a.75.75 0 0 0 0-1.5zM23.248 10.514H4.322a.75.75 0 0 0 0 1.5h18.926a.75.75 0 0 0 0-1.5z"/>
			</symbol>
			<symbol id="icon-dot" viewBox="0 0 24 24">
				<title>dot</title>
				<path d="M11.5 9c-.69 0-1.28.244-1.768.732A2.41 2.41 0 0 0 9 11.5c0 .69.244 1.28.732 1.767A2.409 2.409 0 0 0 11.5 14c.69 0 1.28-.244 1.768-.733A2.408 2.408 0 0 0 14 11.5c0-.69-.244-1.28-.732-1.768A2.408 2.408 0 0 0 11.5 9z"/>
			</symbol>
			<symbol id="icon-cross" viewBox="0 0 24 24">
				<title>cross</title>
				<path d="M11.449 11.962l-5.1 5.099a.363.363 0 1 0 .513.512L12 12.436l5.137 5.137a.361.361 0 0 0 .513 0 .363.363 0 0 0 0-.512l-5.099-5.1 5.102-5.102a.363.363 0 1 0-.512-.513L12 11.487l-5.141-5.14a.363.363 0 0 0-.513.512l5.103 5.103z"/>
			</symbol>
			<symbol id="icon-arrowlong" viewBox="0 0 32 11">
				<title>arrow-long</title>
				<path d="M27.166.183a.619.619 0 0 0-.878 0 .619.619 0 0 0 0 .878l2.735 2.735H.768a.624.624 0 0 0 0 1.248h28.254L26.287 7.77a.619.619 0 0 0 0 .878.617.617 0 0 0 .441.183c.163 0 .32-.061.442-.183l3.796-3.796a.623.623 0 0 0-.005-.878L27.166.183z"/>
			</symbol>
			<symbol id="icon-close" viewBox="0 0 24 24">
				<title>close</title>
				<path d="M21 4.565L19.435 3 12 10.435 4.565 3 3 4.565 10.435 12 3 19.435 4.565 21 12 13.565 19.435 21 21 19.435 13.565 12z"/>
			</symbol>
			<symbol id="icon-navup" viewBox="0 0 50 50">
				<title>navup</title>
				<path d="M20.259 28.211l5.07-5.03 5.075 5.034a.36.36 0 0 0 .51 0 .356.356 0 0 0 0-.506l-5.323-5.28a.404.404 0 0 0-.135-.084.364.364 0 0 0-.384.08l-5.324 5.28a.356.356 0 0 0 0 .506c.141.14.37.14.51 0z" />
			</symbol>
			<symbol id="icon-navdown" viewBox="0 0 50 50">
				<title>navdown</title>
				<path d="M20.259 22.43l5.07 5.03 5.075-5.034a.36.36 0 0 1 .51 0c.14.14.14.366 0 .506l-5.323 5.28a.404.404 0 0 1-.135.084.364.364 0 0 1-.384-.081l-5.324-5.28a.356.356 0 0 1 0-.505c.141-.14.37-.14.51 0z" />
			</symbol>
			<symbol id="icon-grid" viewBox="0 0 24 24">
				<title>grid</title>
				<path d="M8.982 8.982h5.988v5.988H8.982zM0 0h5.988v5.988H0zM8.982 17.965h5.988v5.988H8.982zM0 8.982h5.988v5.988H0zM0 17.965h5.988v5.988H0zM17.965 0h5.988v5.988h-5.988zM8.982 0h5.988v5.988H8.982zM17.965 8.982h5.988v5.988h-5.988zM17.965 17.965h5.988v5.988h-5.988z"/>
			</symbol>
		</svg>
		<main>
			<div class="sections">
				<header class="sections__header">
				    <a href="."><img src="images/worldwide_location-48.png" /></a>
					<h1 class="title">Extinction</h1>
				</header>
				<!-- codrops links -->
				<!-- 
				<div class="codrops-links">
					<a class="codrops-icon codrops-icon--prev" href="https://tympanus.net/Development/GradientTopographyAnimation/" title="Previous Demo"><svg class="icon icon--arrow"><use xlink:href="#icon-arrow"></use></svg></a>
					<a class="codrops-icon codrops-icon--drop" href="https://tympanus.net/codrops/?p=33851" title="Back to the article"><svg class="icon icon--drop"><use xlink:href="#icon-drop"></use></svg></a>
				</div>
				 -->
				<!-- menu -->
				<nav class="menu">
                    <ul class="menu__inner">
                        <li class="menu__item">
                            <a class="menu__item-link" href="#">About</a>
                        </li>
                        <li class="menu__item">
                            <a class="menu__item-link" href="chart/chartList.io">Data - Charts</a>
                        </li>
                        <li class="menu__item"><a class="menu__item-link" href="comingsoon.html">Issue</a></li>
                        <li class="menu__item"><a class="menu__item-link" href="comingsoon.html">Service</a></li>
                    </ul>
                    <div class="menu__toggle">
                        <span class="menu__toggle-inner menu__toggle-inner--open">
                            <svg class="icon icon--menu"><use xlink:href="#icon-menu"></use></svg>
                        </span>
                        <span class="menu__toggle-inner menu__toggle-inner--close">
                            <svg class="icon icon--close"><use xlink:href="#icon-close"></use></svg>
                        </span>
                    </div>
                </nav>
				
				
				<!-- facts expander with toggles; content for each is in its section -->
				<div class="facts">
				    <!-- 
					<div class="facts__toggle">
					
						<span class="facts__toggle-inner facts__toggle-inner--more">
							<svg class="icon icon--dot"><use xlink:href="#icon-dot"></use></svg>
							<span class="facts__toggle-text">See more facts</span>
						</span>
						<span class="facts__toggle-inner facts__toggle-inner--less">
							<svg class="icon icon--cross"><use xlink:href="#icon-cross"></use></svg>
							<span class="facts__toggle-text">See less facts</span>
						</span>
					
					</div>-->
					<button class="button-contentclose">
						<svg class="icon icon--close"><use xlink:href="#icon-close"></use></svg>
					</button>
				</div>
				<!-- index -->
				<div class="sections__index">
					<span class="sections__index-current">
						<span class="sections__index-inner">01</span>
					</span>
					<span class="sections__index-total">04</span>
				</div>
				<!-- navigation down -->
				<nav class="sections__nav">
					<button class="sections__nav-item sections__nav-item--prev">
						<svg class="icon icon--navup"><use xlink:href="#icon-navup"></use></svg>
					</button>
					<button class="sections__nav-item sections__nav-item--next">
						<svg class="icon icon--navdown"><use xlink:href="#icon-navdown"></use></svg>
					</button>
				</nav>
				<!-- sections 1번 슬라이드 -->
				<section class="section section--current">
					<div class="section__content">
						<h2 class="section__title" style="font-size: 5vw;">연도별 <br>전국 인구이동</h2>
						<br>
						<p class="section__description">
						  <span class="section__description-inner">
						  지방과 대도시 간의 인구이동 현황을 보여주고,<br>
						  꾸준히 인구가 유출되고 있는 지방인구의 추이를 보여줍니다.
						  </span>
						</p>
					</div>
					<div class="section__img">
						<div class="section__img-inner" style="background-image: url(images/1.jpg)">
						  
						  <!-- 인터랙티브 그래프 HTML 넣는 지점 -->
						  
						  <div id="html-inner1"></div>
						   
						   <!-- 
						  <iframe width="100%" height="330" src="data/mainSlide/PopulationMovement.html" frameborder="0"></iframe>
						   -->
						</div>
					</div>
					<div class="section__more">
						<div class="section__more-inner section__more-inner--bg1">
							<span class="section__more-text">Want to know more?</span>
							
							<a href="chart/chartDetail.io?chart_id=pop_move" class="section__more-link">
                                <span class="section__more-linktext">자세히 보기</span>
                                <svg class="icon icon--arrowlong"><use xlink:href="#icon-arrowlong"></use></svg>
                            </a>
                            
							<!-- 모달 연결 -->
							<!-- 
							<a data-target="#myModal" data-toggle="modal" class="section__more-link">
								<span class="section__more-linktext">자세히 보기</span>
								<svg class="icon icon--arrowlong"><use xlink:href="#icon-arrowlong"></use></svg>
							</a>
							 -->
						</div>
					</div>
					<div class="section__expander"></div>
					<ul class="section__facts">
						<li class="section__facts-item">
							<h3 class="section__facts-title">[ 연도별 각 지역의 인구이동 ]</h3>
							<span class="section__facts-detail">
							 <br>
							※ 연도별 인구이동 계산 ※ <br>
							지역별 (순유입 - 순유출) <br>
							</span>
						</li>
					</ul>
				</section><!--/ section -->
				
				<!-- section 2번 슬라이드 -->
				<section class="section">
					<div class="section__content">
						<h2 class="section__title" style="font-size: 5vw;">소멸위험지수<br>(2017)</h2>
						<br>
						<p class="section__description">
							<span class="section__description-inner">
							     2017년 기준 각 광역자치단체 간의
							      소멸위험지수를 보여줍니다.
							</span>
						</p>
					</div>
					<div class="section__img">
						<div class="section__img-inner" style="background-image: url(images/bg_5.jpg)">
						
							<!-- main_d3.js 로 구현된 차트 삽입 -->
							<div id="chart-area">
							</div>
							
							<!-- 인터랙티브 그래프 HTML 넣는 지점 -->
							<!-- 
							<div id="html-inner2"></div>
							  -->
							  
							<img class="section__img-content" src="data/images/2017 소멸 지수.jpeg"/>
							 <!-- 
							<iframe width="100%" height="600" src="data/mainSlide/순유입.html" frameborder="0"></iframe>
						      -->
						</div>
					</div>
					<div class="section__more">
						<div class="section__more-inner section__more-inner--bg2">
							<span class="section__more-text">Want to know more?</span>
							<a href="chart/chartDetail.io?chart_id=sm_whole" class="section__more-link">
								<span class="section__more-linktext">자세히 보기</span>
								<svg class="icon icon--arrowlong"><use xlink:href="#icon-arrowlong"></use></svg>
							</a>
						</div>
					</div>
					<div class="section__expander"></div>
					<ul class="section__facts">
						<li class="section__facts-item">
							<h3 class="section__facts-title">[ 소멸 위험 지수 ]</h3>
							<span class="section__facts-detail">
							※ 소멸 위험 지수 계산 ※<br>
							65세 이상 인구 대비<br> 
							20~39세 여성의 비율<br>
							(1.0이하: 주의단계)<br>
							(0.5이하: 위험단계)<br>
							</span>
						</li>
					</ul>
				</section>
				<!--/ section -->
				
				
				<!-- section 3번 슬라이드 -->
				<section class="section">
					<div class="section__content">
						<h2 class="section__title" style="font-size: 5vw;">선정지역 <br>소멸위험지수</h2>
						<p class="section__description">
							<span class="section__description-inner">
							     소멸위험지수가 급격히 변화된 6곳의 
							     지방자치단체의 최근 6년간 인구이동<br>
							      현황을 보여줍니다.
							</span>
						</p>
					</div>
					<div class="section__img">
						<div class="section__img-inner" style="background-image: url(images/bg_6.jpg)">
						  <!-- 
						  <img class="section__img-content" src="images/cityout.jpeg"/>
						   -->
						  <!-- 인터랙티브 그래프 HTML 넣는 지점 -->
						   <!-- 
                          <div id="html-inner3"></div>
                            -->
                          <iframe width="100%" height="600" src="data/mainSlide/total_sm_population.html" frameborder="0"></iframe>
                           
						</div>
					</div>
					<div class="section__more">
						<div class="section__more-inner section__more-inner--bg3">
							<span class="section__more-text">Want to know more?</span>
							<a href="chart/chartDetail.io?chart_id=sm_total" class="section__more-link">
								<span class="section__more-linktext">자세히 보기</span>
								<svg class="icon icon--arrowlong"><use xlink:href="#icon-arrowlong"></use></svg>
							</a>
						</div>
					</div>
					<div class="section__expander"></div>
					<ul class="section__facts">
						<li class="section__facts-item">
							<h3 class="section__facts-title">[ 소멸 지수와 이슈 ]</h3>
							<span class="section__facts-detail">
							해소된 3곳(하남,구미,구리)<br>
							- 그린벨트 해제,개발 산업 등 <br>
							<br>
							심화된 3곳(성산,울산,통영)<br>
							- 특별한 이슈 없이 하락세
							</span>
					</ul>
				</section><!--/ section -->
				
				
				<!-- section 4번 슬라이드 -->
				<section class="section">
					<div class="section__content">
						<h2 class="section__title" style="font-size: 5vw;">전국 지자체<br> 재정지출</h2>
						<p class="section__description">
							<span class="section__description-inner">
							소멸위험지수가 급격히 변화된 6곳의 
							 재정지출 현황을 확인하고, <br>
							 인구소멸과 재정지출 간의 연관 관계를 확인합니다.
							</span>
						</p>
					</div>
					<div class="section__img">
						<div class="section__img-inner" style="background-image: url(images/bg_7.jpg)">
						  <!-- <img class="section__img-content" src="images/cityinto.jpeg"/> -->
						  <!-- 인터랙티브 그래프 HTML 넣는 지점 -->
                          <!-- <div id="html-inner4"></div> -->
                          
                          <iframe width="100%" height="600" src="data/mainSlide/total_year_finance.html" frameborder="0"></iframe>
                          
						</div>
					</div>
					<div class="section__more">
						<div class="section__more-inner section__more-inner--bg4">
							<span class="section__more-text">Want to know more?</span>
							<a href="chart/chartDetail.io?chart_id=fi_total" class="section__more-link">
								<span class="section__more-linktext">자세히 보기</span>
								<svg class="icon icon--arrowlong"><use xlink:href="#icon-arrowlong"></use></svg>
							</a>
						</div>
					</div>
					<div class="section__expander"></div>
					<ul class="section__facts">
						<li class="section__facts-item">
							<h3 class="section__facts-title">[ 전국 지자체 재정지출 ]</h3>
							<span class="section__facts-detail">
							모든 지자체의 복지 지출은<br> 
							증가하였지만 소멸지수와는<br>
							연관성이 없는것으로 판단<br>
							</span>
						</li>
					</ul>
				</section><!--/ section -->
			</div><!--/ sections -->
		</main>
		
		<!-- 모달 실행 부분 -->
	    
        <div class="modal fade" id="myModal" tabindex="-1">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <!-- 모달 Header -->
                    <div class="modal-header">
                        전국 인구변화
                        <button class="close" data-dismiss="modal">&times;</button>
                    </div>
                    
                    <!-- 모달 Body -->
                    <div class="modal-body">
                       
                        <img src="images/city_sum.png" id="imagepreview"
                            style="width: 400px; height: 200px;">
                    </div>
                    
                    <!-- 모달 Footer -->
                    <div class="modal-footer">
			          <button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
			        </div>
                </div>
            </div>
        </div>
	    
		
		<!-- 스크립트(js파일) 로드 -->
		
		<script src="js/imagesloaded.pkgd.min.js"></script>
		<script src="js/charming.min.js"></script>
		<script src="js/anime.min.js"></script>
		<script src="js/main.js"></script>
		<script src="js/vendor/d3.min.js"></script>
		<!-- <script src="js/main_d3.js"></script> -->
		<script src="js/vendor/bootstrap.js"></script>
	</body>
</html>
