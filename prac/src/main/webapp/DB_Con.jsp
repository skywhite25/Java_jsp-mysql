<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연결 모양</title>
</head>
<body>
	<%
		// 연결
	Connection con = null;
	String url = "jdbc:mysql://175.123.253.199:3306/test";
	String id = "root";
	String pw = "eldkdlTlxl0101@@";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection(url, id, pw);
	%>
</body>
</html>