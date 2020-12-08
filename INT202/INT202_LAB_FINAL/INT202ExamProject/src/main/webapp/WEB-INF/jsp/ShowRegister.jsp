<%-- 
    Document   : ShowRegister
    Created on : Dec 5, 2020, 7:41:28 PM
    Author     : Khaitong Lim
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="/lib/Tracer.jsp"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Info</title>
    </head>
    <body>
        <h1>รายชื่อวิชา ที่ลงทะเบียน ในภาคเรียนที่ <span style="color: red">${semesterNumber} </span></h1><hr>
        <table>
            <thead>
            <th colspan="4" style="text-align: left;background-color: lightsalmon">${semester.semesterText}</th>
        </thead>
        <thead>
        <th>ลำดับ</th>
        <th>รหัสวิชา</th>
        <th>ชื่อวิชา</th>
        <th>หน่วยกิต</th>
    </thead>
    <c:forEach items="${semester.registeredCourse}" var="subject" varStatus="vs">
        <tr>
            <td style="text-align: center">${vs.count}</td>
            <td>${subject.subjectId}</td>
            <td>${subject.title}</td>
            <td style="text-align: right; padding-right: 10px">${subject.credit}</td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="4" style="background: yellow"><h4>${isSessionCorrect}</h4></td>
    </tr>

</table>
<hr>
<div style="padding-left: 50px"><a href='CourseList'><button>Back</button></a></div>
</body>
</html>
