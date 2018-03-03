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
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author aliaa
 */
public class SignupController implements Initializable {
    Stage stage;
    Pane root;
    @FXML
    private Button signup;
    @FXML
    private TextField userName;
    @FXML
    private TextField password;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    

    @FXML
    private void signupHandler(ActionEvent event) throws IOException {
        stage = (Stage) signup.getScene().getWindow();
        root = (Pane) FXMLLoader.load(getClass().getResource("/views/Login.fxml"));
        Scene scene = new Scene(root);
        stage.setScene(scene);
    }
    
    @FXML
    private void signUp(){
           String userName = this.userName.getText();
           String password = this.password.getText();
           System.out.println(password);

          
           Client client = new Client();
           client.signUp(userName,password);
           
    }
    
}
