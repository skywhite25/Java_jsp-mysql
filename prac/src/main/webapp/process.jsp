<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연결</title>
</head>
<body>
	<%@ include file = "DB_Con.jsp" %>
	
	<%
	request.setCharacterEncoding("utf-8");
// 	int idx = Integer.parseInt(request.getParameter("idx"));	
	String name = request.getParameter("name");	
	String content = request.getParameter("content");	
	String testDate = request.getParameter("testDate");	
	
	Statement stmt = null;
	
	try {
		String sql = "insert into test(name, content, testDate) values('"+name+"','"+content+"','"+testDate+"')";
		stmt = con.createStatement();
		stmt.executeUpdate(sql);
		out.print("성공");
		%>
		<br><a href = "http://localhost:8090/view.jsp">리스트</a>
		<%
	} catch(SQLException e){
		out.print("실패");		
		out.print("SQL message : " + e.getMessage());		
	} finally {
		if (stmt != null) {
			stmt.close();
		}
		if (con != null){
			con.close();
		}
	}
	%>
</body>
</html>