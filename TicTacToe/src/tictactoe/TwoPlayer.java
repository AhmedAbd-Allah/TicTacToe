/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tictactoe;

import javafx.scene.control.Alert;
import javafx.scene.image.ImageView;
import static controller.GameBoardController.*;
import static controller.OnePlayerController.player;
import static controller.TwoPlayerController.player1Name;
import static controller.TwoPlayerController.player2Name;
import java.io.IOException;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;
//import static tictactoe.controller.GameBoardController;
/**
 *
 * @author aliaa
 */
public class TwoPlayer {
    private int move =0;
    
        public void play(int row,int col) throws IOException
    {
        move++;
        System.out.println("current move = "+move);
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
        {
            
        }
        checkWinner();
    }
    public void checkWinner() throws IOException
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
            win.setVisible(true);
            lose.setVisible(false);
            rep.setVisible(false);
           winName.setText("        "+player1Name+" Is The Winner :)");
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
            win.setVisible(true);
            lose.setVisible(false);
            rep.setVisible(false);
            winName.setText("       "+player2Name+" Is The Winner :)");
        }
        if(move == 9){
            System.out.println("Tieeeeeeeee");
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Information Dialog");
            alert.setHeaderText("Game Finished ");
            alert.setContentText("Draw");
            alert.showAndWait(); 
            stage = (Stage) pl1.getScene().getWindow();
            root = (Pane) FXMLLoader.load(getClass().getResource("/views/TwoPlayer.fxml"));
            Scene scene = new Scene(root);
            stage.setScene(scene);
        }
        
    }


}
