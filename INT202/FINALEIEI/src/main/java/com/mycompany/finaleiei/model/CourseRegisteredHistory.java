package com.mycompany.finaleiei.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class CourseRegisteredHistory {

    private Collection<Semester> semesters = new ArrayList<Semester>();

    public void addCourseRegistered(Semester sem) {
        Iterator<Semester> itr = semesters.iterator();
        while (itr.hasNext()) {
            Semester current = itr.next();
            if (current.getSemester() == sem.getSemester()) {
                current = sem;
                return;
            }
        }
            semesters.add(sem);
    }

    public Collection<Semester> getAllRegisteredCourses() {
        return semesters;
    }
}
