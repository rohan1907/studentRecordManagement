<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
        </head>

        <body>
            <h3 align="center">Add Student</h3>
            <!-- Create a spring mvc form-->
            <div align="center">
                <form:form action="save-student" modelAttribute="student" method="POST">
                    <label for="">Name : </label>
                    <form:input path="name" />
                    <br />

                    <label for="">Mobile : </label>
                    <form:input path="mobile" />
                    <br />

                    <label for="">Country : </label>
                    <form:input path="country" />
                    <br />

                    <input type="submit" value="Submit" />

                </form:form>
            </div>
        </body>

        </html>