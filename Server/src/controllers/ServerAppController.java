package controllers;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import Models.Player;
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

    Server serverSoc;
    private final int PORT_NUM = 5000;
    @FXML
    private TableView<Player> table;
    @FXML
    private TableColumn userName;
    @FXML
    private TableColumn status;
    @FXML
    private TableColumn score;
    @FXML
    private ObservableList<Player> data;
    private boolean running = false;
    public static ObservableList<Player> players = FXCollections.observableArrayList();
    public static TableView tableView;

    @FXML
    public void startEndServer(ActionEvent event) {
        try {
            if (!running) {
                System.out.println(running);
                serverSoc = new Server(PORT_NUM);
                System.out.println(serverSoc);
                serverSoc.startServer();
                System.out.println(running);
                running = true;
                System.out.println(running);
            } else {
                running = false;
                System.out.println(running);
                serverSoc.stopServer();
            }
        } catch (Exception e) {
//            e.printStackTrace();
        }
    }

    @Override
    public void initialize(URL url, ResourceBundle rb) {
        System.out.println("You initialized me!");
        tableView = table;
        userName.setCellValueFactory(
                new PropertyValueFactory<>("username"));
        score.setCellValueFactory(
                new PropertyValueFactory<>("score")
        );
//        status.setCellValueFactory(
//            new PropertyValueFactory<>("status")
//        );
        data = FXCollections.observableArrayList();
    }
}
