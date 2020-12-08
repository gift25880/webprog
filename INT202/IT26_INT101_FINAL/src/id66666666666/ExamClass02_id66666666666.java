/*
Student ID:
Student name: 
*/

package id66666666666;

public class ExamClass02_id66666666666 {
    // write toString method to return string of all elements in the array
    // 3 points

    private int[] nums;

    public ExamClass02_id66666666666() {
        this.nums = new int[10];
        int n1 = (int) (Math.random() * 100);
        int n2 = (int) (Math.random() * 100);
        this.nums[0] = n1;
        this.nums[1] = n2;
        for (int i = 2; i < nums.length - 1; i++) {
            this.nums[i] = somMethod(nums[i - 1], nums[i - 2]);
        }
        nums[9] = (n1 + n2) % 10;
    }

    public int somMethod(int n1, int n2) {
        return n1 + n2;
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        for (int i = 0; i < nums.length; i++) {
            str.append(nums[i]);
            str.append("\n");
        }
        return str.toString();
    }
    
    

}
