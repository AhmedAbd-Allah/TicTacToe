/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import java.util.Arrays;
import client.Request;
import Models.Player;

/**
 *
 * @author MHassan
 */
public class Game {

    public Player player1;
    public Player player2;
    //public static Player gameOn = null;
    //public Player draw =new Player("draw");
    private static int move = 0;
    private int[][] gridboard = new int[3][3];

    public Game(Player play1, Player play2) {
        this.player1 = play1;
        this.player2 = play2;
        for (int[] array : gridboard) {
            Arrays.fill(array, -1);
        }
    }
    
    public String play(int xpos, int ypos)
    {
        if(gridboard[xpos][ypos]== -1)
        {
            gridboard[xpos][ypos] = move%2 == 0 ? 0:1;
            String p = checkWinner();
            if(move <= 8)
            {
                move++;
               
                return null;
            }
            else
            {
                return "draw";
            }
            
        }
        return null;
        
    }
    
    public String checkWinner()
    {
        if((gridboard[0][0]==0&&gridboard[0][1]==0&&gridboard[0][2]==0)
          ||(gridboard[1][0]==0&&gridboard[1][1]==0&&gridboard[1][2]==0 )   
          ||(gridboard[2][0]==0&&gridboard[2][1]==0&&gridboard[2][2]==0 )
          ||(gridboard[0][0]==0&&gridboard[1][0]==0&&gridboard[2][0]==0 )   
          ||(gridboard[0][1]==0&&gridboard[1][1]==0&&gridboard[2][1]==0 )   
          ||(gridboard[0][2]==0&&gridboard[1][2]==0&&gridboard[2][2]==0 )   
          ||(gridboard[0][0]==0&&gridboard[1][1]==0&&gridboard[2][2]==0 )   
          ||(gridboard[0][2]==0&&gridboard[1][1]==0&&gridboard[2][0]==0 )   
          )
        {

            System.out.println("player o win");
            return player1.getUsername();
        }
        if ((gridboard[0][0] == 1 && gridboard[0][1] == 1 && gridboard[0][2] == 1)
                || (gridboard[1][0] == 1 && gridboard[1][1] == 1 && gridboard[1][2] == 1)
                || (gridboard[2][0] == 1 && gridboard[2][1] == 1 && gridboard[2][2] == 1)
                || (gridboard[0][0] == 1 && gridboard[1][0] == 1 && gridboard[2][0] == 1)
                || (gridboard[0][1] == 1 && gridboard[1][1] == 1 && gridboard[2][1] == 1)
                || (gridboard[0][2] == 1 && gridboard[1][2] == 1 && gridboard[2][2] == 1)
                || (gridboard[0][0] == 1 && gridboard[1][1] == 1 && gridboard[2][2] == 1)
                || (gridboard[0][2] == 1 && gridboard[1][1] == 1 && gridboard[2][0] == 1)) {
            System.out.println("player x win");
            return player2.getUsername();
        }
        return "gameOn";
    }

}
