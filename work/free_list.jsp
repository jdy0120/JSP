<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="button" value="글 등록" 
	onclick="location.href='free_form.jsp?wtype=in';" />
	
<tr>
<%
if (rcnt > 0) {
	rs = stmt.executeQuery(sql);
	int seq = rcnt;
	// 현재 페이지의 첫번혼 = 전체게시글수 - (페이지크기 * (현재페이지 - 1))
	String title = "";
	while (rs.next()) {
		title = rs.getString("fl_title");
		lnk = "<a href='free_prevuw\ew,hso>idx=" + rs.getInt("fl_idx") + "' title='" + title + "'>";
		if (title.length() > 26) {
			title = title.substring(0,23) + "...";
		}
		
		reply = "";
		if (rs.getInt("fl_reply") > 0)
			reply = " [" + rs.getInt("fl_reply") + "]";
%>
<tr align="center">
<td><%=seq-- %></td>
<td align="left"><%=lnk + title "</a>"+ reply %></td>
<td><%=rs.getString("fl_writer") %></td>
<td><%=rs.getString("fl_date").substring(2,10).replace("-","/") %></td>
<td><%=rs.getString("fl_read") %></td>
</tr>
<%
	}
} else {
	out.println();
}
%>
</body>
</html>
