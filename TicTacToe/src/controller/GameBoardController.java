/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Client.Client;
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
import javafx.collections.ObservableList;
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
import tictactoe.TwoPlayer;
//import tictactoe.TwoPlayer;
import static controller.OnePlayerController.one_player_mode;
////import static tictactoe.OnePlayerController.one_player;
import static controller.OnePlayerController.player;
import static controller.TwoPlayerController.player1Name;
import static controller.TwoPlayerController.player2Name;
import static controller.TwoPlayerController.two_player_mode;
//import static tictactoe.TwoPlayerController.two_player;

/**
 * FXML Controller class
 *
 * @author aliaa
 */
public class GameBoardController implements Initializable {
    BorderPane root;
    public static Image imagex;
    public static Image imageo;
    public static Node source;
    public static int gridboard[][]=new int[3][3];
    public static int counter=-1;
    OnePlayer p1;
    TwoPlayer p2;
    @FXML
    private GridPane gridborder;
    public static GridPane grid;
    @FXML
    private Label player2;
    @FXML
    private Label player1;
    //GridPane s;
    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        p1= new OnePlayer();
        p2 = new TwoPlayer();

        imagex = new Image(getClass().getResource("/img/x.jpg").toExternalForm());
        imageo = new Image(getClass().getResource("/img/o.png").toExternalForm());
        for(int i=0 ;i<gridboard.length;i++)
        {
            for(int j=0;j<gridboard.length;j++)
            {
                gridboard[i][j]=-1;
            }
        }
        if(one_player_mode==true){
             player1.setText(player);
             player2.setText("Computer");
              
        }
        else if(two_player_mode==true)
        {
             player1.setText(player1Name);
             player2.setText(player2Name);

        }
    }
    
    @FXML
    private void BorderMouseEvent(MouseEvent event) {
        grid=gridborder;
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
             p1.play(rowIndex,colIndex);
        }
        else if(two_player_mode)
        {
            p2.play(rowIndex,colIndex);
            //Client.Client.sendRequest(message, th);

        }
                //getNodeByRowColumnIndex(1, 1, gridborder);

    }
        }
