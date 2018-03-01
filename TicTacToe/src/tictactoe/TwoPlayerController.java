/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tictactoe;

import java.io.IOException;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;
import static tictactoe.OnePlayerController.one_player_mode;

/**
 * FXML Controller class
 *
 * @author aliaa
 */
public class TwoPlayerController implements Initializable {
    static String player1="";
    static String player2="";
    static boolean two_player_mode=false;
    private Stage stage;
    private Pane root;

    public TextField player1_name;
    private TextField player2_name;
    @FXML
    private Button start_button;

    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    

    @FXML
    private void startHandler(ActionEvent event) throws IOException {
//        player1=player1_name.getText();
//        player2=player2_name.getText();
//        if((player1.equals(""))||(player2.equals("")))
//        {
//            Alert alert = new Alert(Alert.AlertType.INFORMATION);
//            alert.setTitle("Information Dialog");
//            alert.setHeaderText(null);
//            alert.setContentText("Plaese Fill The Two Name :)");
//            alert.showAndWait(); 
//        } 
//        else 
//        {
            stage = (Stage) start_button.getScene().getWindow();
            root = (Pane) FXMLLoader.load(getClass().getResource("GameBoard.fxml"));
            Scene scene = new Scene(root);
            stage.setScene(scene);
            two_player_mode=true;
            one_player_mode=false;
            //online_mode=false;
     //   }
    }
}
