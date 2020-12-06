<%-- 
    Document   : checkanswer
    Created on : Oct 9, 2020, 3:15:42 PM
    Author     : INT202
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Check Answer</title>
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
        <%
            String[] num1 = request.getParameterValues("num1");
            String[] num2 = request.getParameterValues("num2");
            String[] ans = request.getParameterValues("ans");
            String ansClass;
            int count = 0;
            for (int i = 0; i < 10; i++) {
                    int result = Integer.valueOf(num1[i])*Integer.valueOf(num2[i]);
                    if (result == Integer.valueOf(ans[i])) {
                        count++;
                        ansClass = "";
                    } else {
                        ansClass = "incorrect";
                    }
        %>
        <tr>
            <td><%= i+1+")" %></td>
            <td><%= num1[i] %></td>
            <td>x</td>
            <td><%= num2[i] %></td>
            <td>=</td>
            <td class="<%= ansClass %>"><%= ans[i] %></td>
        </tr>
        <%
            }
        %>
        <tr>
            <td colspan="4">scores</td>
            <td><%= count %></td>
        </tr>
        </table>
    </body>
</html>
