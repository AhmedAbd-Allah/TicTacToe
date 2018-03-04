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



/**
 *
 * @author MHassan
 */
public class ClientThread implements Runnable
{
    private ObjectInputStream inpObj;
    private ObjectOutputStream outObj;
//    private DataInputStream input;
    private Player player1;
    private Player player2;
    private Request req;
    public Player player;
    private Game game;
    public static HashMap<String,ClientThread> onlinePlayers = new HashMap<String,ClientThread>();
    public static HashMap<String,Player> PlayersMap = new HashMap<String,Player>();
    public Thread th;
    
    public ClientThread(Socket s)
    {
//        player = new Player("mohamed",211,"jkknjk");
//        onlinePlayers.put("mohamed",this);
//        PlayersMap.put("mohamed",player);
//        syncPlayersList();
//        System.out.println(player);
        System.out.println("before starting 1");
        try
        {
            inpObj = new ObjectInputStream(s.getInputStream());
            outObj = new ObjectOutputStream(s.getOutputStream());
            th = new Thread(this);
            th.start();
            
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
    @Override
    public void run()
    {
        try
        {
            System.out.println("running thread");
            while(true)
            {
                Request req =(Request) inpObj.readObject();
                System.out.println(req.getRequestType());
                requestRedirection(req);
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
    private void requestRedirection(Request req)
    {
        String reqType = req.getRequestType();
        
        if("Login".equals(reqType))
        {
            System.out.println("login");
            login(req);
        }
        else if(req.getRequestType().equals("SignUp"))
        {
            signUp(req);
        }
        else if("LogOut".equals(reqType))
        {
            logOut(req);
        }
        else if("GameTurn".equals(reqType))
        {
           gameTurn(req);
        }
        else if("RequestOpponent".equals(reqType))
        {
            requestGame(req);
        }
        else if("ReplyOpponent".equals(reqType))
        {
            respondGame(req);
        }
        else if("initiateGame".equals(reqType))
        {
            initGame(req);
        }
        
    }
    
    private void login(Request req)
    {
        String userName = req.getData("userName");
        String password = req.getData("password");
        System.out.println(userName);
        System.out.println(password);
        
        if(db.authUser(userName,password))
        {
           try
           {
               ResultSet rs = db.getOneUser(userName);
               if(rs.next())
               {
                    int score = rs.getInt(4);
                    password = rs.getString(3);
                    player = new Player(userName,score,password);
                    onlinePlayers.put(userName, this);
                    PlayersMap.put(userName, player);
                    Request loginSuccess = new Request("Successful login");
                    sendRequest(loginSuccess, this);
                    sendToAll(loginSuccess);
                    syncPlayersList();
                    
               };
               
           }
           catch(Exception e)
           {
               e.printStackTrace();
           }
        }
        else
        {
            Request loginFail = new Request("failed login");
            sendRequest(loginFail, this);
        };
    }
    
    private void logOut(Request req)
    {
        String userName = req.getData("userName");
        if(onlinePlayers.containsKey(userName))
        {
            Request removedPlayer = new Request("removePlayer");
            removedPlayer.setData(userName,userName);
            onlinePlayers.remove(userName);
            PlayersMap.remove(userName);
//            syncPlayersList();
        }
    }
    
    private void signUp(Request req)
    {
        String userName = req.getData("userName");
        String password = req.getData("password");
        System.out.println(userName);
        System.out.println(password);
        
        Integer score = 0;

        player = new Player(userName,score,password);
        System.out.println(player);
        boolean check = db.insertUser(userName, password, score);
        System.out.println("checked is "+check);
        if(check)
        {

            onlinePlayers.put(userName, this);
            PlayersMap.put(userName,player);
            syncPlayersList();
//            Request signupSuccess = new Request("Successful signup");
//            sendRequest(signupSuccess, this);
//            Request AddedPlayer = new Request("addPlayer");
//            AddedPlayer.setplayer(userName, player);
//            this.sendToAll(AddedPlayer);

        }else{
             Request signupFailed = new Request("failed signup");
             sendRequest(signupFailed, this);

        }
    }
    
    private Request requestGame(Request recieved)
    {
        String dest = recieved.getData("destination");
        String src = this.player.getUsername();
        
        Request sendReq = new Request("RequestOpponent");
        sendReq.setData("source", src);
        return sendReq;
    }
    
    private Request respondGame(Request response)
    {
        String dest = response.getData("destination");
        String src = this.player.getUsername();
        String reply = response.getData("reply");
        
        Request replyReq = new Request("ReplyOpponent");
        replyReq.setData("source", src);
        replyReq.setData("reply", reply);
        
        if (reply.equals("accept"))
        {
            player1 = onlinePlayers.get(dest).player;
            player2 = this.player;
            game = new Game(player1,player2);
            onlinePlayers.get(dest).game = game;
        }
        return replyReq;
    }
    
    private void gameTurn(Request turn)
    {
        String dest = turn.getData("destination");
        String src = this.player.getUsername();
        ClientThread player2th = onlinePlayers.get(dest);
        int xpos = turn.getPosition("xpos");
        int ypos = turn.getPosition("ypos");
        Player result = game.play(xpos, ypos);
        Request reply = new Request("gameStatus");
        if(result == game.gameOn)
        {
            reply.setData("status", "gameOn");
            sendRequest(reply, this);
            sendRequest(reply, player2th);
        }
        else if(result == player1)
        {
            reply.setData("status", "End");
            reply.setPlayer("winner", player1);
            reply.setPlayer("loser", player2);
            game = null;
            sendRequest(reply, this);
            sendRequest(reply, player2th);
        }
        else if(result == game.player2)
        {
            reply.setData("status", "End");
            reply.setPlayer("winner", player2 );
            reply.setPlayer("loser", player1);
            game = null;
            sendRequest(reply, this);
            sendRequest(reply, player2th);
        }
        else if(result == game.draw)
        {
            reply.setData("status", "End");
            reply.setData("draw", "draw");
            game = null;
            sendRequest(reply, this);
            sendRequest(reply, player2th);
        }
        else
        {
            reply.setData("status", "invalidMove");
        }
        
    }
    
    private void initGame(Request req)
    {
        Request playersList = new Request("playersList");
        PlayersMap.entrySet().forEach((playerSet) -> {
            System.out.println("started");
            Player p = playerSet.getValue();
            String name = playerSet.getKey();
            int scoreInt = playerSet.getValue().getScore();
            String score = Integer.toString(scoreInt);
            System.out.println("player value: "+p);
            System.out.println("player name: "+name);
            playersList.setData(name,score);
            System.out.println("finished");

//            playersList.setPlayer(playerSet.getKey(), playerSet.getValue());
        });
        sendRequest(playersList, this);
        
    }
    
    public static void sendRequest(Request message,ClientThread th){
        try
        {
            th.outObj.writeObject(message);
        }
        catch(Exception ioex){
            //catch exception
        }
    }
    
    public static void sendToAll(Request broadcast)
    {
        try
        {
            onlinePlayers.entrySet().forEach((playerThread)->{
                
                sendRequest(broadcast,playerThread.getValue());
            });
           
        }
        catch(Exception ex){
            //catch exception
        }
    }

    public static void syncPlayersList()
    {
        Request playersList = new Request("playersList");
        System.out.println("before for each");
        PlayersMap.entrySet().forEach((playerSet) -> {
            System.out.println("started");
            Player p = playerSet.getValue();
            String name = playerSet.getKey();
            int scoreInt = playerSet.getValue().getScore();
            String score = Integer.toString(scoreInt);
            System.out.println("player value: "+p);
            System.out.println("player name: "+name);
            playersList.setData(name,score);
            System.out.println("finished");

//            playersList.setPlayer(playerSet.getKey(), playerSet.getValue());
        });
        System.out.println("finished iteration");
        sendToAll(playersList); 
    }
}

