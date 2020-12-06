<%-- 
    Document   : myjsp
    Created on : Oct 16, 2020, 2:30:03 PM
    Author     : INT202
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:forEach items="${fruits}" var="fruit">
            <h2>${fruit}</h2>
        </c:forEach>
    </body>
</html>
