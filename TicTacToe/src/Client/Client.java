/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Client;

import Models.Player;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;
import client.Request;
import static controller.GameBoardController.grid;
import static controller.GameBoardController.gridboard;
import static controller.GameBoardController.imageo;
import static controller.GameBoardController.imagex;
import static controller.GameBoardController.lose;
import static controller.GameBoardController.loseName;
import static controller.GameBoardController.win;
import static controller.GameBoardController.winName;
import controller.LoginController;
import static controller.LoginController.root;
import controller.OnlinePlayerController;
import controller.PlayersListController;
import controller.SignupController;
import static controller.SignupController.signupRoot;
import javafx.application.Platform;
import javafx.collections.ObservableList;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.ButtonType;
import javafx.scene.image.ImageView;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.Pane;
import javafx.stage.Stage;
import static controller.TwoPlayerController.two_player_mode;
import static controller.OnlinePlayerController.online_mode;
import static controller.OnePlayerController.one_player_mode;
import static controller.PlayersListController.opened;
import static controller.TwoPlayerController.player1Name;
import javafx.animation.KeyFrame;
import javafx.animation.Timeline;
import javafx.util.Duration;

/**
 *
 * @author rania, Ahmed Abdallah
 */
public class Client implements Runnable {

    private boolean connected = false;
    Socket mySocket;
    Thread th;
    ObjectInputStream inpObj;
    ObjectOutputStream outObj;
    Request req;
    public Player player;
    Player player2 = new Player();
    Player player1 = new Player();
    boolean isInitiator = true;
    int flip = 0;
    boolean myTurn = true;

    Game game;//= new Game(player1, player2);

    boolean auth = false;
    public static Client client = new Client();

    public Client() {
        try {

            System.out.println("new client");

            //use hassan's pc as a server instead of local host
//            mySocket = new Socket("10.145.8.58", 5000);
            mySocket = new Socket("127.0.0.1", 5000);

            outObj = new ObjectOutputStream(mySocket.getOutputStream());
            inpObj = new ObjectInputStream(mySocket.getInputStream());
            System.out.println(mySocket);
            th = new Thread(this);
            th.start();
            connected = true;

        } catch (Exception ex) {
            try {
                mySocket.close();
                outObj.close();
                inpObj.close();
            } catch (Exception e) {
//                Logger.getLogger(Client.class.getName()).log(Level.SEVERE, null, ex);
            }
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
//                ex.printStackTrace();
            }
        }
    }

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

        } else if ("gameStatus".equals(reqType)) {
            //receive move and detect winner
            recieveMove(req);
        } else if ("UpdatePlayersList".equals(reqType)) {
            System.out.println("updateList");
            updatePlayersList(req);
        } else if ("ServerDown".equals(reqType)) {
            System.out.println("ServerDown");
            serverDown(req);
        }
    }

    public void login(String userName, String password) {
        if (connected) {
            Request request = new Request("Login");
            request.setData("userName", userName);
            request.setData("password", password);
            System.out.println("before request");
            sendRequest(request, this);
        } else {
            client = new Client();
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Server Down");
            alert.setHeaderText("Sorry");
            alert.setContentText("Server is Down now, Try to connect later");
            alert.showAndWait();

        }

    }

    private void loginResponse(Request req) {
        if ("Successful login".equals(req.getRequestType())) {
            String name = req.getData("userName");
            String pass = req.getData("password");
            String score = req.getData("score");
            int sco = Integer.parseInt(req.getData("score"));
            player = new Player(name,sco,pass);
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
        if (connected) {
            Request request = new Request("SignUp");
            request.setData("userName", userName);
            request.setData("password", password);
            player = new Player(userName, 0, password);
            sendRequest(request, this);
        } else {
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Server Down");
            alert.setHeaderText("Sorry");
            alert.setContentText("Server is Down now, Try to connect later");
            alert.showAndWait();
            client = new Client();
        }
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
        //  if ("playersList".equals(req.getRequestType())) {
        Platform.runLater(() -> {
            PlayersListController.players.clear();
            req.getMap().entrySet().forEach(set -> {
                if (!set.getKey().equals(this.player.getUsername())) {
                    int score = Integer.getInteger(set.getValue()) == null?0:Integer.getInteger(set.getValue());
                    Player p = new Player(set.getKey(), score, "x");
                    PlayersListController.players.add(p);
                }
            });
            try {
                if (OnlinePlayerController.homeStage != null && !opened) {
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
                }

            } catch (Exception e) {

            }

            System.out.println(OnlinePlayerController.homeRoot);
        });
        //   }
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
                    isInitiator = false;
                    flip = 1;
                    //invatation reciever who the one play first

                    this.player = player2;

                    myTurn = false;
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
                //set the other player
                player1.setUsername(req.getData("player1"));
                player2.setUsername(req.getData("player2"));
                game = new Game(player1, player2);

                System.out.println("Remote player" + player1.getUsername());
                OnlinePlayerController.homeRoot = (Pane) FXMLLoader.load(getClass().getResource("/views/GameBoard.fxml"));
                Scene homescene = new Scene(OnlinePlayerController.homeRoot);
                if (OnlinePlayerController.homeStage != null) {
                    OnlinePlayerController.homeStage.setScene(homescene);
                } else {
                    LoginController.stage.setScene(homescene);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        });
    }

    public void replay() {
        Platform.runLater(() -> {
            try {
                System.err.println("replay function ");

                OnlinePlayerController.homeRoot = (Pane) FXMLLoader.load(getClass().getResource("/views/GameBoard.fxml"));
                Scene homescene = new Scene(OnlinePlayerController.homeRoot);
                if (OnlinePlayerController.homeStage != null) {
                    OnlinePlayerController.homeStage.setScene(homescene);
                    //start draw
                    int[] board = reterveBoard();
                    System.out.println("before replay");
                    for (int i = 0; i < game.gridboard.length; i++) {
                        for (int j = 0; j < game.gridboard[i].length; j++) {
                            final int xpos = i;
                            final int ypos = j;
                            System.out.println("i :"+i+" j:"+j);
                            //wait
                            final KeyFrame kfi = new KeyFrame(Duration.seconds(i + 1), e -> drawMove(xpos, ypos));
                            final Timeline timeline = new Timeline(kfi);
                            Platform.runLater(timeline::play);
                        }
                    }

                } else {
                    LoginController.stage.setScene(homescene);
                }
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
                alert.setContentText(opponent + " is Busy now, try with someone else");
                alert.showAndWait();
            } catch (Exception e) {
                e.printStackTrace();
            }

        });
    }

    public void updatePlayersList(Request req) {
        System.out.println("updateList2");
        initiateHome();
    }

    public void serverDown(Request req) {
        Platform.runLater(() -> {
            try {
                Alert alert = new Alert(Alert.AlertType.INFORMATION);
                alert.setTitle("Server Down");
                alert.setHeaderText("Sorry");
                alert.setContentText("Server is Down now, Try to connect later");
                alert.showAndWait();
                client = new Client();
                OnlinePlayerController.homeRoot = (Pane) FXMLLoader.load(getClass().getResource("/views/ChooseMode.fxml"));
                Scene homescene = new Scene(OnlinePlayerController.homeRoot);
                if (OnlinePlayerController.homeStage != null) {
                    OnlinePlayerController.homeStage.setScene(homescene);
                } else {
                    LoginController.stage.setScene(homescene);
                }
                outObj.close();
                inpObj.close();
                mySocket.close();
            } catch (Exception e) {

            }
        });

    }

    public boolean isAuth() {
        return auth;
    }

    public void sendMove(Integer xpos, Integer ypos) {

        //draw on GUI the move if it's valid
        if (game.validateMove(xpos, ypos)) {
            gridboard[xpos][ypos] = flip;
            //game.myTurn = false;

            String result = game.play(xpos, ypos, flip);
            //set request
            Request move = new Request("move");
            //set move

            move.setPosition("xpos", xpos);
            move.setPosition("ypos", ypos);
            move.setData("result", result);

            if (result.equals("o")) {
                win.setVisible(true);
                lose.setVisible(false);
                winName.setText("You Are The Winner :)");
            } else if (result.equals("x")) {
                win.setVisible(true);
                lose.setVisible(false);
                winName.setText("        " + player2.getUsername() + " Is The Winner :)");
            } else if (result.equals("gameOn")) {

            } else {
                Platform.runLater(() -> {
                    Alert alert = new Alert(Alert.AlertType.INFORMATION);
                    alert.setTitle("Information Dialog");
                    alert.setHeaderText("Game Finished ");
                    alert.setContentText("Draw");
                    alert.showAndWait();
                });
            }
            System.out.println("play status " + result);
            Node s = getNodeByRowColumnIndex(xpos, ypos, grid);

            ImageView img;
            img = (ImageView) s;
            if (isInitiator) {
                img.setImage(imageo);
            } else {
                img.setImage(imagex);
            }

            //set destination player name
            if (this.player.getUsername() == player2.getUsername()) {
                move.setData("destination", player1.getUsername());
            } else {
                move.setData("destination", player2.getUsername());
            }
            //send request
//            System.out.println("sendMove");
            //disable board//
            sendRequest(move, this);
        }

    }

    private void recieveMove(Request move) {
        //   if(!myTurn){
        Integer xpos = move.getPosition("xpos");
        Integer ypos = move.getPosition("ypos");
        System.out.print("final result: " + move.getData("result"));


//     //draw on GUI the move
        Node s = getNodeByRowColumnIndex(xpos, ypos, grid);
        String result = move.getData("result");

        ImageView img;
        img = (ImageView) s;
        if (isInitiator) {
            img.setImage(imagex);
        } else {
            img.setImage(imageo);
        }
        game.gridboard[xpos][ypos] = flip == 1 ? 0 : 1;
        gridboard[xpos][ypos] = flip == 1 ? 0 : 1;
        game.myTurn = true;

        if (result.equals("o") || result.equals("x")) {
            loseName.setText("Sorry You Lost, Try Again :(");
            lose.setVisible(true);

            reterveBoard();
//            lose.setVisible(false);
        } else if (result.equals("draw")) {
            System.out.println("inside receve draw");
            Platform.runLater(() -> {
                Alert alert = new Alert(Alert.AlertType.INFORMATION);
                alert.setTitle("Information Dialog");
                alert.setHeaderText("Game Finished ");
                alert.setContentText("Draw");
                alert.showAndWait();

                reterveBoard();
            });
        }

        //enable board //
//        myTurn = true;
//        //send request of type GameTurn to client
//        Request gameTurn = new Request("GameTurn");
        //   }
    }

    private Node getNodeByRowColumnIndex(final int row, final int column, GridPane gridPane) {
        Node result = null;
        ObservableList<Node> childrens = gridPane.getChildren();

        for (Node node : childrens) {

            Integer colIndex = GridPane.getColumnIndex(node);
            Integer rowIndex = GridPane.getRowIndex(node);

            if (rowIndex == null) {
                rowIndex = 0;
            }
            if (colIndex == null) {
                colIndex = 0;
            }
            if (rowIndex == row && colIndex == column) {
                result = node;
                break;
            }
        }
        System.out.println("node result is: " + result);

        return result;
    }

    public void sendRequest(Request message, Client th) {

        try {

            th.outObj.writeObject(message);

        } catch (IOException ex) {
            Logger.getLogger(Client.class
                    .getName()).log(Level.SEVERE, null, ex);
        }

    }

    public int[] reterveBoard() {
        System.err.println("game grid board" + game.gridboard.length);
        int arr[] = new int[9];
        int k = 0;
        for (int i = 0; i < game.gridboard.length; i++) {
            for (int j = 0; j < game.gridboard[i].length; j++) {
                arr[k++] = game.gridboard[i][j];
                System.out.println(game.gridboard[i][j]);
            }
        }
        return arr;
    }

    public final void drawMove(int xpos, int ypos) {
        if (game.gridboard[xpos][ypos] != -1) {
            int move = game.gridboard[xpos][ypos];
            Node s = getNodeByRowColumnIndex(xpos, ypos, grid);

            ImageView img;
            img = (ImageView) s;
            if (move == 0) {
                img.setImage(imageo);
            } else {
                img.setImage(imagex);
            }
        }
    }

}
