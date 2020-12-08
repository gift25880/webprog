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
public class Rectangle {
    
    private double width;
    private double height;
    
    public Rectangle(double width, double height) {
        this.height = height;
        this.width = width;
    }

    public double getWidth() {
        return width;
    }

    public double getHeight() {
        return height;
    }

    public double getArea() {
        return this.height * this.width;
    }
    
    public double getPerimeter() {
        return 2*(this.height+this.width);
    }
    
 }
