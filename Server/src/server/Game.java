/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import Models.*;

/**
 *
 * @author MHassan
 */
public class Game {
    private Player player1;
    private Player player2;
    
    public Game(Player play1, Player play2)
    {
        this.player1 = play1;
        this.player2 = play2;
    }
}
