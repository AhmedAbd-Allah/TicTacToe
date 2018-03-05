/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tictactoe;

import javafx.scene.control.Alert;
import javafx.scene.image.ImageView;
import static controller.GameBoardController.*;
//import static tictactoe.controller.GameBoardController;
/**
 *
 * @author aliaa
 */
public class TwoPlayer {
    
        public void play(int row,int col)
    {
        if(gridboard[row][col]==-1)
        {
            ImageView m1 = (ImageView)source;
            counter++;
            if(counter%2==0)
            {
                gridboard[row][col]=0;
                m1.setImage(imageo);

            }
            else
            {
                gridboard[row][col]=1;
                m1.setImage(imagex);


            }
        }
        else
        {}
        checkWinner();
    }
    public void checkWinner()
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
//            Alert alert = new Alert(Alert.AlertType.INFORMATION);
//            alert.setTitle("Information Dialog");
//            alert.setHeaderText(null);
//            alert.setContentText("Player o Win :)");
//            alert.showAndWait(); 
//            System.exit(1);
            win.setVisible(true);
        }
        if((gridboard[0][0]==1&&gridboard[0][1]==1&&gridboard[0][2]==1)
          ||(gridboard[1][0]==1&&gridboard[1][1]==1&&gridboard[1][2]==1 )   
          ||(gridboard[2][0]==1&&gridboard[2][1]==1&&gridboard[2][2]==1 )
          ||(gridboard[0][0]==1&&gridboard[1][0]==1&&gridboard[2][0]==1 )   
          ||(gridboard[0][1]==1&&gridboard[1][1]==1&&gridboard[2][1]==1 )   
          ||(gridboard[0][2]==1&&gridboard[1][2]==1&&gridboard[2][2]==1 )   
          ||(gridboard[0][0]==1&&gridboard[1][1]==1&&gridboard[2][2]==1 )   
          ||(gridboard[0][2]==1&&gridboard[1][1]==1&&gridboard[2][0]==1 )   
            )
        {
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Information Dialog");
            alert.setHeaderText(null);
            alert.setContentText("Player x Win :)");
            alert.showAndWait(); 
            System.exit(1);
        }
        
    }


}
