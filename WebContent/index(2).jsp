<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

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

<body id="page-top">
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
                <a class="navbar-brand page-scroll" data-target="#home" data-toggle="tab" href="#page-top">Home</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="navbar-brand page-scroll" data-target="#notice" data-toggle="tab" href="#page-top">Notice</a>
                    </li>
                    <li>
                        <a class="navbar-brand page-scroll" data-target="#board" data-toggle="tab" href="#page-top">Free Board</a>
                    </li>
                    <li>
                        <a class="navbar-brand page-scroll" data-target="#group" data-toggle="tab" href="#page-top">Group</a>
                    </li>
                    <li>
                        <a class="navbar-brand page-scroll" data-target="#resource" data-toggle="tab" href="#page-top">Resources</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>


    <header>
        <div class="header-content">
        	<div id="myTabContent" class="tab-content">
	  			<div class="tab-pane fade active in" id="home">
	            <!-- <div class="header-content-inner"> -->
	                <h1>Welcome</h1>
	                <hr>
	                <p>TestPage#1</p>
	                <!-- <a href="#about" class="btn btn-primary btn-xl page-scroll">들어가기-></a> -->
	                <button type="button" class="btn btn-default btn-xl" data-toggle="modal" data-target="#myModal" >
						  Login
					</button>
	            </div>
	            
	            <!-- 게시판 디자인 이곳에 입력하면 됨 -->
	            <!-- 공지사항 -->
	            <div class="tab-pane fade" id="notice">
	            	<jsp:include page="/web/notice.jsp"/>
	            </div>
	            
	            <!-- 자유게시판 -->
	            <div class="tab-pane fade" id="board">
	            	<jsp:include page="/web/board.jsp"/>
	            </div>
	            
	            <!-- 그룹 -->
	            <div class="tab-pane fade" id="group">
	            	<jsp:include page="/web/group.jsp"/>
	            </div>
	            
	            <!-- 자료실 -->
	            <div class="tab-pane fade" id="resource">
	            	<jsp:include page="/web/resource.jsp"/>
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

<!-- 모달 팝업 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog">
    <div class="modal-content">
<!--       <div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" data-target="#login" data-toggle="tab"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
	<h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div> -->
      <div class="modal-body">
      <div id="myTabContent" class="tab-content">
      	<div class="tab-pane fade active in" id="login">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" data-target="#login" data-toggle="tab"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title" id="myModalLabel">로그인</h4>
			</div>
			<h5>아이디</h5>
			<input type="text" class="form-control" id="usr" name="id">
			<h5>비밀번호</h5>
			<input type="text" class="form-control" id="pwd" name="pw">
			<br>
			<a href="#" data-target="#join" data-toggle="tab">회원가입</a><br>
			<a href="#" data-target="#findId" data-toggle="tab">아이디찾기</a> /
			<a href="#" data-target="#findPw" data-toggle="tab">비밀번호찾기</a><p>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary btn-l">Login</button>
				<button type="button" class="btn btn-default btn-l" data-target="#login" data-toggle="tab" data-dismiss="modal">Close</button>
			</div>
		</div>
		
		<!-- 아이디찾기 -->
		<div class="tab-pane fade" id="findId">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" data-target="#login" data-toggle="tab"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title" id="myModalLabel">아이디 찾기</h4>
			</div>
			<h5>이름</h5>
			<input type="text" class="form-control" id="findId_input" name="name">
			<h5>이메일</h5>
			<input type="text" class="form-control" id="findId_input" name="email"><p><br>
			<div class="modal-footer">
				<button class="btn btn-primary" type="submit">아이디찾기<i class="fa fa-check spaceLeft"></i></button>
				<button class="btn btn-danger" data-target="#login" data-toggle="tab">돌아가기<i class="fa fa-times spaceLeft"></i></button>
			</div>
		</div>
		
		<!-- 비밀번호찾기 -->
		<div class="tab-pane fade" id="findPw">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" data-target="#login" data-toggle="tab"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title" id="myModalLabel">비밀번호 찾기</h4>
			</div>
			<h5>아이디</h5>
			<input type="text" class="form-control" id="findPw_input" name="id">
			<h5>이메일</h5>
			<input type="text" class="form-control" id="findPw_input" name="email"><br><br>
			<div class="modal-footer">
				<button class="btn btn-primary" type="submit">비밀번호찾기<i class="fa fa-check spaceLeft"></i></button>
				<button class="btn btn-danger" data-target="#login" data-toggle="tab">돌아가기<i class="fa fa-times spaceLeft"></i></button>
			</div>
		</div>
		
		<!-- 회원가입 -->
		<div class="tab-pane fade" id="join">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" data-target="#login" data-toggle="tab"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title" id="myModalLabel">회원가입</h4>
			</div>
			<form class="form-horizontal" action="/StartBoot/RegisterMember.do" method="post">
		        
		        <br>
		        <div class="form-group">
		            <label class="col-sm-3 control-label" for="inputId">아이디</label>
		          <div class="col-sm-6">
		            <input class="form-control" id="inputId" type="text" placeholder="아이디">
		          </div>
		        </div>
		        
		        <div class="form-group">
		          <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
		        <div class="col-sm-6">
		          <input class="form-control" id="inputPassword" type="password" placeholder="비밀번호">
		        <p class="help-block">숫자, 특수문자 포함 8자 이상</p>
		        </div>
		        </div>
		        
		        <div class="form-group">
	        	  <label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호 확인</label>
	            <div class="col-sm-6">
            	  <input class="form-control" id="inputPasswordCheck" type="password" placeholder="비밀번호 확인">
                <p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
            	</div>
	          	</div>
	          	
	          	<div class="form-group">
		            <label class="col-sm-3 control-label" for="inputName">이름</label>
		          <div class="col-sm-6">
		            <input class="form-control" id="inputName" type="text" placeholder="이름">
		          </div>
		        </div>
	          	
		        <div class="form-group">
		          <label class="col-sm-3 control-label" for="inputEmail">이메일</label>
		        <div class="col-sm-6">
		          <input class="form-control" id="inputEmail" type="email" placeholder="이메일">
		        </div>
		        </div>
				
		          <div class="form-group">
		              <label class="col-sm-3 control-label" for="inputAgree">약관 동의</label>
		            <div class="col-sm-6" data-toggle="buttons">
		              <label class="btn btn-warning active">
		                <input id="agree" type="checkbox" autocomplete="off" checked>
		                  <span class="fa fa-check"></span>
		              </label>
		              <a href="#">이용약관</a> 에 동의 합니다.
		            </div>
		          </div>
					<div class="modal-footer">
						<div class="col-sm-12 text-center">
		            		<button class="btn btn-primary" type="submit">회원가입<i class="fa fa-check spaceLeft"></i></button>
		            		<button class="btn btn-danger" data-target="#login" data-toggle="tab">가입취소<i class="fa fa-times spaceLeft"></i></button>
		          		</div>
		        	</div>
	        	</form>
			</div>
      	</div>
      </div>
<!--       <div class="modal-footer">
      	<button type="button" class="btn btn-primary btn-l">Login</button>
		<button type="button" class="btn btn-default btn-l" data-target="#login" data-toggle="tab" data-dismiss="modal">Close</button>
      </div> -->
    </div>
  </div>
</div>
<!-- 모달 끝 -->

<!-- 백업 -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
	<h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
      	<div class ="">
		<h5>아이디</h5>
		<input type="text" class="form-control" id="usr" name="id">
		<h5>비밀번호</h5>
		<input type="text" class="form-control" id="pwd" name="pw">
		
		<a href="#"><h5>회원가입</h5></a>
		<a href="#">아이디</a>/
		<a href="#">비밀번호찾기</a><p>
		
      </div>
      <div class="modal-footer">
      	<button type="button" class="btn btn-primary btn-l">Login</button>
		<button type="button" class="btn btn-default btn-l" data-dismiss="modal">Close</button>
		<button type="button" class="btn btn-default btn-l" data-target="#mymodal2">Test##</button>
      </div>
    </div>
  </div>
</div>
</body>

</html>