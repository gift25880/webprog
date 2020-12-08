<%-- 
    Document   : ShowRegister
    Created on : Dec 5, 2020, 7:41:28 PM
    Author     : Khaitong Lim
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register History</title>
    </head>
    <body style="margin-left: 50px">
        <h1>ประวัติการลงทะเบียน</span></h1><hr>
    <table>
        <!--  Loop for all Semester in collection --->
        <c:forEach items="${registerHistory.allRegisteredCourses}" var="sem">
            <thead>
                <th colspan="4" style="text-align: left;background-color: lightsalmon">${sem.semesterText}</th>
            </thead>
            <thead>
                <th>ลำดับ</th>
                <th>รหัสวิชา</th>
                <th>ชื่อวิชา</th>
                <th>หน่วยกิต</th>
            </thead>

            <!-- Loop for all registered course (Subject) in the Semester -->
            <c:forEach items="${sem.registeredCourse}" var="subject" varStatus="vs">
                <tr>
                    <td style="text-align: center">${vs.count}</td>
                    <td>${subject.subjectId}</td>
                    <td>${subject.title}</td>
                    <td style="text-align: right; padding-right: 10px">${subject.credit}</td>
                 </tr>
            </c:forEach>
            <!-- End of each Semester -->
            <tr>
                <td colspan="4"></td>
            </tr>
        </c:forEach>
    <!-- End of All Semester in Collection -->
    </table>
    <hr>
    <div style="padding-left: 50px"><a href='index.html'><button>Back</button></a></div>
</body>
</html>