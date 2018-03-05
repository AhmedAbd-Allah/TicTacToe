/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Client.Client;
import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
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
    public static Stage stage;
    public static Pane root;
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
//        root = (Pane) FXMLLoader.load(getClass().getResource("/views/OnlinePlayer.fxml"));
//        Scene scene = new Scene(root);
//        stage.setScene(scene);
    }

    @FXML
    private void signupHandler(ActionEvent event) throws IOException {
        stage = (Stage) signup.getScene().getWindow();
        root = (Pane) FXMLLoader.load(getClass().getResource("/views/Signup.fxml"));
        Scene scene = new Scene(root);
        stage.setScene(scene);
    }
    @FXML
    private void login(){
           String userName = this.userName.getText();
           String password = this.password.getText();
           System.out.println(password);

          
           
           Client client  = Client.getInstance();
           //String resource="/views/login.fxml";
           client.login(userName,password);
          

//        if(client.isAuth()){
//                 //resource = "/views/OnlinePlayer.fxml";
//             
//            stage = (Stage) login.getScene().getWindow();
//            try {
//                root = (Pane) FXMLLoader.load(getClass().getResource("/views/OnlinePlayer.fxml"));
//            } catch (IOException ex) {
//                Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
//            }
//                Scene scene = new Scene(root);
//                stage.setScene(scene);
//        }else{    
//            //@TODO
//            //display alert with Wrong username or password
//            Alert alert = new Alert(Alert.AlertType.INFORMATION);
//            alert.setTitle("Information Dialog");
//            alert.setHeaderText("Invalid Data");
//            alert.setContentText("Invalid User Name Or Password");
//            alert.showAndWait(); 
//        }
                  
    }
}
