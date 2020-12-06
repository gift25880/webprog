<%-- 
    Document   : mulproblem
    Created on : Oct 9, 2020, 2:57:18 PM
    Author     : INT202
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Lab 1</title>
        <style>
            table {
                width: 20%;
                text-align: center;
            }
            table,td,th {
                height: 25px;
                font-size: 1.2em;
            }
        </style>
    </head>
    <body>
        <h1>Practice: Multiplication Problem</h1>
        <table>
        <%
            Random rnd = new Random();
            for (int i = 0; i < 10; i++) {
                    int num1 = rnd.nextInt(11)+1;
                    int num2 = rnd.nextInt(11)+1;                
        %>
        <tr>
            <td><%= i+1 %></td>
            <td><%= num1 %></td>
            <td>x</td>
            <td><%= num2 %></td>
            <td>=</td>
            <td>_______</td>
        </tr>
        <%
            }
        %>
        </table>
    </body>
</html>
