<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>포워드된 페이지(forwardTest3.jsp)</h2>
<table>
<tr><th>이름</th><td><%=request.getParameter("name") %></td></tr>
<tr><th>나이</th><td><%=request.getParameter("age") %></td></tr>
<tr><th>전화번호</th><td><%=request.getParameter("phone") %></td></tr>
</table>
</body>
</html>