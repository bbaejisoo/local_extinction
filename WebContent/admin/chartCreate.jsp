<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<!------ Include the above in your HEAD tag ---------->
<html>
  <head>    
    <style>
    .panel h2{ color:#444444; font-size:22px; margin:0 0 8px 0;}
    .panel p { color:#777777; font-size:14px; margin-bottom:30px; line-height:24px;}
    .chart-form .form-control {
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
      max-width: 48%;
      padding: 20px;
    }
    
    .chart-form .form-group {
      margin-bottom:10px;
    }
    .chart-form{ text-align:center;}
    
    .chart-form  .btn.btn-primary{
        height:50px; font-size:20px;
    }
    </style>
    <!------ Include the above in your HEAD tag ---------->
  </head>
<body id="ChartForm">
<div class="container">
<div class="chart-form">
<div class="main-div">
    <div class="panel">
   <h2>Chart Content</h2>
   <p>Chart Attribute Content</p>
   </div>
    <form id="chartCreate" action="chartCreate.io" method="post">
        <div class="form-group">
            <input type="text" class="form-control" id="CHART_ID" name="CHART_ID" placeholder="CHART_ID" required>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" id="CHART_TITLE" name="CHART_TITLE" placeholder="CHART_TITLE" required>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" id="CHART_DATASOURCE" name="CHART_DATASOURCE" placeholder="CHART_DATASOURCE" required>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" id="CHART_YEAR" name="CHART_YEAR" placeholder="CHART_YEAR" required>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" id="CHART_UNIT" name="CHART_UNIT" placeholder="CHART_UNIT" required>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" id="CHART_VISUALTYPE" name="CHART_VISUALTYPE" placeholder="CHART_VISUALTYPE" required>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" id="CHART_AUTHOR" name="CHART_AUTHOR" placeholder="CHART_AUTHOR" required>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" id="CHART_KEYWORD" name="CHART_KEYWORD" placeholder="CHART_KEYWORD" required>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" id="CHART_DATATYPE" name="CHART_DATATYPE" placeholder="CHART_DATATYPE" required>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" id="CHART_FILEPATH" name="CHART_FILEPATH" placeholder="CHART_FILEPATH" required>
        </div>
        <input class="btn btn-primary" type="button" value="이전" onclick="window.location.href='chart.io'"/>
        <button type="submit" class="btn btn-primary">차트 등록</button>
        <input class="btn btn-primary" type="reset" value="취소(Reset)"/>

    </form>
    </div>
</div>
</div>
</body>
</html>