<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String loginid = (String)session.getAttribute("loginid");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>비로그인 시</h3>
<%
if (loginid == null) { // 로그인 전이면	
%>
<a href="loginForm.jsp">로그인</a><br />
<a href="#">회원가입</a>
<%
} else { // 로그인 후이면
%>
<a href="logout.jsp">로그아웃</a><br />
<a href="#">정보수정</a>
<%
}
%>
</body>
</html>