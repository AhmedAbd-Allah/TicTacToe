/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

//import models.Player;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import Models.Player;
import static server.Server.db;
import client.Request;

import models.Database;

import java.util.Map;
import server.Game;


/**
 *
 * @author MHassan
 */
public class ClientThread implements Runnable {

    private ObjectInputStream inpObj;
    private ObjectOutputStream outObj;
//    private DataInputStream input;
    private Player player1;
    private Player player2;
    private Request req;
    public Player player;
    private Game game;
    public static HashMap<String, ClientThread> onlinePlayers = new HashMap<String, ClientThread>();
    public static HashMap<String, Player> PlayersMap = new HashMap<String, Player>();
    public Thread th;

    public ClientThread(Socket s) {
        try {
            inpObj = new ObjectInputStream(s.getInputStream());
            outObj = new ObjectOutputStream(s.getOutputStream());
            th = new Thread(this);
            th.start();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void run() {
        try {
            while (true) {
                Request req = (Request) inpObj.readObject();
                requestRedirection(req);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void requestRedirection(Request req) {
        
        String reqType = req.getRequestType();
        System.out.println("reqType : "+reqType);
        if ("move".equals(reqType)) {
     //  } else if ("gameStatus".equals(reqType)) {
            System.out.println("before gameTurn");
            gameTurn(req);
        }else if ("Login".equals(reqType)) {
            System.out.println("login");
            login(req);
        } else if (req.getRequestType().equals("SignUp")) {
            signUp(req);
        } else if ("LogOut".equals(reqType)) {
            logOut(req);
        } else if ("RequestOpponent".equals(reqType)) {
            requestGame(req);
        } else if ("ReplyOpponent".equals(reqType)) {
            respondGame(req);
        } else if ("initiateHome".equals(reqType)) {
            initGame(req);
        } else if ("InvitationAccepted".equals(reqType)) {
            System.out.println("InvitationAccepted");
            startGame(req);
        } else if ("InvitationRejected".equals(reqType)) {
            stopGame(req);
        }

    }

    private void login(Request req) {
        String userName = req.getData("userName");
        String password = req.getData("password");
        System.out.println(userName);
        System.out.println(password);

        if (db.authUser(userName, password)) {
            try {
                ResultSet rs = db.getOneUser(userName);
                if (rs.next()) {
                    int score = rs.getInt(4);
                    password = rs.getString(3);
                    player = new Player(userName, score, password);
                    onlinePlayers.put(userName, this);
                    PlayersMap.put(userName, player);
                    Request loginSuccess = new Request("Successful login");
                    sendRequest(loginSuccess, this);
                    Request updatePlayersList = new Request("UpdatePlayersList");
                    sendToAll(updatePlayersList);
//                    syncPlayersList();

                };

            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            Request loginFail = new Request("failed login");
            sendRequest(loginFail, this);
        };
    }

    private void logOut(Request req) {
        String userName = req.getData("userName");
        if (onlinePlayers.containsKey(userName)) {
            Request removedPlayer = new Request("removePlayer");
            removedPlayer.setData(userName, userName);
            
            PlayersMap.remove(userName);
            ClientThread myth = onlinePlayers.get("userName");
            onlinePlayers.remove(userName);
            myth.killthread (this);
            
//            syncPlayersList();
        }
    }

    private void killthread (ClientThread thread)
    {
        thread.th.stop();
    }
    private void signUp(Request req) {
        String userName = req.getData("userName");
        String password = req.getData("password");
        System.out.println(userName);
        System.out.println(password);

        Integer score = 0;

        player = new Player(userName, score, password);
        System.out.println(player);
        boolean check = db.insertUser(userName, password, score);
        System.out.println("checked is " + check);
        if (check) {

            onlinePlayers.put(userName, this);
            PlayersMap.put(userName, player);
//            syncPlayersList();
            Request signupSuccess = new Request("Successful signup");
            sendRequest(signupSuccess, this);
//            Request AddedPlayer = new Request("addPlayer");
//            AddedPlayer.setplayer(userName, player);
//            this.sendToAll(AddedPlayer);

        } else {
            Request signupFailed = new Request("failed signup");
            sendRequest(signupFailed, this);

        }
    }

    private void requestGame(Request recieved) {
        String dest = recieved.getData("destination");
        String src = player.getUsername();
        System.out.println("Source: " + src + " Destination: " + dest);
        ClientThread opponent = onlinePlayers.get(dest);
        Request sendReq = new Request("RequestGame");
        sendReq.setData("source", src);
        sendRequest(sendReq, opponent);
    }

    private Request respondGame(Request response) {
        String dest = response.getData("destination");
        String src = this.player.getUsername();
        String reply = response.getData("reply");

        Request replyReq = new Request("ReplyOpponent");
        replyReq.setData("source", src);
        replyReq.setData("reply", reply);

        if (reply.equals("accept")) {
            player1 = onlinePlayers.get(dest).player;
            player2 = this.player;
            game = new Game(player1, player2);
            onlinePlayers.get(dest).game = game;

            int player1_id = player1.getId();
            int player2_id = player2.getId();
            Database mydata = new Database();
            mydata.createGame(player1_id, player2_id); 



        }
        return replyReq;
    }

    private void gameTurn(Request turn) {
               System.out.println("gameTurn");

        String dest = turn.getData("destination");
        String src = this.player.getUsername();
        ClientThread player2th = onlinePlayers.get(dest);
        Integer xpos = turn.getPosition("xpos");
        Integer ypos = turn.getPosition("ypos");
        
        String winnerName = game.play(xpos, ypos);
        Request reply = new Request("gameStatus");
        if (winnerName == null) {
            reply.setData("status", "gameOn");

        } else if (winnerName.equals(player1.getUsername())) {
            reply.setData("status", "End");
            reply.setPlayer("winner", player1);
            reply.setPlayer("loser", player2);
            game = null;
            
        } else if (winnerName.equals(player2.getUsername()))  {
            reply.setData("status", "End");
            reply.setPlayer("winner", player2);
            reply.setPlayer("loser", player1);
            game = null;

        } else if (winnerName.equals("draw")) {
            reply.setData("status", "End");
            reply.setData("draw", "draw");
            game = null;

        } else {
            reply.setData("status", "invalidMove");
        }
        reply.setPosition("xpos", xpos);        
        reply.setPosition("ypos", ypos);
       

         //sendRequest(reply, this);
         sendRequest(reply, player2th);

    }

    private void initGame(Request req) {
        System.out.println("hello from init");
        Request playersList = new Request("playersList");
        PlayersMap.entrySet().forEach((playerSet) -> {
            String name1 = playerSet.getKey();
            String name2 = this.player.getUsername();
            if (!name1.equals(name2)) {
                System.out.println(name1 + " not equals " + name2);
                Player p = playerSet.getValue();
                String name = playerSet.getKey();
                int scoreInt = playerSet.getValue().getScore();
                String score = Integer.toString(scoreInt);
                playersList.setData(name, score);
            } else {
                System.out.println(name1 + " equals " + name2);
            }
        });
        sendRequest(playersList, this);

    }

    private void startGame(Request req) {
        System.out.println("hello from start game");
        String dest = req.getData("destination");
        String src = this.player.getUsername();
        Request startGame = new Request("startGame");
       
        //master
        startGame.setData("player1", dest);
        
        //player2
        startGame.setData("player2", src);
        ClientThread player1Th = onlinePlayers.get(dest);
        
        player1 = onlinePlayers.get(dest).player;
        player2 = this.player;
        game = new Game(player1, player2);
        onlinePlayers.get(dest).game = game;
        
        sendRequest(startGame, this);
        sendRequest(startGame, player1Th);
        PlayersMap.remove(src);
        PlayersMap.remove(dest);
        Request newList = new Request("UpdatePlayersList");
        sendToAll(newList);
    }
    
    private void showOnlinePlayers()
    {
        for (Map.Entry<String, ClientThread> entry : onlinePlayers.entrySet()) {
            String key = entry.getKey();
            ClientThread value = entry.getValue();
             System.out.println(key + " : "+value);
            
        }
    }
    

    private void stopGame(Request req) {
        System.out.println("hello from stop game");
        String dest = req.getData("destination");
        String src = this.player.getUsername();
        Request startGame = new Request("stopGame");
        startGame.setData("player1", src);
//        startGame.setData("player2", src);
        ClientThread player1Th = onlinePlayers.get(dest);
//        player1 = onlinePlayers.get(dest).player;
//        player2 = this.player;
//        game = new Game(player1, player2);
//        onlinePlayers.get(dest).game = game;
//        sendRequest(startGame, this);
        sendRequest(startGame, player1Th);
    }

    public static void sendRequest(Request message, ClientThread th) {
        try {
            th.outObj.writeObject(message);
        } catch (Exception ioex) {
            //catch exception
        }
    }

    public static void sendToAll(Request broadcast) {
        try {
            onlinePlayers.entrySet().forEach((playerThread) -> {

                sendRequest(broadcast, playerThread.getValue());
            });

        } catch (Exception ex) {
            //catch exception
        }
    }

    public static void syncPlayersList() {
        Request playersList = new Request("playersList");
//        System.out.println("before for each");
        PlayersMap.entrySet().forEach((playerSet) -> {
//            System.out.println("started");
            Player p = playerSet.getValue();
            String name = playerSet.getKey();
            int scoreInt = playerSet.getValue().getScore();
            String score = Integer.toString(scoreInt);
//            System.out.println("player value: " + p);
//            System.out.println("player name: " + name);
            playersList.setData(name, score);
//            System.out.println("finished");

//            playersList.setPlayer(playerSet.getKey(), playerSet.getValue());
        });
//        System.out.println("finished iteration");
        sendToAll(playersList);
    }
}
