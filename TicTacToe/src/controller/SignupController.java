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
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
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
        System.out.println("Handeler");
        //  stage = (Stage) signup.getScene().getWindow();
//        root = (Pane) FXMLLoader.load(getClass().getResource("/views/Login.fxml"));
//        Scene scene = new Scene(root);
//        stage.setScene(scene);
    }

    @FXML
    private void signUp() {
        System.out.println("Signup");

        String userName = this.userName.getText();
        String password = this.password.getText();

        Client client = Client.getInstance();
        client.signUp(userName, password);
        System.out.println("Auth :"+client.isAuth());

        if (client.isAuth()) {
            //  resource = "/views/OnlinePlayer.fxml";

            stage = (Stage) signup.getScene().getWindow();

            try {
                root = (Pane) FXMLLoader.load(getClass().getResource("/views/OnlinePlayer.fxml"));
                System.out.println("change scene");
            } catch (IOException ex) {
                Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
            }
            Scene scene = new Scene(root);
            stage.setScene(scene);

        } else {
            // @TODO
            // display alert with already exists username
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Information Dialog");
            alert.setHeaderText(null);
            alert.setContentText("User Name Is Already Exist");
            alert.showAndWait();
        }

    }

}
