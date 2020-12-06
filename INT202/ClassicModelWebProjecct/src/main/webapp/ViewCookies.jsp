<%-- 
    Document   : ViewCookies
    Created on : Dec 6, 2020, 5:24:54 PM
    Author     : Saraf
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
        <h1>Hello Cookies</h1>
<!--        by servlet-->
        <c:forEach items="${cookies}" var="c" varStatus="vs">
            ${vs.count} = ${c.name} = ${c.value} <br>
        </c:forEach>
<!--        by request-->
        Name: ${cookie.name.value} <br>
        View: ${cookie.view.value} <br>
        <c:forEach items="${cookie}" var="c" varStatus="vs">
            ${vs.count} = ${c} <br>
        </c:forEach>
    </body>
</html>
