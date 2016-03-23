<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>공지게시판 입력테스트용 페이지</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
   
<body bgcolor="white">  



<%
	//한글처리
	request.setCharacterEncoding("UTF-8");
  	//세션에 저장된 값을 불러오기
  	String id = (String)session.getAttribute("idKey");//HashMap 계열
	//번호표(세션id)를 확인
	String sessionid = session.getId();
	int intervalTime=session.getMaxInactiveInterval();
	if (id != null) {
		//하나의 계정으로 로그인했다면
		%>
		<b>접속아이디: <%=id %></b><p>
	<%} else{	%>
		<b>접속아이디: <%=id %></b>
	<%} %>

num:<c:out value="${num}" />

<c:if test="${num==0}">
	<center><b>글쓰기</b></center>
</c:if>
<c:if test="${num!=0}">
	<center><b>답변글 쓰기</b></center>
</c:if>

<br>
<form method="post" action="/StartBoot/noticeWritePro.do" name="writeform" onsubmit="return writeSave()">
<input type="hidden" name="num" value="${num}">
<input type="hidden" name="ref" value="${ref}">
<input type="hidden" name="re_step" value="${re_step}">
<input type="hidden" name="re_level" value="${re_level}">

<table width="800" border="0" cellspacing="0" cellpadding="0"  bgcolor="#e0ffff" align="center">
   <tr>
    <td align="right" colspan="2" bgcolor="#b0e0e6">
	    <a href="/StartBoot/noticeList.do"> 글목록</a> 
   </td>
   </tr>

  <tr>
    <td  width="70"  bgcolor="#b0e0e6" align="center" >제 목</td>
    <td  width="330">
    <c:if test="${num==0}">
    <%-- <%if(request.getParameter("num")==null) { %> --%>
       <input type="text" size="40" maxlength="50" name="subject"></td>
       </c:if>
     <c:if test="${num!=0}">
      <input type="text" size="40" maxlength="50" name="subject" value="[답변]"></td>
      </c:if>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#b0e0e6" align="center" >내 용</td>
    <td  width="330" >
     <textarea name="content" rows="13" cols="40"></textarea> </td>
  </tr>
 
<tr>      
 <td colspan=2 bgcolor="#b0e0e6" align="center"> 
  <input type="submit" value="글쓰기" >  
  <input type="reset" value="다시작성">
  <input type="button" value="목록보기" OnClick="location.href='/StartBoot/noticeList.do'">
</td></tr></table>
 
</form>      
</body>
</html>      
