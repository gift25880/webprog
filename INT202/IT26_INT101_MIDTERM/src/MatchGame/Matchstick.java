/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MatchGame;

/**
 *
 * @author Saraf
 */
public class Matchstick {
    private int matchsticks;
    
    public Matchstick(int initMatches) {
        this.matchsticks = initMatches;
    }
    
    public void takeMatches(int numMatches) {
        this.matchsticks -= numMatches;
    }
    
    public boolean isValidMove(int numMatches) {
        return (numMatches >= 1 && numMatches <= 3 && numMatches <= this.matchsticks);
    }
    
    public boolean isGameOver() {
        return (this.matchsticks == 0);
    }
}
