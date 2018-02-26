/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tictactoe;

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
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author aliaa
 */
public class ChooseModeController implements Initializable {
    private Stage stage;
    private BorderPane root;

    @FXML
    private Button one_player;
    @FXML
    private Button new_game;
    @FXML
    private Button quit;
    @FXML
    private Button two_player;
    @FXML
    private Button online;


    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    

    @FXML
    private void setAction(ActionEvent event) throws IOException {
        stage = (Stage) one_player.getScene().getWindow();
        BorderPane root;
        root = (BorderPane) FXMLLoader.load(getClass().getResource("OnePlayer.fxml"));
        Scene scene = new Scene(root);
        stage.setScene(scene);
    }

    @FXML
    private void onePlayerHandler(ActionEvent event) throws IOException {
        stage = (Stage) one_player.getScene().getWindow();
        root = (BorderPane) FXMLLoader.load(getClass().getResource("OnePlayer.fxml"));
        Scene scene = new Scene(root);
        stage.setScene(scene);
    }

    @FXML
    private void twoPlayerHandler(ActionEvent event) throws IOException {
        stage = (Stage) one_player.getScene().getWindow();
        root = (BorderPane) FXMLLoader.load(getClass().getResource("TwoPlayer.fxml"));
        Scene scene = new Scene(root);
        stage.setScene(scene);
    }

    @FXML
    private void onlinePlayerHandler(ActionEvent event) {
    }
    
}
