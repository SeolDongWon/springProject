<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GetUserList</title>
</head>
<body>
	<table>
		<tr>
			<td><strong>id</strong></td>
			<td><strong>password</strong></td>
			<td><strong>name</strong></td>
			<td><strong>role</strong></td>
		</tr>
		
		<c:forEach var = "user" items="${userList }">
		<tr>
			<td>${user.id}</td>
			<td>${user.password}</td>
			<td>${user.name}</td>
			<td>${user.role}</td>
		</tr>
		</c:forEach>
	</table>
	<a href="index.jsp">indexMenu</a>
</body>
<style>

table, td {
	border-collapse: collapse;
	border: 1px solid black;
	padding: 5px 10px 5px 10px;
}
</style>
</html>