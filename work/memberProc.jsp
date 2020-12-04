<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/testmall?useUnicode=true&";
url += "charcterEncoding=utf8&verifyServerCertificate=false&";
url += "useSSL=false&serverTimezone=UTC";

try {
	Class.forName(driver);
	conn = DriverManager.getConnection(url,"root","1234");
	stmt = conn.createStatement();
	sql = "update t_member_list set" + "ml_status = '" + status + "' where ml_id = '" + id + "'";
	int result = stmt.executeUpdate(sql);
	if (result = 0) {
		out.prifntln("alert('상태 수정에 실패했습니다. \n 다시 시도하세요.');");
	} else {
		out.println("alert('상태 수정에 실패하였습니다. \n다시 시도하세요.');");
	}
	out.println("location.href='memberView.jsp?id=" + id + "';");
	out.println("</script>");
} catch(Exception e) {
	out.println("오류가 발생했습니다.");
	e.printStackTrace();
} finally {
	try {
		stmt.close();
		conn.close();
	} catch (Exception e){
		
	}
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>