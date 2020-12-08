/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Rectangle;

/**
 *
 * @author Saraf
 */
public class TestRectangle {
    public static void main(String[] args) {
        Rectangle r1 = new Rectangle(210, 3645);
        System.out.println("Rectangle 1");
        System.out.println("Width: "+r1.getWidth());
        System.out.println("Height: "+r1.getHeight());
        System.out.println("Area: "+r1.getArea());
        System.out.println("Perimeter: "+r1.getPerimeter());
        System.out.println("-------------------------");
        Rectangle r2 = new Rectangle(104, 140);
        System.out.println("Rectangle 2");
        System.out.println("Width: "+r2.getWidth());
        System.out.println("Height: "+r2.getHeight());
        System.out.println("Area: "+r2.getArea());
        System.out.println("Perimeter: "+r2.getPerimeter());
        System.out.println("-------------------------");
        Rectangle r3 = new Rectangle(94, 150);
        System.out.println("Rectangle 3");
        System.out.println("Width: "+r3.getWidth());
        System.out.println("Height: "+r3.getHeight());
        System.out.println("Area: "+r3.getArea());
        System.out.println("Perimeter: "+r3.getPerimeter());
        System.out.println("-------------------------");
    }
}
