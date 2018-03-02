package controllers;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.net.ServerSocket;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.ToggleGroup;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import server.*;
/**
 *
 * @author MHassan
 */
public class ServerAppController implements Initializable {
    
    Server server;
    private final int PORT_NUM = 5000;
    @FXML private TableColumn userName;
    @FXML private TableColumn status;
    @FXML private TableColumn score;
    private boolean running = false;
//    @FXML private Button toggleServer;
    
//    @FXML private observableList<player>;
    
//    @FXML
//    public void startEndServer(ActionEvent event) {
//        try
//        {
//            if(!running)
//            {
//                System.out.println(running);
//                server = new Server(PORT_NUM);
//                System.out.println(server);
//                server.startServer();
//                System.out.println(running);
//                running = true;
//                System.out.println(running);
////                System.out.println(server);
//
//            }
//            else
//            {
//                server.stopServer();
//                running = false;
//                System.out.println(running);
//
//            }
//        }
//        catch(Exception e)
//        {
//            e.printStackTrace();
//        }       
//    }
    @FXML
    public void startServer(ActionEvent event) {
        try
        {
            if(!running)
            {
                server = new Server(PORT_NUM);
                System.out.println(server);
                server.startServer();
                running = true;
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
    @FXML
    public void endServer(ActionEvent event) {
        try
        {
            if(running)
            {
                System.out.println(server);
                server.stopServer();
                running = false;
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        System.out.println("You initialized me!");
    }    
    
}
