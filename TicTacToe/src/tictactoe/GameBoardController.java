/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tictactoe;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;
import java.util.HashSet;
import java.util.ResourceBundle;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.IntStream;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.image.ImageView;
import javafx.scene.image.Image;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.GridPane;
import tictactoe.OnePlayer;
//import tictactoe.TwoPlayer;
import static tictactoe.OnePlayerController.one_player_mode;
////import static tictactoe.OnePlayerController.one_player;
import static tictactoe.OnePlayerController.player;
import static tictactoe.TwoPlayerController.player1;
import static tictactoe.TwoPlayerController.player2;
import static tictactoe.TwoPlayerController.two_player_mode;
//import static tictactoe.TwoPlayerController.two_player;

/**
 * FXML Controller class
 *
 * @author aliaa
 */
public class GameBoardController implements Initializable {
    BorderPane root;
    static Image imagex;
    static Image imageo;
    static Node source;
    static int gridboard[][]=new int[3][3];
    static int counter=-1;
    OnePlayer p1;
    TwoPlayer p2;
    @FXML
    private GridPane gridborder;
    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        p1= new OnePlayer();
        p2 = new TwoPlayer();
        imagex = new Image(getClass().getResource("img/x.png").toExternalForm());
        imageo = new Image(getClass().getResource("img/o.jpeg").toExternalForm());
        for(int i=0 ;i<gridboard.length;i++)
        {
            for(int j=0;j<gridboard.length;j++)
            {
                gridboard[i][j]=-1;
            }
        }
    }
    
    @FXML
    private void BorderMouseEvent(MouseEvent event) {
        source = (Node)event.getTarget();
        Integer colIndex = GridPane.getColumnIndex(source);
        Integer rowIndex = GridPane.getRowIndex(source);
        if(rowIndex==null)
        {
            rowIndex=0;
        }
        if(colIndex==null)
        {
            colIndex=0;
        }
        System.out.println("col Index:"+colIndex);
        System.out.println("row Index:"+rowIndex);
        if(one_player_mode){
            // p1.play(rowIndex,colIndex);
        }
        else if(two_player_mode)
        {
            p2.play(rowIndex,colIndex);

        }
    }
}
