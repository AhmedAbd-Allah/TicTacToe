/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Client;

import Models.Player;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintStream;
import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;
import client.Request;
import controller.LoginController;
import static controller.LoginController.root;
import static controller.LoginController.stage;
import controller.OnlinePlayerController;
import controller.PlayersListController;
import controller.SignupController;
import static controller.SignupController.signupRoot;
import static controller.SignupController.signupStage;
import javafx.application.Platform;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.scene.image.Image;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;

/**
 *
 * @author rania, Ahmed Abdallah
 */
public class Client implements Runnable {

    Socket mySocket;
    Thread th;
    ObjectInputStream inpObj;
    ObjectOutputStream outObj;
    Request req;
    public Player player;
    Player player1;
    Player player2;
    boolean myTurn = true;
//    Game game = new Game(player1, player2);
    boolean auth = false;
    private static Client client = new Client();

    public Client() {
        try {
            System.out.println(new Request("Hnan"));
            mySocket = new Socket("127.0.0.1", 5000);
            outObj = new ObjectOutputStream(mySocket.getOutputStream());
            inpObj = new ObjectInputStream(mySocket.getInputStream());
            System.out.println(mySocket);
//            startListening();
            th = new Thread(this);
            th.start();

        } catch (IOException ex) {
            Logger.getLogger(Client.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static Client getInstance() {
        return client;
    }

    @Override
    public void run() {
        while (true) {
            try {
                Request message = (Request) inpObj.readObject();
                requestRedirection(message);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }

//    private void startListening() {
//        new Thread(() -> {
//            while (true) {
//                try {
//                    Request message = (Request) inpObj.readObject();
//                    requestRedirection(message);
//                } catch (Exception ex) {
//                    ex.printStackTrace();
//                    break;
//                }
//            }
//            try {
//                mySocket.close();
//                outObj.close();
//                inpObj.close();
//            } catch (IOException ex) {
//            }
//        }).start();
//    }
    private void requestRedirection(Request req) {
        String reqType = req.getRequestType();
        System.out.println("before condition: " + reqType);
        System.out.println("hello " + reqType);
        if ("Successful login".equals(reqType)) {
            System.out.println("after condition: " + reqType);
            loginResponse(req);
        } else if (req.getRequestType().equals("failed login")) {
            loginResponse(req);
//            signUp(req);
        } else if ("Successful signup".equals(req.getRequestType())) {
            System.out.println("in condition: " + reqType);
            signUpResponse(req);
        } else if ("failed signup".equals(req.getRequestType())) {
            System.out.println("in condition: " + reqType);
            signUpResponse(req);
        } else if ("playersList".equals(reqType)) {
            System.out.println("initiate home redirection fnc");
            initiateHomeResponse(req);
        } else if ("RequestGame".equals(reqType)) {
            System.out.println(reqType);
            requestGame(req);
        } else if ("startGame".equals(reqType)) {
            startGame(req);
        } else if ("stopGame".equals(reqType)) {
            stopGame(req);
        }
    }

    public void login(String userName, String password) {
        Request request = new Request("Login");
        request.setData("userName", userName);
        request.setData("password", password);
        player = new Player(userName, 0, password);
        System.out.println("before request");
        sendRequest(request, this);
    }

    private void loginResponse(Request req) {
        if ("Successful login".equals(req.getRequestType())) {
            Platform.runLater(() -> {
                try {
                    LoginController.root = (Pane) FXMLLoader.load(getClass().getResource("/views/OnlinePlayer.fxml"));
                    System.out.println("loaded: " + root);
                    Scene scene = new Scene(root);
                    LoginController.stage.setScene(scene);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            });
        } else {
            Platform.runLater(() -> {
                Alert alert = new Alert(Alert.AlertType.INFORMATION);
                alert.setTitle("Information Dialog");
                alert.setHeaderText("Invalid Data");
                alert.setContentText("Invalid User Name Or Password");
                alert.showAndWait();
            });
        }
    }

    public void signUp(String userName, String password) {
        Request request = new Request("SignUp");
        request.setData("userName", userName);
        request.setData("password", password);
        player = new Player(userName, 0, password);
        sendRequest(request, this);
    }

    private void signUpResponse(Request req) {
        System.out.println("sign up");
        if ("Successful signup".equals(req.getRequestType())) {
            Platform.runLater(() -> {
                try {
                    Alert alert = new Alert(Alert.AlertType.INFORMATION);
                    alert.setTitle("Information Dialog");
                    alert.setHeaderText("Congratualtions");
                    alert.setContentText("Sign up was completed succefully, please login now");
                    alert.showAndWait();
                    SignupController.signupRoot = (Pane) FXMLLoader.load(getClass().getResource("/views/OnlinePlayer.fxml"));
                    Scene signup = new Scene(signupRoot);
                    SignupController.signupStage.setScene(signup);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            });
        } else {
            Platform.runLater(() -> {
                Alert alert = new Alert(Alert.AlertType.INFORMATION);
                alert.setTitle("Sorry");
                alert.setHeaderText("Sign up failed");
                alert.setContentText("Username already exists");
                alert.showAndWait();
            });
        }
    }

    public void initiateHome() {
        Request request = new Request("initiateHome");
        System.out.println("initiate home fnc");
        sendRequest(request, this);
    }

    public void initiateHomeResponse(Request req) {
        if ("playersList".equals(req.getRequestType())) {
            Platform.runLater(() -> {
                PlayersListController.players.clear();
                req.getMap().entrySet().forEach(set -> {
                    if (!set.getKey().equals(this.player.getUsername())) {
                        int score = Integer.getInteger(set.getValue()) == null ? 0 : 1;
                        Player p = new Player(set.getKey(), score, "x");
                        PlayersListController.players.add(p);
                    }
                });
                try {
                    OnlinePlayerController.homeRoot = (Pane) FXMLLoader.load(getClass().getResource("/views/PlayersList.fxml"));
                    Scene homescene = new Scene(OnlinePlayerController.homeRoot);
                    OnlinePlayerController.homeStage.setScene(homescene);
                    PlayersListController.tableView.setItems(PlayersListController.players);
                    PlayersListController.tableView.getSelectionModel().selectedItemProperty().addListener((e, x, player) -> {
                        Player p = (Player) player;
                        String name = p.getUsername();
                        System.out.println(name);
                        Request opponent = new Request("RequestOpponent");
                        opponent.setData("destination", name);
                        sendRequest(opponent, this);
                        System.out.println(opponent.getRequestType());
                        System.out.println(p.getUsername());
                    });
                } catch (Exception e) {
                    e.printStackTrace();
                }

                System.out.println(OnlinePlayerController.homeRoot);
            });
        }
    }

    public void requestGame(Request req) {
        if (req.getRequestType().equals("RequestGame")) {
            System.out.println(req.getRequestType());
            String src = req.getData("source");
            Platform.runLater(() -> {
                Alert alert = new Alert(Alert.AlertType.CONFIRMATION, src + " wants to play with you", ButtonType.NO, ButtonType.YES);
                Request invitationReply;
                if (alert.showAndWait().get() == ButtonType.YES) {
                    System.out.println("accepted");
                    invitationReply = new Request("InvitationAccepted");
                    invitationReply.setData("destination", src);
                    sendRequest(invitationReply, this);
                } else {
                    System.out.println("rejected");
                    invitationReply = new Request("InvitationRejected");
                    invitationReply.setData("destination", src);
                    sendRequest(invitationReply, this);
                }
            });

//        } catch (Exception ex) {
//            Logger.getLogger(Client.class.getName()).log(Level.SEVERE, null, ex);
//    }
        }
    }

    public void startGame(Request req) {
        Platform.runLater(() -> {
            try {
                System.out.println("start Game new fnc");
                OnlinePlayerController.homeRoot = (Pane) FXMLLoader.load(getClass().getResource("/views/GameBoard.fxml"));
                Scene homescene = new Scene(OnlinePlayerController.homeRoot);
                OnlinePlayerController.homeStage.setScene(homescene);
            } catch (Exception e) {
                e.printStackTrace();
            }

        });
    }

    public void stopGame(Request req) {
        Platform.runLater(() -> {
            try {
                String opponent = req.getData("player1");
                Alert alert = new Alert(Alert.AlertType.INFORMATION);
                alert.setTitle("Reply to Game Invitation");
                alert.setHeaderText("Sorry");
                alert.setContentText(opponent+" is Busy now, try with someone else");
                alert.showAndWait();
            } catch (Exception e) {
                e.printStackTrace();
            }

        });
    }

//    private Request gameTurn() {
//        Request req = new Request("GameTurn");
//
//        req.setData("destination", "");
//        req.setData("xpos", "0");
//        req.setData("ypos", "0");
//
//        return req;
//    }
//    private Request gameTurn() {
//        Request req = new Request("GameTurn");
//
//        req.setData("destination", "");
//        req.setData("xpos", "0");
//        req.setData("ypos", "0");
//
//        return req;
//    }
//    public void prepareRequest() {
//        //check which button clicked to set request type and send it to server
//        //sendRequest(Request message,this);
//
//    }
    public void sendRequest(Request message, Client th) {
        try {

            th.outObj.writeObject(message);

        } catch (IOException ex) {
            Logger.getLogger(Client.class
                    .getName()).log(Level.SEVERE, null, ex);
        }

    }

//    private void getResponse(Request req) {
//        System.out.println("response :" + req.getRequestType());
//        if ("Successful login".equals(req.getRequestType())
//                || "playersList".equals(req.getRequestType())
//                || "Successful signup".equals(req.getRequestType())) {
//
//            auth = true;
//        } else if ("failed login".equals(req.getRequestType())
//                || "failed signup".equals(req.getRequestType())) {
//            auth = false;
//            //
//        } else if ("playersList".equals(req.getRequestType())) {
//            //
//            System.out.println(req);
//        }
//    }
    public boolean isAuth() {
        return auth;
    }
}

//    private String winner(Request reply)
//    {
//        String status;
//        Request reply = new Request("gameStatus");
//        
//        String gameStatus = req.getData("status");
//        if(gameStatus == "gameOn")
//        {
//            gameturn();
//        }
//        else if (gameStatus == "End")
//        {
//            if(req.containsKey("draw"))
//            {
//                status = draw;
//            }
//            else
//            {   
//                String myStatus = req.getData("winner");
//                if(myStatus == "player1")
//                {
//                    status = player1;
//                }
//                
//                else if(myStatus == "player2")
//                {
//                    status = player2;
//                }
//                
//            }
//
//        }
//        return status;
//    }   
//    private void respondgame(String opponent, String answer) {
//        Request request = new Request("ReplyOpponent");
//        request.setData("destination", opponent);
//        request.setData("reply", answer);
//
//        sendRequest(request, this);
//    }
//    public void prepareRequest() {
//    private void requestgame(String opponent)
//    {
//        Request request = new Request("RequestOpponent");
//        request.setData("destination", opponent);
//        
//        sendRequest(request, this);
//        //return request;
//        return null;
//    }
//    
//    private void respondgame(String opponent, String answer)
//    {
//        Request request = new Request("ReplyOpponent");
//        request.setData("destination", opponent);
//        request.setData("reply", answer);
//        
//        
//         sendRequest(request, this);
//        return null;
//    }
//game is created in the accept method
//    private void sendMove(int xpos, int ypos) {
//
//        if (myTurn) {
//            if (game.validateMove(xpos, ypos)) {
//                game.play(xpos, ypos);
//                Request move = new Request("Move");
//                move.setPosition("xpos", xpos);
//                move.setPosition("ypos", ypos);
//                move.setData("destination", player2.getUsername());
//                sendRequest(move, this);
//                myTurn = false;
//            } else {
//                // not a valid move
//                //alert choose another cell
//            }
//
//        } else {
//            //Not my turn
//            //alert wait for your opponent
//        }
//    }
//    private void recieveMove(Request move) {
//        int xpos = move.getPosition("xpos");
//        int ypos = move.getPosition("ypos");
//        game.play(xpos, ypos);
//        myTurn = true;
//        ///draw on GUI the move
//    }
//    
//    private void gameturn() {
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
//    }
//}
