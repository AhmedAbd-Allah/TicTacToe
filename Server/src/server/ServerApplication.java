package server;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javafx.application.Application;
import static javafx.application.Application.launch;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;


/**
 *
 * @author MHassan
 */
public class ServerApplication extends Application {
    
    @Override
    public void start(Stage stage) throws Exception{
        FXMLLoader fxloader = new FXMLLoader();
        fxloader.setLocation(getClass().getResource("/views/ServerView.fxml"));
        Parent root = fxloader.load();
        
        Scene scene = new Scene(root);
        stage.setScene(scene);
        stage.show();
        
        stage.setOnCloseRequest(e -> {
            Server.stopServer();
        });
        
    }
    
    
    

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }
    
}
