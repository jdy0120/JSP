<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>좋아하는 취미</h2>
<form name="frmPost" action="multi" method="post">
	<p>이름 : <input type="text" name="name"></p>
	<p>결혼여부 : <input type="radio" name="marry" value="y">기혼
	<input type="radio" name="marry" value="n">미혼</p>
	<p>취미</p>
	<p>
		<input type="checkbox" name="hobby" value="영화">영화
		<input type="checkbox" name="hobby" value="독서">독서
		<input type="checkbox" name="hobby" value="음악">음악
		<input type="checkbox" name="hobby" value="자전거">자전거
		<input type="checkbox" name="hobby" value="게임">게임
		<input type="checkbox" name="hobby" value="헬스">헬스
	</p>
	<input type="submit" value="전송">
</form>
</body>
</html>