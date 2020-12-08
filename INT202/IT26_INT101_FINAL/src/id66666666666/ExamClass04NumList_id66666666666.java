/*
Student ID:
Student name: 
*/

package id66666666666;

public class ExamClass04NumList_id66666666666 {
    // 5 points
    private double[] data;
    private int count;

    public ExamClass04NumList_id66666666666(int size) {
        data = new double[size];
    }
    
    public void add(double num) {
        data[count++] = num;
    }
    
    public double sum() {
        double sum = 0;
        for (int i = 0; i < data.length; i++) {
            sum+=data[i];
        }
        return sum;
    }
    
    public double max() {
        double max = data[0];
        for (int i = 0; i < data.length; i++) {
            if (data[i] > max) {
                max = data[i];
            }
        }
        return max;
    }
    
    public double min() {
        double min = data[0];
        for (int i = 0; i < data.length; i++) {
            if (data[i] < min) {
                min = data[i];
            }
        }
        return min;
    }
    
    public double average() {
        double avg = 0;
        double sum = sum();
        avg = sum/data.length;
        return avg;
    }
}
