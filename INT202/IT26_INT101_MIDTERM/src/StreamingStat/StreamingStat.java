/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StreamingStat;

/**
 *
 * @author Saraf
 */
public class StreamingStat {
    
    private String name;
    private double mean;
    private double max;
    private double min;
    private double lastValue;
    private int n;

    public StreamingStat(String name) {
        this.name = name;
        this.max = 0;
        this.mean = 0;
        this.lastValue = 0;
        this.n = 0;
        this.min = Double.POSITIVE_INFINITY;
    }
    
    public void setValue(double num) {
        this.lastValue = num;
        this.n++;
        updateMax();
        updateMin();
        updateAverage();
    }
    
    public void updateMax() {
        if (this.lastValue > this.max) {
            this.max = this.lastValue;
        }
    }
    
    public void updateMin() {
        if (this.lastValue < this.min) {
            this.min = this.lastValue;
        }
    }
    
    public void updateAverage() {
        this.mean = ((this.mean*(this.n - 1))+this.lastValue)/this.n;
    }

    @Override
    public String toString() {
        return "StreamimgStat{" + "name=" + name + ", mean=" + mean + ", max=" + max + ", min=" + min + ", lastValue=" + lastValue + ", n=" + n + '}';
    }
    
    
}
