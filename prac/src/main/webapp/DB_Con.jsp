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
	String url = "jdbc:mysql://127.0.0.1:3306/test";
	String id = "root";
	String pw = "a135719";
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection(url, id, pw);
	%>
</body>
</html>