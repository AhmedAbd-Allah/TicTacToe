/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

<<<<<<< HEAD
import Client.Client;
import client.Request;
=======
import java.io.IOException;
>>>>>>> e0f5cb6ce00361cf89868f149c025157d8f1291e
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author aliaa
 */
public class OnlinePlayerController implements Initializable {
    static boolean online_mode=false ;
    Stage stage;
    Pane root;
    @FXML
    private Button initiate;
    @FXML
    private Button join;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    

    @FXML

       

    private void intiateHandler(ActionEvent event) throws IOException {
         //send initateGame request to server
        Client client = new Client();
        client.initateGame();
        
        //move to the next scene
        stage = (Stage) initiate.getScene().getWindow();
        root = (Pane) FXMLLoader.load(getClass().getResource("/views/PlayersList.fxml"));
        Scene scene = new Scene(root);
        stage.setScene(scene);

    }

    @FXML
    private void joinHandler(ActionEvent event) {
    }
    
}
