/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Client.Client;
import client.Request;
import java.io.IOException;

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

    public static boolean online_mode = false;
    public static Stage homeStage;
    public static Pane homeRoot;
    @FXML
    private Button initiate;
    @FXML
    private Button back;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
//        Client client  = Client.getInstance();
//        client.handleInvitation();
    }

    @FXML
    private void intiateHandler(ActionEvent event) throws IOException {
        online_mode=true;
        //send initateGame request to server
        homeStage = (Stage) initiate.getScene().getWindow();
        Client client = Client.getInstance();
        client.initiateHome();

        //move to the next scene
//        homeRoot = (Pane) FXMLLoader.load(getClass().getResource("/views/PlayersList.fxml"));
//        Scene scene = new Scene(homeRoot);
//        homeStage.setScene(scene);
    }

    @FXML
    private void backHandler(ActionEvent event) {
    }

}
