/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ShippingCostCalculator;

/**
 *
 * @author Saraf
 */
public class ShippingCostCalculator {
    
    private double weight;
    private double width;
    private double length;
    private double height;
    private int costCompareByWeight;
    private int costCompareBySize;
    
    public ShippingCostCalculator(double weight, double width, double length, double height) {
        this.weight = weight;
        this.width = width;
        this.length = length;
        this.height = height;
        this.costCompareBySize = 0;
        this.costCompareByWeight = 0;
    }
    
    public int costCompareByWeight() {
        if (weight > 0 && weight <= 5) {
            this.costCompareByWeight = 85;
        } else if (weight > 5 && weight <= 10) {
            this.costCompareByWeight = 100;
        } else if (weight > 10 && weight <= 15) {
            this.costCompareByWeight = 140;
        } else if (weight > 15 && weight <= 20) {
            this.costCompareByWeight = 185;
        } else {
            this.costCompareByWeight = -1;
        }
        return this.costCompareByWeight;
    }
    
    public int costCompareBySize() {
        double size = width + length + height;
        if (size > 0 && size <= 60) {
            this.costCompareBySize = 85;
        } else if (size > 60 && size <= 90) {
            this.costCompareBySize = 100;
        } else if (size > 90 && size <= 120) {
            this.costCompareBySize = 140;
        } else if (size > 120 && size <= 150) {
            this.costCompareBySize = 185;
        } else {
            this.costCompareBySize = -1;
        }
        return this.costCompareBySize;
    }
    
    public int totalCost() {
        if (this.costCompareBySize == -1 || this.costCompareByWeight == -1) {
            return -1;
        } else if (this.costCompareBySize > this.costCompareByWeight) {
            return this.costCompareBySize;
        } else {
            return this.costCompareByWeight;
        }
    }
}
