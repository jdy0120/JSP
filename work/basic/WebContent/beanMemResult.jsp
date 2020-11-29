<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!-- // uid, pwd, name, phone, point -->
 
<jsp:useBean id="memberinfo" class="test.MemberInfo" />
<jsp:setProperty name="memberinfo" property="*" />
<!--
<jsp:setProperty name="memberinfo" property="uid" param="uid" />
<jsp:setProperty name="memberinfo" property="pwd" param="pwd" />
<jsp:setProperty name="memberinfo" property="name" param="name" />
<jsp:setProperty name="memberinfo" property="phone" param="phone" />
<jsp:setProperty name="memberinfo" property="point" param="point" />
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>아이디 : <%=memberinfo.getUid() %></h3>
<h3>비밀번호 : <%=memberinfo.getPwd() %></h3>
<h3>이름 : <%=memberinfo.getName() %></h3>
<h3>전화번호 : <%=memberinfo.getPhone() %></h3>
<h3>포인트 : <%=memberinfo.getPoint() %></h3>

<table>
<tr><td>아이디</td><td><%=memberinfo.getUid() %></td></tr>
<tr><td>암호</td><td><%=memberinfo.getPwd() %></td></tr>
<tr><td>이름</td><td><%=memberinfo.getName() %></td></tr>
<tr><td>전화</td><td><%=memberinfo.getPhone() %></td></tr>
<tr><td>포인트</td><td><%=memberinfo.getPoint() %></td></tr>
</table>

</body>
</html>