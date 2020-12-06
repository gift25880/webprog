package com.mycompany.finaleiei.model;
public class test {

    public static void main(String[] args) {
        Semester semester1 = new Semester(1);
        Subject s1 = CourseList.getSubject(1, "INT100");
// System.out.println(s1);
        Subject s2 = CourseList.getSubject(1, "INT102");
// System.out.println(s2);
        semester1.registerSubject(s1);
        semester1.registerSubject(s2);
// -----
        Semester semester2 = new Semester(2);
        s1 = CourseList.getSubject(2, "GEN111");
// System.out.println(s1);
        s2 = CourseList.getSubject(2, "LNG120");
// System.out.println(s2);
        semester2.registerSubject(s1);
        semester2.registerSubject(s2);
        CourseRegisteredHistory history = new CourseRegisteredHistory();
        history.addCourseRegistered(semester1);
        history.addCourseRegistered(semester2);
        for (Semester semester : history.getAllRegisteredCourses()) {
            System.out.println(semester.getSemesterText());
            for (Subject subject : semester.getRegisteredCourse()) {
                System.out.println("\t" + subject);
            }
            System.out.println("");
        }
    }
}
