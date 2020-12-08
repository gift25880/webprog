/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CheckPrime;

/**
 *
 * @author Saraf
 */
public class CheckPrime {
    public static boolean isPrime(int num) {
        for (int i = 2; i <= num/2; i++) {
            return num%i != 0;
        }
        return false;
    }
    
    public static void main(String[] args) {
        int num = 11;
        System.out.println(num+" is "+(isPrime(num) ? "": "not ") + "a prime number");
    }
}
