<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String test = request.getParameter("test");
response.sendRedirect("responseRedirectResult.jsp");
// 자동으로 지정된 파일로 이동시킴
%>
