<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="../assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>관리자 메뉴</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
	<!-- include libraries(jQuery, bootstrap) -->
    <script src="../js/vendor/jquery-3.2.1.min.js"></script>
	<link href="../css/vendor/bootstrap.css" rel="stylesheet">
	<script src="../js/vendor/bootstrap.js"></script> 

    <!-- Bootstrap core CSS     -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="../assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="../assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>
    
    


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="../assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    
    <!-- Data Tables 설정 -->
    <link rel="stylesheet" type="text/css" href="../css/admin/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="../css/admin/responsive.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="../css/admin/main.css">

    <script src="../js/admin/jquery.dataTables.js"></script>
    <script src="../js/admin/dataTables.responsive.min.js"></script>
    <script src="../js/admin/dataTables.buttons.min.js"></script>
	<script src="../js/admin/buttons.html5.min.js"></script>
    <script src="../js/admin/main.js"></script>
</head>
<body>

<div class="wrapper">
     <div class="sidebar" data-color="azure" data-image="../assets/img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <h3 class="simple-text">
                    	관리자 메뉴
                </h3>
            </div>

            <ul class="nav">
            	<li class="active">
                    <a href="index.jsp">
                        <i class="pe-7s-global"></i>
                        <p>Index</p>
                    </a>
                </li>
                <li>
                    <a href="notice.io">
                        <i class="pe-7s-note2"></i>
                        <p>공지 관리</p>
                    </a>
                </li>
                <li>
                    <a href="dashboard.html">
                        <i class="pe-7s-graph"></i>
                        <p>데이터 관리</p>
                    </a>
                </li>
 				<li class="active-pro">
                    <a href="#">
                        <i class="pe-7s-home"></i>
                        <p>홈으로</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>

    <div class="main-panel">
		<nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <h2 class="navbar-brand">Index</h2>
                </div>
                <div class="collapse navbar-collapse">
			      <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="../login/logout.io">
                                <p>Log out</p>
                            </a>
                        </li>
						<li class="separator hidden-lg"></li>
                    </ul>
                </div>
            </div>
        </nav>

			<div class="content">
				<div class="container-fluid">
					<img src="../images/admin/Under_construction.png">
				</div>
			</div>

			<footer class="footer">
            <div class="container-fluid">
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> 우리 동네가 위험해!
                </p>
            </div>
        </footer>


    </div>
</div>


</body>




</html>