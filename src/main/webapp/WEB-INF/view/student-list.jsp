<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">Student Record</h1>
	<!-- HTML table-->
	<table border="5" align="center" >
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Mobile</th>
			<th>Country</th>
		</tr>
		<c:forEach items="${students}" var="student">
			<tr>
				<td>${student.id}</td>
				<td>${student.name}</td>
				<td>${student.mobile}</td>
				<td>${student.country}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>