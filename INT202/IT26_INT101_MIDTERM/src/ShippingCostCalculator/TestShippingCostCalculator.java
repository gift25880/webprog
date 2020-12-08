/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ShippingCostCalculator;

import java.util.Scanner;

/**
 *
 * @author Saraf
 */
public class TestShippingCostCalculator {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num;
        do {
            System.out.println("Menu");
            System.out.println("1. Calculate Shipping Cost");
            System.out.println("0. Exit");
            System.out.print("Select number to progress: ");
            num = sc.nextInt();
            switch (num) {
                case 0:
                    System.exit(0);
                    break;
                case 1:
                    double weight;
                    double width;
                    double length;
                    double height;
                    System.out.print("weight: ");
                    weight = sc.nextDouble();
                    System.out.print("width 1: ");
                    width = sc.nextDouble();
                    System.out.print("width 2: ");
                    length = sc.nextDouble();
                    System.out.print("height: ");
                    height = sc.nextDouble();
                    ShippingCostCalculator s1 = new ShippingCostCalculator(weight, width, length, height);
                    System.out.println("cost by weight : " + s1.costCompareByWeight() + "   cost by size: " + s1.costCompareBySize());
                    System.out.println("cost : " + s1.totalCost());
                    break;
                default:
                    System.out.println("Enter 0 or 1 ONLY!");
            }
        } while (num != 1 || num != 2);
        

    }
}
