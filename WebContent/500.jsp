<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>500 Error!</title>
<link rel="stylesheet" href="${contextPath}/css/error/500.css" />

</head>
<body>
<div class="container">
        <div class="error">
            <h1>500</h1>
            <h2>error</h2>
            <p>Ruh-roh, something just isn't right... Time to paw through your logs and get down and dirty in your
                stack-trace;)</p>
        </div>
        <div class="stack-container">
            <div class="card-container">
                <div class="perspec" style="--spreaddist: 125px; --scaledist: .75; --vertdist: -25px;">
                    <div class="card">
                        <div class="writing">
                            <div class="topbar">
                                <div class="red"></div>
                                <div class="yellow"></div>
                                <div class="green"></div>
                            </div>
                            <div class="code">
                                <ul>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-container">
                <div class="perspec" style="--spreaddist: 100px; --scaledist: .8; --vertdist: -20px;">
                    <div class="card">
                        <div class="writing">
                            <div class="topbar">
                                <div class="red"></div>
                                <div class="yellow"></div>
                                <div class="green"></div>
                            </div>
                            <div class="code">
                                <ul>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-container">
                <div class="perspec" style="--spreaddist:75px; --scaledist: .85; --vertdist: -15px;">
                    <div class="card">
                        <div class="writing">
                            <div class="topbar">
                                <div class="red"></div>
                                <div class="yellow"></div>
                                <div class="green"></div>
                            </div>
                            <div class="code">
                                <ul>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-container">
                <div class="perspec" style="--spreaddist: 50px; --scaledist: .9; --vertdist: -10px;">
                    <div class="card">
                        <div class="writing">
                            <div class="topbar">
                                <div class="red"></div>
                                <div class="yellow"></div>
                                <div class="green"></div>
                            </div>
                            <div class="code">
                                <ul>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-container">
                <div class="perspec" style="--spreaddist: 25px; --scaledist: .95; --vertdist: -5px;">
                    <div class="card">
                        <div class="writing">
                            <div class="topbar">
                                <div class="red"></div>
                                <div class="yellow"></div>
                                <div class="green"></div>
                            </div>
                            <div class="code">
                                <ul>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-container">
                <div class="perspec" style="--spreaddist: 0px; --scaledist: 1; --vertdist: 0px;">
                    <div class="card">
                        <div class="writing">
                            <div class="topbar">
                                <div class="red"></div>
                                <div class="yellow"></div>
                                <div class="green"></div>
                            </div>
                            <div class="code">
                                <ul>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
<script src="${contextPath}/js/error/500.js"></script>
</body>
</html>