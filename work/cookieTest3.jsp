<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String language = "korea";
String cookie = request.getHeader("Cookie");

if (cookie != null) {
	Cookie[] cookies = request.getCookies();
	for (int i = 0; i < cookies.length ; i++) {
		if (cookies[i].getName().equals("language")) {
			language = cookies[i].getValue();
		}
	}
}
/*
쿠키를 받아 language의 값에 따라 korea이면 '안녕하세요. 이것은 쿠키예제입니다.', english이면 'Hello. This is Cookie example.' 라고
라디오 버튼 위에 출력 쿠키가 없으면 language의 기본값으로 'korea'를 줌
language의 값에 맞게 라디오 버튼을 선택된 상태로 만듦

cookieTest4.jsp
라디오 버튼으로 입력받은 값을 language란 이름의 쿠키로 클라이언트에 저장
만료기간은 하루로 지정하고, 작업이 끝나면 다시 cookieTest3.jsp로 돌아옴
*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if (language.equals("korea")) { %>
	<h3>안녕하세요. 이것은 쿠키예제입니다.</h3>
<%} else { %>
 	<h3>Hello. This is Cookie example.</h3>
<%} %>
<form action="cookieTest4.jsp" method="post">
<input type="radio" name="language" value="korea" <% if (language.equals("korea")) { %>checked="checked "<%} %> />한국어 페이지 보기

<input type="radio" name="language" value="english"<% if (language.equals("english")) { %>checked="checked "<%} %> />영어 페이지 보기
<input type="submit" value="언어설정">
</form>
</body>
</html>