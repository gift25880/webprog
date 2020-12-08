/*
Student ID:
Student name: 
*/

package id66666666666;


public class ExamClass03_id66666666666 {
    // 5 points
    // 1. write a constructor
    // 2. a method called add to add people to the array
    // 3. a method called expand to expand people array more_n spaces
    
    private Person[] people;
    private int count;

    public ExamClass03_id66666666666(int size) {
        people = new Person[size];
    }
    
    public void add(Person p){
        people[count++] = p;
    }
    
    public void expand(int more_n){
        Person[] temp = new Person[people.length+more_n];
        System.arraycopy(people, 0, temp, 0, people.length);
        people = temp;
    }
}
