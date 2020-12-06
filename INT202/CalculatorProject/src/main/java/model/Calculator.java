/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Windows-10
 */
public class Calculator {

    private double principal;
    private double interestRate;
    private int interestPeriod;
    private int numYear;

    public Calculator(double principal, double interestRate, int interestPeriod, int numYear) {
        this.principal = principal;
        this.interestRate = interestRate;
        this.interestPeriod = interestPeriod;
        this.numYear = numYear;
    }

    public double getPrincipal() {
        return principal;
    }

    public void setPrincipal(double principal) {
        this.principal = principal;
    }

    public double getInterestRate() {
        return interestRate;
    }

    public void setInterestRate(double interestRate) {
        this.interestRate = interestRate;
    }

    public int getInterestPeriod() {
        return interestPeriod;
    }

    public void setInterestPeriod(int interestPeriod) {
        this.interestPeriod = interestPeriod;
    }

    public int getNumYear() {
        return numYear;
    }

    public void setNumYear(int numYear) {
        this.numYear = numYear;
    }

    public double getFuturePrincipal() {
        return getFuturePrincipalYear(numYear);
    }

    public double getFuturePrincipalYear(int year) {
        return principal * Math.pow(1 + interestRate / (100 * interestPeriod), year * interestPeriod);
    }

    @Override
    public String toString() {
        return "Calculator{" + "principal=" + principal + ", interestRate=" + interestRate + ", interestPeriod=" + interestPeriod + ", numYear=" + numYear + ", futurePrincipal =" + getFuturePrincipal() + '}';
    }
}
