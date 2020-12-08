<%@page import="sit.int202.exam.model.CourseRegisteredHistory"%>
<%
    String isSessionCorrect = "Session is NOT correct";
    CourseRegisteredHistory history = (CourseRegisteredHistory) session.getAttribute("registerHistory");
    if (history != null) {
        if (history.getRegisteredCoursebySemeter(request.getParameter("semester")) != null) {
            isSessionCorrect = "Session is correct";
        }
    }
    request.setAttribute("isSessionCorrect", isSessionCorrect);
%>
