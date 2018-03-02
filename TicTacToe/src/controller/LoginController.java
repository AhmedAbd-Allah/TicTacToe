/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Hyperlink;
import javafx.scene.control.TextField;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author aliaa
 */
public class LoginController implements Initializable {
    Stage stage;
    Pane root;
    @FXML
    private Button login;
    @FXML
    private Hyperlink signup;
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
    private void loginHandler(ActionEvent event) throws IOException {
        stage = (Stage) login.getScene().getWindow();
        root = (Pane) FXMLLoader.load(getClass().getResource("/views/OnlinePlayer.fxml"));
        Scene scene = new Scene(root);
        stage.setScene(scene);
    }

    @FXML
    private void signupHandler(ActionEvent event) throws IOException {
        stage = (Stage) signup.getScene().getWindow();
        root = (Pane) FXMLLoader.load(getClass().getResource("/views/Signup.fxml"));
        Scene scene = new Scene(root);
        stage.setScene(scene);
    }
    
}
