<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management</title>
<link rel="stylesheet" type="text/css" href="/student-management/resources/css/style.css">
</head>
<body>
	<h1 align="center">Student Record</h1>
	<!-- HTML table-->
	<div align="center">
		<form action="addStudent">
			<input type="submit" value="Add Student" />
		</form>
		<br />
	<table border="5">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Mobile</th>
			<th>Country</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${students}" var="student">
			<tr>
				<td>${student.id}</td>
				<td>${student.name}</td>
				<td>${student.mobile}</td>
				<td>${student.country}</td>
				<td><a href="/student-management/updateStudent?userId=${student.id}"> Update </a></td>
				<td><a href="/student-management/deleteStudent?userId=${student.id}" onclick="if(!(confirm('Are you sure you want to delete ${student.name} from the record?'))) return false"> Delete </a></td>
			</tr>
		</c:forEach>
	</table>
	<image src="/student-management/resources/images/student.png" width="700" height="400" />
</div>
</body>
</html>