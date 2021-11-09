<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String userId = (String)session.getAttribute("idKey"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST TEST</title>
</head>
<body>
	글쓰기 
	<br>
	<form action="projectAdd.do" method="get">
		글 제목
		<input type="text" name="pro_id" style="display: none;" value="<%= userId %>">
		<input type="text" name="pro_title">
		<br>
		글 내용
		<input type="text" name="pro_content">
		<input type="submit" value="글 쓰기">
	</form>
</body>
</html>