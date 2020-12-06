<%-- 
    Document   : index
    Created on : Dec 6, 2020, 8:50:42 PM
    Author     : napat
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <h1>Registration Form</h1>
        <form action="Regis" method="post">
            <%--<c:forEach items="${subjects}" var="i">
                <ul>
                    ${i}
                    <c:forEach items="i" var="j">
                        <li><input type="checkbox" name="subject" value="${j}" id="${j}"><label for="${j}">${j}</label></li>
                        </c:forEach>
                </ul>
            </c:forEach>--%>
            Semester: <input type="text" name="semester" required><br>
            Subject ID: <input type="text" name="id" required><br>
            <input type="submit">
        </form>
    </body>
</html>
