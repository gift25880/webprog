/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package id66666666666;

/**
 *
 * @author Saraf
 */
public class TestExamClass04 {
    public static void main(String[] args) {
        ExamClass04NumList_id66666666666 e = new ExamClass04NumList_id66666666666(5);
        e.add(2);
        e.add(1);
        e.add(5);
        e.add(3);
        e.add(4);
        System.out.println("Sum: "+e.sum());
        System.out.println("Min: "+e.min());
        System.out.println("Max: "+e.max());
        System.out.println("Average: "+e.average());
    }
}
