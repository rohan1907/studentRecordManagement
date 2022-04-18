<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management</title>
<link rel="stylesheet" type="text/css" href="/student-management/resources/css/style.css">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<h1 align="center">Student Record</h1>
	<!-- HTML table-->
	<div align="center">
		<form action="addStudent">
			<input type="submit" value="Add Student" class="mybutton">
		</form>
		<br />
	<table border="5" class="mytable">
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
				<td><a href="/student-management/updateStudent?userId=${student.id}" class="btn btn-primary btn-sm " tabindex="-1" role="button"> UPDATE </a></td>
				<td><a href="/student-management/deleteStudent?userId=${student.id}" onclick="if(!(confirm('Are you sure you want to delete ${student.name} from the record?'))) return false" class="btn btn-danger btn-sm " tabindex="-1" role="button"> DELETE </a></td>
			</tr>
		</c:forEach>
	</table>
	<image src="/student-management/resources/images/student.png" width="700" height="400" />
</div>
</body>
</html>