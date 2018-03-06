/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tictactoe;

import Client.Client;
import client.Request;
import java.io.IOException;
import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.Pane;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;

//import tictactoe.controller.*;
/**
 *
 * @author aliaa
 */
public class TicTacToe extends Application {

    @Override
    public void start(Stage primaryStage) throws IOException {
        try {
            primaryStage.setOnCloseRequest(t -> {
                                                    
                                                    String type = "LogOut";
                                                    Request message = new Request(type);
                                                    
                                                    Client.client.sendRequest(message,Client.client );
                                                    System.exit(0);
                                                }
                                          );
            Parent root = FXMLLoader.load(getClass().getResource("/views/ChooseMode.fxml"));
            Scene scene = new Scene(root, 600, 600);
            primaryStage.setTitle("Tic Tac Toe");
            primaryStage.setScene(scene);
            primaryStage.show();
        } catch (IOException e) {
        }

    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        launch(args);
    }

}
