package com.mycompany.finaleiei.model;

public class CourseList {

    private static Subject[][] subjects = {{new Subject("INT100", "Information Technology Fundamental", 3), new Subject("INT101", "Programming Fundamentals", 3), new Subject("INT102", "Web Technology", 1)},{new Subject("GEN111", "Man and Ethics of Living", 3),  new Subject("LNG120", "General English", 3)}};

//    public CourseList() {
//        subjects[0][0] = new Subject("INT100", "Information Technology Fundamental", 3);
//        subjects[1][0] = new Subject("GEN111", "Man and Ethics of Living", 3);
//        subjects[0][1] = new Subject("INT101", "Programming Fundamentals", 3);
//        subjects[0][2] = new Subject("INT102", "Web Technology", 1);
//        subjects[1][1] = new Subject("LNG120", "General English", 3);
//    }

    public static Subject getSubject(int semester, String subjectId) {
        for (Subject subject : subjects[semester - 1]) {
            if (subject.getSubjectId().equalsIgnoreCase(subjectId)) {
                return subject;
            }
        }
        return null;
    }
}
