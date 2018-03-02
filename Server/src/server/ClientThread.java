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
import models.Player;
import static server.Server.db;



/**
 *
 * @author MHassan
 */
class ClientThread implements Runnable
{
    private ObjectInputStream inpObj;
    private ObjectOutputStream outObj;
//    private DataInputStream input;
    private Player player1;
    private Player player2;
    private Request req;
    private Player player;
    private Game game;
    public static HashMap<String,ClientThread> onlinePlayers = new HashMap<String,ClientThread>();
    public Thread th;
    
    public ClientThread(Socket s)
    {
        System.out.println("before starting 1");
        try
        {
//            input = new DataInputStream(s.getInputStream());
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
    }
    
    private void login(Request req)
    {
        String userName = req.getData("userName");
        String password = req.getData("password");
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
                    Request loginSuccess = new Request("Successful login");
                    sendRequest(loginSuccess, this);
                    syncPlayersList();
                    
               };
               
           }
           catch(Exception e)
           {
               System.out.println("ff");
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
            syncPlayersList();
        }
    }
    
    private void signUp(Request req)
    {
        String userName = req.getData("userName");
        String password = req.getData("password");
        Integer score = 0;

        player = new Player(userName,score,password);
        boolean check = db.insertUser(userName, password, score);
        if(check)
        {
            onlinePlayers.put(userName, this);
            syncPlayersList();
//            Request AddedPlayer = new Request("addPlayer");
//            AddedPlayer.setplayer(userName, player);
//            this.sendToAll(AddedPlayer);

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
        int xpos = Integer.parseInt(turn.getData("xpos"));
        int ypos = Integer.parseInt(turn.getData("ypos"));
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
        onlinePlayers.entrySet().forEach((set) -> {
            Player p = set.getValue().player;
//            playersList.setPlayer(p.getUsername(), p);
        });
        
        sendToAll(playersList);
    }
}

