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
            <h1 align="center">ADD STUDENT</h1>
            <!-- Create a spring mvc form-->
            <div align="center">
                <form:form action="save-student" modelAttribute="student" method="POST" class="mytable">
                    <form:hidden path="id" />
                    <label for=""><h3>Name : </h3></label>
                    <form:input path="name" />
                    <br />

                    <label for=""><h3>Mobile : </h3></label>
                    <form:input path="mobile" />
                    <br />

                    <label for=""><h3>Country : </h3></label>
                    <form:input path="country" />
                    <br />
                    <br />
        
                    <input type="submit" value="Submit" class="mybutton">

                </form:form>
            </div>
        </body>

        </html>