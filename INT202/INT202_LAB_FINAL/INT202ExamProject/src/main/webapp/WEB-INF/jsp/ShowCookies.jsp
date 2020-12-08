<%-- 
    Document   : ShowCookies
    Created on : Dec 6, 2020, 11:38:46 AM
    Author     : Khaitong Lim
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="margin: 15px; padding-left: 30px">
        <h1>Cookie List</h1><hr>
        <table>
            <thead>
            <th>No</th>
            <th>Name</th>
            <th>Value</th>
        </thead>
        <!-- JSTL Loop-->
        <c:forEach items="${cookies}" var="c" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${c.name}</td>
                <td style="padding-left: 15px">${c.value}</td>
            </tr>
         </c:forEach>
        <!-- End Loop -->
    </table>
    <hr>
    <div style="padding-top: 10px"><a href='index.html'><button>Back</button></a></div>
</body>
</html>
