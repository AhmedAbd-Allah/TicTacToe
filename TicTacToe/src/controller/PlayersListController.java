/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Client.Client;
import Models.Player;
import client.Request;
import static controller.LoginController.root;
import static controller.LoginController.stage;
import java.io.IOException;
//import static com.sun.xml.internal.fastinfoset.alphabet.BuiltInRestrictedAlphabets.table;
import java.net.URL;
import java.util.ResourceBundle;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

/**
 * FXML Controller class
 *
 * @author aliaa
 */
public class PlayersListController implements Initializable {

    @FXML
    private Button back;
    @FXML
    private TableView table;
    @FXML
    private TableColumn name;
    @FXML
    private TableColumn score;
    public static ObservableList<Player> players = FXCollections.observableArrayList();
    public static TableView tableView;
    public static boolean opened = false;
    /**
     * Initializes the controller class.
     */
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        opened = true;
        tableView = table;
        name.setCellValueFactory(
                new PropertyValueFactory<>("username"));
        score.setCellValueFactory(
                new PropertyValueFactory<>("score")
        );

//        Client client = Client.getInstance();
//        Request list = client.initiateHomeResponse();
//        System.out.println(list.getMap());
//        if ("playersList".equals(list.getRequestType())) {
//            players.clear();
//            list.getMap().entrySet().forEach(set -> {
//                if (!set.getKey().equals(client.player.getUsername())) {
//                    int score = Integer.getInteger(set.getValue()) == null ? 0 : 1;
//                    Player p = new Player(set.getKey(), score, "x");
//                    players.add(p);
//                }
//                });
//            table.setItems(players);
//            table.getSelectionModel().selectedItemProperty().addListener((e, x, player) -> {
//                Player p = (Player) player;
//                String name = p.getUsername();
//                System.out.println(name);
//                Request opponent = new Request("RequestOpponent");
//                opponent.setData("destination", name);
//                client.sendRequest(opponent, client);
////                client.handleInvitation();
//                System.out.println(p.getUsername());
//            });
//        }

    }

    @FXML
    private void backAction(ActionEvent event) throws IOException {
            opened =false;
            stage = (Stage) back.getScene().getWindow();
            root = (Pane) FXMLLoader.load(getClass().getResource("/views/OnlinePlayer.fxml"));
            Scene scene = new Scene(root);
            stage.setScene(scene);
        
    }

}
