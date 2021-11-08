<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
Connection con = null;
// Statement st = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String url = "jdbc:mysql://127.0.0.1:3306/test";
String id = "root";
String pw = "a135719";

 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view</title>
</head>
<body>

<table width="300" border="1">
	<tr>
		<th>번호</th>
		<th>이름</th>
		<th>내용</th>
		<th>테스트시간</th>
	</tr>
<%
try { 
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection(url, id, pw);
// 	st = con.createStatement();
	pstmt = con.prepareStatement("select * from test");
	rs = pstmt.executeQuery();

	while(rs.next()){
			int idx = rs.getInt("idx");
			String name = rs.getString("name");
			String content = rs.getString("content");
			String testDate = rs.getString("testDate");
			System.out.println("번호 : " + idx + " / 이름 : " + name + " / 내용 : " + content + " / 테스트시간 : " + testDate );
// 			out.println("번호 : " + idx + " / 이름 : " + name + " / 내용 : " + content + " / 테스트시간 : " + testDate );
%>

<tr>
	<td><%= idx %></td>
	<td><%= name %></td>
	<td><%= content %></td>
	<td><%= testDate %></td>
</tr>

<%

		}
	
			if(con != null) con.close();
// 			if(st != null) st.close();
			if(pstmt != null) pstmt.close();
			if(rs != null) rs.close();
		}catch(Exception e){
			e.printStackTrace();
		}

%>
</table>
</body>
</html>