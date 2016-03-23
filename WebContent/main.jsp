<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	
    <title>TestPage #1</title>
	
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
	
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                
                <a class="navbar-brand page-scroll" href="./main.do"><font color="#f05f40">Home</font></a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="">
                        <a href="./noticeList.do">Notice</a>
                    </li>
                    <li class="">
                        <a href="./board.do">Free Board</a>
                    </li>
                    <li class="">
                        <a href="./group.do">Group</a>
                    </li>
                    <li class="">
                        <a href="./resource.do">Resources</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <header>
        <div class="header-content">
        	<div id="myTabContent" class="tab-content">
	  			<div class="tab-pane fade active in" id="home">
	                <h1>Welcome</h1>
	                <hr>
	                <p>TestPage#1</p>
	                
	                <button type="button" id="btnLog" class="btn btn-default btn-xl" data-toggle="modal" data-target="#myModal" >Login</button>
	            </div>

	            <!-- 공지사항 -->
	            <div class="tab-pane fade" id="notice">
	            	<jsp:include page="/web/notice.jsp"/>
	            	
	            </div>
	            
	            <!-- 자유게시판 -->
	            <div class="tab-pane fade" id="board">
	            	<%-- <jsp:include page="/StartBoot/board.do"/> --%>
	            </div>
	            
	            <!-- 그룹 -->
	            <div class="tab-pane fade" id="group">
	            	<%-- <jsp:include page="/StartBoot/group.do"/> --%>
	            </div>
	            
	            <!-- 자료실 -->
	            <div class="tab-pane fade" id="resource">
	            	<%-- <jsp:include page="/StartBoot/resource.do"/> --%>
	            </div>
            </div>
        </div>
    </header>
	
	<!-- 여기서부터 시작 -->
	
	<!-- 아랫 글 -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Let's Get In Touch!</h2>
                    <hr class="primary">
                    <p>Ready to start your next project with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
                </div>
                <div class="col-lg-4 col-lg-offset-2 text-center">
                    <i class="fa fa-phone fa-3x wow bounceIn"></i>
                    <p>123-456-6789</p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-envelope-o fa-3x wow bounceIn" data-wow-delay=".1s"></i>
                    <p><a href="mailto:your-email@your-domain.com">feedback@startbootstrap.com</a></p>
                </div>
            </div>
        </div>
    </section>
    <!-- 여기까지 -->

<!-- 모달 팝업 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
	      <div id="myTabContent" class="tab-content">
	      	
	      	<!-- 로그인(log) -->
	      	<div class="tab-pane fade active in" id="login">
				<div class="modal-header">
					<button type="button" id="modalClose" class="close" data-dismiss="modal" data-target="#login" data-toggle="tab"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
					<h4 class="modal-title" id="myModalLabel">로그인</h4>
				</div>
				<form name="memLogin" method="post" action="./MemberLogin.do">
				<h5>아이디</h5>
				<input type="text" class="form-control" id="logId" name="id">
				<h5>비밀번호</h5>
				<input type="password" class="form-control" id="logPw" name="pw">
				<br>
				<a href="#" id="btn_reg" data-target="#join" data-toggle="tab">회원가입</a><br>
				<a href="#" id="btn_findId" data-target="#findId" data-toggle="tab">아이디찾기</a> /
				<a href="#" id="btn_findPw" data-target="#findPw" data-toggle="tab">비밀번호찾기</a><p>
				<div class="modal-footer">
					<button type="submit" id="memLogin" class="btn btn-primary btn-l">Login</button>
					<button type="button" class="btn btn-default btn-l" data-target="#login" data-toggle="tab" data-dismiss="modal" onclick="modalReset()">Close</button>
				</div>
				</form>
			</div>
			
			<!-- 아이디찾기(findId_) -->
			<div class="tab-pane fade" id="findId">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" data-target="#login" data-toggle="tab" onclick="modalReset()"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
					<h4 class="modal-title" id="myModalLabel">아이디 찾기</h4>
				</div>
				<h5>이름</h5>
				<input type="text" class="form-control" id="findId_name" name="name">
				<h5>이메일</h5>
				<input type="text" class="form-control" id="findId_email" name="email"><p><br>
				<div class="modal-footer">
					<button class="btn btn-primary">아이디찾기<i class="fa fa-check spaceLeft"></i></button>
					<button class="btn btn-danger" data-target="#login" data-toggle="tab" onclick="modalReset()">돌아가기<i class="fa fa-times spaceLeft"></i></button>
				</div>
			</div>
			
			<!-- 비밀번호찾기(findPw_) -->
			<div class="tab-pane fade" id="findPw">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" data-target="#login" data-toggle="tab" onclick="modalReset()"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
					<h4 class="modal-title" id="myModalLabel">비밀번호 찾기</h4>
				</div>
				<h5>아이디</h5>
				<input type="text" class="form-control" id="findPw_id" name="id">
				<h5>이메일</h5>
				<input type="text" class="form-control" id="findPw_email" name="email"><br><br>
				<div class="modal-footer">
					<button class="btn btn-primary" type="submit">비밀번호찾기<i class="fa fa-check spaceLeft"></i></button>
					<button class="btn btn-danger" data-target="#login" data-toggle="tab" onclick="modalReset()">돌아가기<i class="fa fa-times spaceLeft"></i></button>
				</div>
			</div>
		
		<!-- 회원가입(reg_) -->
			<div class="tab-pane fade" id="join">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" data-target="#login" data-toggle="tab" onclick="modalReset()"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
					<h4 class="modal-title" id="myModalLabel">회원가입</h4>
				</div>
				
				<form class="form-horizontal" name="regForm" method="post" action="./registerMember.do">
		        <br>
		        	<div class="form-group">
		            	<label class="col-sm-3 control-label" for="inputId">아이디</label>
		        		<div class="col-sm-6">
		            		<input id="reg_id" class="form-control" name="reg_id" type="text" placeholder="아이디">
		          		</div>
		        	</div>
		        
			        <div class="form-group">
			          	<label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
				        <div class="col-sm-6">
				          	<input id="reg_pw" class="form-control" name="reg_pw" type="password" placeholder="비밀번호">
				        	<p class="help-block">숫자, 특수문자 포함 8자 이상</p>
				        </div>
		        	</div>
		        
			        <div class="form-group">
		        	  	<label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호 확인</label>
			            <div class="col-sm-6">
		            	  	<input id="reg_pwCk" class="form-control" name="reg_pwCk" type="password" placeholder="비밀번호 확인">
		                	<p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
	            		</div>
		          	</div>
	          	
	          		<div class="form-group">
		            	<label class="col-sm-3 control-label" for="inputName">이름</label>
		          		<div class="col-sm-6">
		            		<input id="reg_name" class="form-control" name="reg_name" type="text" placeholder="이름">
		          		</div>
		        	</div>
	          	
			        <div class="form-group">
			          	<label class="col-sm-3 control-label" for="inputEmail">이메일</label>
			        	<div class="col-sm-6">
			          		<input id="reg_email" class="form-control" name="reg_email" type="email" placeholder="이메일">
			        	</div>
			        </div>
				
		          	<div class="form-group">
		              	<label class="col-sm-3 control-label" for="inputAgree">약관 동의</label>
		            	<div class="col-sm-6" data-toggle="buttons">
		              		<input type="checkbox" id="reg_agree">
		              		<!-- <label class="btn btn-warning">
			                	<input id="agree" type="checkbox" autocomplete="off">
			                  	<span class="fa fa-check"></span>
		              		</label> -->
		              		<a href="#" data-target="#yakkwan" data-toggle="tab">이용약관</a> 에 동의 합니다.
		            	</div>
		          	</div>
		          	
					<div class="modal-footer">
						<div class="col-sm-12 text-center">
		            		<button type="submit" id="regSubmit" class="btn btn-primary" >회원가입<i class="fa fa-check spaceLeft"></i></button>
		            		<button id="regCancel" class="btn btn-danger" data-target="#login" data-toggle="tab">가입취소<i class="fa fa-times spaceLeft"></i></button>
		            		
		          		</div>
		        	</div>
	        	</form>
			</div>
			
			<!-- 이용약관 -->
			<div class="tab-pane fade" id="yakkwan">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" data-target="#login" data-toggle="tab" onclick="modalReset()"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
					<h4 class="modal-title" id="myModalLabel">이용 약관</h4>
				</div>
			
				<br>
				이<br>
				용<br>
				약<br>
				관<p>
			
				<div class="modal-footer">
					<div class="col-sm-12 text-center">
						<button id="agree_yes" class="btn btn-primary" data-target="#join" data-toggle="tab">동의함<i class="fa fa-check spaceLeft"></i></button>
						<button id="agree_no" class="btn btn-danger" data-target="#join" data-toggle="tab">동의안함<i class="fa fa-times spaceLeft"></i></button>
					</div>
				</div>
			</div>
  		</div>
	  </div>
    </div>
  </div>
</div>
<!-- 모달 끝 -->

</div>
</body>

</html>