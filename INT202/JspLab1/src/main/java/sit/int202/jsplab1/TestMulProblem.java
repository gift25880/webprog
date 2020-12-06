/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int202.jsplab1;

import java.util.Random;
/**
 *
 * @author INT202
 */
public class TestMulProblem {
    public static void main(String[] args) {
        Random rnd = new Random();
        for (int i = 0; i < 10; i++) {
            int num1 = rnd.nextInt(11)+1;
            int num2 = rnd.nextInt(11)+1;
            System.out.println((i+1)+") "+num1+" x "+num2+" = ______");
        }
    }
}
