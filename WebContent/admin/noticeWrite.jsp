<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="../assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>관리자 페이지</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="../assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="../assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="../assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="../assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

    <!-- ckeditor 편집기 -->
    <script src="ckeditor/ckeditor.js"></script>

</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="../assets/img/sidebar-4.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="dashboard.jsp" class="simple-text">
                    Admin Page
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="dashboard.jsp">
                        <i class="pe-7s-global"></i>
                        <p>Dash Board</p>
                    </a>
                </li>
                <li class="active">
                    <a href="notice.io">
                        <i class="pe-7s-note2"></i>
                        <p>이슈게시판 관리</p>
                    </a>
                </li>
                <li>
                    <a href="chart.io">
                        <i class="pe-7s-graph"></i>
                        <p>차트 관리</p>
                    </a>
                </li>
                <li class="active-pro">
                    <a href="../">
                        <i class="pe-7s-home"></i>
                        <p>사용자 화면으로..</p>
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
                    <a class="navbar-brand" href="dashboard.jsp">Dashboard</a>
                </div>
                <div class="collapse navbar-collapse">
                    <!-- DropDown 아이콘 -->
                    <!-- 
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
								<p class="hidden-lg hidden-md">Dashboard</p>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-globe"></i>
                                    <b class="caret hidden-lg hidden-md"></b>
									<p class="hidden-lg hidden-md">
										5 Notifications
										<b class="caret"></b>
									</p>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                              </ul>
                        </li>
                        <li>
                           <a href="">
                                <i class="fa fa-search"></i>
								<p class="hidden-lg hidden-md">Search</p>
                            </a>
                        </li>
                    </ul>
                    -->
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="login/logout.io">
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
                <form action="noticeWrite.io" name="ajaxform" id="ajaxform" method="POST">
                        <div class="form-group">
                            <label for="board_title">제목:</label> <input class="form-control"
                                type="text" name="board_title" id="board_title">
                        </div>
                        <div class="form-group">
                            <label for="member_id">글쓴이:</label> <input class="form-control"
                                type="text" name="member_id" id="member_id" value="admin">
                        </div>
                        <div class="form-group">
                            <label for="board_content">내용:</label>
                            <textarea name="board_content" id="board_content" row="10"
                                cols="30" placeholder="입력">
                            </textarea>
                        </div>
                        <div class="form-group">
                            <label for="board_public">공개범위:</label> <select
                                name="board_public" id="board_public">
                                <option value="1" selected>전체공개</option>
                                <option value="2">회원공개</option>
                                <option value="3">비공개</option>
                            </select>
                        </div>
                        <script>
				            CKEDITOR.replace('board_content', {
				                filebrowserUploadUrl: '/topic/upload'
				            });
				        </script>

                        <br>
                        <input class="btn btn-primary" type="button" value="이전" onclick="history.back()"/>
                        <input class="btn btn-primary" type="submit" value="글 등록" />
                        <input class="btn btn-primary" type="reset" value="취소"/>
                </form>
            </div>
        </div>


        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="../">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="../chart/chartList.io">
                                Data
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Notice
                            </a>
                        </li>
                        <li>
                            <a href="#">
                               Service
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script> <a href="#">Op5p Project</a>
                </p>
            </div>
        </footer>

    </div>
</div>


</body>

    <!--   Core JS Files   -->
    <script src="../assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
	<script src="../assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="../assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="../assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <!-- 
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	 -->

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="../assets/js/light-bootstrap-dashboard.js"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="../assets/js/demo.js"></script>

</html>
