package com.mycompany.finaleiei.model;

import java.util.ArrayList;
import java.util.List;

public class Semester {

    private final int semester;
    private List<Subject> subjects = new ArrayList<Subject>();

    public Semester(int semester) {
        this.semester = semester;
    }
    
    public int getSemester(){
        return semester;
    }

    public void registerSubject(Subject subject) {
        if (subject != null) {
            subjects.add(subject);
        }
    }
    
    public String getSemesterText(){
        return "Semester " + (this.semester%2 == 0 ? 2 : 1) + " / Year " + ((int)(Math.ceil(this.semester/2.0)));
    }
    
    public List<Subject> getRegisteredCourse(){
        return subjects;
    }
}
