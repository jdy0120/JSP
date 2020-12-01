<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.setAttribute("name1", "홍길동");
session.setAttribute("name2", "전우치");
%>
<script>
	location.href="sessionTest1.jsp"
</script>