/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MatchGame;

import java.util.Scanner;

/**
 *
 * @author Saraf
 */
public class MatchGame {

    public static void main(String[] args) {
        int numMatches = 0;
        int player = 0;
        Matchstick game = new Matchstick(20);
        Scanner input = new Scanner(System.in);
        do {
            System.out.print("Player " + player + " >> ");
            numMatches = input.nextInt();
            if (game.isValidMove(numMatches)) {
                game.takeMatches(numMatches);
                player = (player + 1) % 2;
            }
        } while (!game.isGameOver());
        System.out.println("Player " + ((player + 1) % 2) + " wins");
    }
}
