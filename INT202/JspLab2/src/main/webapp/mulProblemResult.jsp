<%-- 
    Document   : mulProblemResult
    Created on : Oct 16, 2020, 4:14:52 PM
    Author     : INT202
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Multiplication Result</title>
        <style>
            table {
                width: 20%;
                text-align: center;
            }
            table,td,th {
                height: 25px;
                font-size: 1.2em;
            }
            .incorrect {
                color: red;
            }
        </style>
    </head>
    <body>
        <h1>Practice: Multiplication Result</h1>
        <table>
            <c:forEach var="i" begin="0" end="9">
                <tr>
                    <td>${i+1}</td>
                    <td>${num1[i]}</td>
                    <td>x</td>
                    <td>${num2[i]}</td>
                    <td>=</td>
                    <td class="${isCorrect[i]}">${ans[i]}</td>
                </tr>
            </c:forEach>
                <tr>
                    <td colspan="4">scores</td>
                    <td>${count}</td>
                </tr>
        </table>
    </body>
</html>
