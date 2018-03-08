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
import static controller.OnlinePlayerController.homeStage;
import static controller.TwoPlayerController.player1Name;
import static controller.TwoPlayerController.player2Name;
import static controller.TwoPlayerController.two_player_mode;
import static controller.PlayersListController.opened;
import javafx.scene.Scene;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;
//import static tictactoe.TwoPlayerController.two_player;

/**
 * FXML Controller class
 *
 * @author aliaa
 */
public class GameBoardController implements Initializable {
    public static Pane root;
    public static Stage stage;
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
    public static Label pl2;
    @FXML
    private Label player1;
    public static Label pl1;
    @FXML
    private Pane winnerpane;
    public static Pane win;
    @FXML
    private Button close;
    @FXML
    private Label winnerName;
    public static Label winName;
    @FXML
    private Button newGame;
    @FXML
    private Pane loserpane;
    public static Pane lose;
    @FXML
    private Button close1;
    @FXML
    private Label loserName;
    public static Label loseName;
    @FXML
    private Button newGame1;
    @FXML
    private Button replay;
    public static Button rep;
    @FXML
    private Button replay1;
    public static Button rep1;
    @FXML
    private Button closeReplay;
    public static Button closereplay;
    //GridPane s;
    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        p1= new OnePlayer();
        p2 = new TwoPlayer();
        win=winnerpane;
        lose=loserpane;
        winName=winnerName;
        rep=replay;
        rep1=replay1;
        System.out.println(winName);
        loseName=loserName;
        grid=gridborder;
        pl1=player1;
        pl2=player2;
        closeReplay.setVisible(false);
        closereplay=closeReplay;
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
    private void BorderMouseEvent(MouseEvent event) throws IOException {
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
            System.out.println("two players mode");
           
        }
        else{
         if(gridboard[rowIndex][colIndex] == -1){
                
                //mark cell as busy cell regardless has which image
                Client client  = Client.getInstance();
                
                client.sendMove(rowIndex,colIndex);
           }
        }
    }

    @FXML
    private void closeHandler(ActionEvent event) throws IOException {
        if(one_player_mode||two_player_mode)
        {
            stage = (Stage) close.getScene().getWindow();

            root = (Pane) FXMLLoader.load(getClass().getResource("/views/ChooseMode.fxml"));
            Scene scene = new Scene(root);
            stage.setScene(scene);
        }
        else
        {
            homeStage = (Stage) close.getScene().getWindow();
            opened=false;
            Client client = Client.getInstance();
            client.initiateHome();
        }
    }
    
    @FXML
    private void replayHandler(ActionEvent event) throws IOException {
        
        Client client  = Client.getInstance();
        client.replay();
    }

    @FXML
    private void newGameHandler(ActionEvent event) throws IOException {
        if(one_player_mode||two_player_mode)
        {
            stage = (Stage) newGame.getScene().getWindow();
            root = (Pane) FXMLLoader.load(getClass().getResource("/views/GameBoard.fxml"));
            Scene scene = new Scene(root);
            stage.setScene(scene);
        }
        else
        {
            homeStage = (Stage) newGame.getScene().getWindow();
            opened=false;
            Client client = Client.getInstance();
            client.initiateHome();
        }
    }

//    private void backHandler(ActionEvent event) throws IOException {
//        stage = (Stage) newGame.getScene().getWindow();
//        if(one_player_mode||two_player_mode)
//        {         
//            root = (Pane) FXMLLoader.load(getClass().getResource("/views/ChooseMode.fxml"));
//        }
//        else
//        {
//            root = (Pane) FXMLLoader.load(getClass().getResource("/views/OnlinePlayer.fxml"));
//        }
//            Scene scene = new Scene(root);
//            stage.setScene(scene);
//    }
}
