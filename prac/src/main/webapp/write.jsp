<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write</title>
</head>
<body>
	<form action="process.jsp" method="post">
	
		<p> 아이디 : <input type="text" name="name">
		<p> 내용 : <input type="text" name="content">
		<p> 테스트시간 : <input type="date" name="testDate">
		<p> <input type="submit" value="전송">
	</form>
</body>
</html>