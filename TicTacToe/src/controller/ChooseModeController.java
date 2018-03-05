/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static java.awt.SystemColor.window;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Hyperlink;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author aliaa
 */
public class ChooseModeController implements Initializable {
    private Stage stage;
    private Pane root;

    @FXML
    private Button one_player;
    @FXML
    private Button two_player;
    @FXML
    private Button online;
    @FXML
    private Button exit;


    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    


    @FXML
    private void onePlayerHandler(ActionEvent event) throws IOException {
        stage = (Stage) one_player.getScene().getWindow();
        root = (Pane) FXMLLoader.load(getClass().getResource("/views/OnePlayer.fxml"));
        Scene scene = new Scene(root);
        stage.setScene(scene);
    }

    @FXML
    private void twoPlayerHandler(ActionEvent event) throws IOException {
        stage = (Stage) one_player.getScene().getWindow();
        root = (Pane) FXMLLoader.load(getClass().getResource("/views/TwoPlayer.fxml"));
        Scene scene = new Scene(root);
        stage.setScene(scene);
    }

    @FXML
    private void onlinePlayerHandler(ActionEvent event) throws IOException {
        stage = (Stage) one_player.getScene().getWindow();
        root = (Pane) FXMLLoader.load(getClass().getResource("/views/Login.fxml"));
        Scene scene = new Scene(root);
        stage.setScene(scene);
    }

    @FXML
    private void exitHandler(ActionEvent event) {
        System.exit(1);
    }



    
}
