<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="assets/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>관리자 메뉴</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />

<script src="ckeditor/ckeditor.js"></script>


    <!-- Bootstrap core CSS     -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="../assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="../assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="../assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>
<body>
<div class="wrapper">
     <div class="sidebar" data-color="purple" data-image="../assets/img/sidebar-5.jpg">

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
            	<li>
                    <a href="index.jsp">
                        <i class="pe-7s-global"></i>
                        <p>Index</p>
                    </a>
                </li>
                <li class="active">
                    <a href="notice.do">
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
                    <h2 class="navbar-brand">공지 관리</h2>
                </div>
                <div class="collapse navbar-collapse">
                  <ul class="nav navbar-nav navbar-left">
                  </ul>
			      <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="../login/logout.do">
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
					<form action="modify.do" name="ajaxform" id="ajaxform" method="POST">
						<input type="hidden" name="board_num" value="${param.board_num }" />
						<div class="form-group">
							<label for="board_title">제목:</label> <input class="form-control"
								type="text" name="board_title" id="board_title" value="${board.board_title }">
						</div>
						<div class="form-group">
							<label for="member_id">글쓴이:</label> <input class="form-control"
								type="text" name="member_id" id="member_id" value="${board.member_id }" readonly>
						</div>
						<div class="form-group">
							<label for="board_content">내용:</label>
							<textarea name="board_content" id="board_content" row="10"
								cols="30" placeholder="입력">${board.board_content }
			</textarea>
						</div>
						<div class="form-group">
							<label for="board_public">공개범위:</label> <select
								name="board_public" id="board_public">
								<option value="1" ${board.board_public==1?"selected":"" }>전체공개</option>
								<option value="2" ${board.board_public==2?"selected":"" }>회원공개</option>
								<option value="3" ${board.board_public==3?"selected":"" }>비공개</option>
							</select>
						</div>
						<script>
			CKEDITOR.replace('board_content', {
		        filebrowserUploadUrl: '/topic/upload'
		    });
		</script>

						<br>
						<input class="btn btn-primary" type="button" value="이전" onclick="history.back()"/> <input
							class="btn btn-primary" type="submit" value="글 등록" /> <input
							class="btn btn-primary" type="reset" value="취소" onclick="location.href='notice.do'"/>
					</form>
				</div>
			</div>

			<footer class="footer">
				<div class="container-fluid">
					<p class="copyright pull-right">
						&copy;
						<script>document.write(new Date().getFullYear())</script>
						우리 동네가 위험해!
					</p>
				</div>
			</footer>


		</div>
	</div>


</body>

</html>


