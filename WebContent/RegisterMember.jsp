<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	alert('회원가입을 축하합니다')
</script>
</head>
<%
	request.setCharacterEncoding("utf-8");
%>
<body>
<h2>
	아이디:<%=request.getAttribute("inputId")%><p>
	비밀번호:<%=request.getAttribute("inputPassword")%><p>
	이름:<%=request.getAttribute("inputName")%><p>
	입력받은 이메일:<%=request.getAttribute("inputEmail")%><br>
</h2>

</body>
</html>