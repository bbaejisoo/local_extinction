<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <head>
    
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
    body#LoginForm{ 
        background-color:#DAD9FF;
        /* background-image:url("https://hdwallsource.com/img/2014/9/blur-26347-27038-hd-wallpapers.jpg"); */ 
        /* background-repeat:no-repeat;  */
        /* background-position:center; */ 
        /* background-size:cover;  */
        padding:40px;
        }
    
    .form-heading { color:#fff; font-size:26px;}
    .panel h2{ color:#444444; font-size:22px; margin:0 0 8px 0;}
    .panel p { color:#777777; font-size:14px; margin-bottom:30px; line-height:24px;}
    .login-form .form-control {
      background: #f7f7f7 none repeat scroll 0 0;
      border: 1px solid #d4d4d4;
      border-radius: 4px;
      font-size: 16px;
      height: 50px;
      line-height: 50px;
    }
    .main-div {
      background: #ffffff none repeat scroll 0 0;
      border-radius: 2px;
      margin: 10px auto 30px;
      max-width: 38%;
      padding: 50px 70px 70px 71px;
    }
    
    .login-form .form-group {
      margin-bottom:10px;
    }
    .login-form{ text-align:center;}
    .forgot a {
      color: #777777;
      font-size: 14px;
      text-decoration: underline;
    }
    .login-form  .btn.btn-primary {
      background: #D1B2FF none repeat scroll 0 0;
      border-color: #D1B2FF;
      color: #FFFFFF;
      font-size: 16px;
      width: 100%;
      height: 50px;
      line-height: 50px;
      padding: 0;
      
      box-shadow: 0px 6px 0px #A566FF, 0px 3px 15px rgba(0,0,0,.4), inset 0px 1px 0px rgba(255,255,255,.3), inset 0px 0px 3px rgba(255,255,255,.5);
    }
    .forgot {
      text-align: left; margin-bottom:30px;
    }
    .botto-text {
      color: #ffffff;
      font-size: 16px;
      margin: auto;
    }
    .login-form .btn.btn-primary.reset {
      background: #ff9900 none repeat scroll 0 0;
    }
    .back { text-align: left; margin-top:10px;}
    .back a {color: #444444; font-size: 13px;text-decoration: none;}
    </style>
    <!------ Include the above in your HEAD tag ---------->
  </head>
<body id="LoginForm">
<div class="container">
<h1 class="form-heading">Login</h1>
<div class="login-form">
<div class="main-div">
    <div class="panel">
   <h2>ADMIN PAGE</h2>
   <p>The admin page.</p>
   </div>
    <form id="Login" action="login/sign.io" method="post">
        <div class="form-group">
            <input type="text" class="form-control" id="member_id" name="member_id" placeholder="ID">
        </div>

        <div class="form-group">
            <input type="password" class="form-control" id="member_pw" name="member_pw" placeholder="Password">
        </div>
        <button type="submit" class="btn btn-primary">Login</button>
    </form>
    </div>
</div>
</div>
</body>
</html>