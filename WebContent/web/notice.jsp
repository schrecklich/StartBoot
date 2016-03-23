
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>

	<meta http-equiv="page-enter" content="blendtrans(duration=0.2)" charset="utf-8">
	<meta http-equiv="page-exit" content="blendtrans(duration=0.2)" charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

    <!-- Custom Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="css/animate.min.css" type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/creative.css" type="text/css">
</head>

<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/memReg.js"></script>


<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- Plugin JavaScript -->
<script src="js/jquery.easing.min.js"></script>
<script src="js/jquery.fittext.js"></script>
<script src="js/wow.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="js/creative.js"></script>


<body>
<!-- 상위 고정 -->
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- #page-top 페이지 최상위href로 이동가능  -->
                <a class="navbar-brand page-scroll" href="./main.do">Home</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <a class="page-scroll" href="./notice.do">Notice</a>
                    </li>
                    <li class="">
                        <a class="page-scroll" href="./board.do">Free Board</a>
                    </li>
                    <li class="">
                        <a class="page-scroll" href="./group.do">Group</a>
                    </li>
                    <li class="">
                        <a class="page-scroll" href="./resource.do">Resources</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
<!-- ---- -->

	<header>
        <div class="header-content">
			<div class="bg-my-primary center-block" style="width:90%;height:90%;padding:15px;">
           		<table class="table table-condensed table-hover">
           			<thead>
            			<tr>
            				<td>번 호</td>
            				<td width="500">제목</td>
            				<td>작성자</td>
            				<td>등록일</td>
            				<td>조회수</td>
            			</tr>
           			</thead>
           			
           			<!-- 공지 -->
           			<tbody style="cursor:pointer">
	            			<!-- 반복문돌림 -->
	            			<c:forEach var="article" items="${articleList}">
	            				<tr>
	            					<td>${article.num}</td>
	            					<td>${article.subject}</td>
	            					<td>${article.id}</td>
	            					<td>${article.reg_date}</td>
	            					<td>${article.count}</td>
	            					
	            				</tr>
	            			<!-- 여기까지 -->
	            			</c:forEach>
           			</tbody>
           			
           		</table>
           		<div class="modal-footer">
           		<div align="right"><button id="NoticeWriteBtn" onclick="location.href='./noticeWriteForm.do'">글작성</button></div>
      		</div>
      		
        </div>
        </div>
    </header>
</body>
</html>