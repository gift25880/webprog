<%-- 
    Document   : Result
    Created on : Dec 6, 2020, 10:02:13 PM
    Author     : napat
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Result</title>
    </head>
    <body>
        <h1>Your Registration Result</h1>
        <c:forEach items="${history.allRegisteredCourses}" var="sem">
            <h2>${sem.semesterText}</h2>
                <c:forEach items="${sem.registeredCourse}" var="sub">
                    <table>
                        <tr>
                            <td style="width: 10vw">
                                 ${sub.subjectId}
                            </td>
                            <td style="width: 20vw">
                                 ${sub.title}
                            </td>
                            <td>
                                 ${sub.credit}
                            </td>
                        </tr>
                    </table>
                </c:forEach>
        </c:forEach>
    </body>
</html>
