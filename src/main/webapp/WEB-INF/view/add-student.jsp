<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>
                Student Management
            </title>
            <link rel="stylesheet" type="text/css" href="/student-management/resources/css/addstudent.css">
        </head>

        <body>
            <h3 align="center">Add Student</h3>
            <!-- Create a spring mvc form-->
            <div align="center">
                <form:form action="save-student" modelAttribute="student" method="POST">
                    <form:hidden path="id" />
                    <label for="">Name : </label>
                    <br />
                    <form:input path="name" />
                    <br />

                    <label for="">Mobile : </label>
                    <br />
                    <form:input path="mobile" />
                    <br />

                    <label for="">Country : </label>
                    <br />
                    <form:input path="country" />
                    <br />
                    <br />
        
                    <input type="submit" value="Submit" />

                </form:form>
            </div>
        </body>

        </html>