<%-- 
    Document   : mulprobform
    Created on : Oct 9, 2020, 3:06:11 PM
    Author     : INT202
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Lab 2</title>
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
        <form action="checkanswer.jsp" method="post">
            <table>
                <%
                    Random rnd = new Random();
                    for (int i = 0; i < 10; i++) {
                        int num1 = rnd.nextInt(11) + 1;
                        int num2 = rnd.nextInt(11) + 1;
                %>

                <table>
                    <tr>
                        <td><%= i + 1 + ")"%></td>
                        <td>
                            <input type="hidden" name="num1" value="<%= num1%>"><%= num1%>
                        </td>
                        <td>x</td>
                        <td>
                            <input type="hidden" name="num2" value="<%= num2%>"><%= num2%>
                        </td>
                        <td>=</td>
                        <td>
                            <input type="text" name="ans">
                        </td>
                    </tr>
                </table>

                <%
                    }
                %>
            </table>
            <input type="submit">
        </form>
    </body>
</html>
