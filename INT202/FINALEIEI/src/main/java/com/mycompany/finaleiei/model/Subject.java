
package com.mycompany.finaleiei.model;

public class Subject {
    private String subjectId;
    private String title;
    private int credit;

    public Subject(String subjectId, String title, int credit) {
        this.subjectId = subjectId;
        this.title = title;
        this.credit = credit;
    }

    public String getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(String subjectId) {
        this.subjectId = subjectId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getCredit() {
        return credit;
    }

    public void setCredit(int credit) {
        this.credit = credit;
    }
    
    @Override
    public String toString(){
        return String.format("%s %-40s %.1f", this.subjectId, this.title, (double) this.credit);
    }
}
