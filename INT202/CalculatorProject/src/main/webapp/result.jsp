<%-- 
    Document   : result
    Created on : Dec 6, 2020, 11:31:05 PM
    Author     : Saraf
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <h1>Compound Interest Calculator</h1>
        <table>
            <tr>
                <td>Principal</td>
                <td><fmt:formatNumber type="number" maxFractionDigits="2" value="${initPrincipal}" /></td>
            </tr>
            <tr>
                <td>Interest Rate</td>
                <td>${intRY}</td>
            </tr>
            <tr>
                <td>Interest Period</td>
                <td>${intP}</td>
            </tr>
            <tr>
                <td>Number of years</td>
                <td>${year}</td>
            </tr>
            <tr>
                <td>Future Principal</td>
                <td><fmt:formatNumber type="number" maxFractionDigits="2" value="${future.getFuturePrincipal()}"/></td>
            </tr>
        </table>
        <br>
        <table>
            <tr>
                <th>Year</th>
                <th>Future Principal</th>
            </tr>
            <c:forEach var="i" begin="1" end="6">
                <tr>
                    <td>${i}</td>
                    <td><fmt:formatNumber type="number" maxFractionDigits="2" value="${future.getFuturePrincipalYear(i)}"/></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
