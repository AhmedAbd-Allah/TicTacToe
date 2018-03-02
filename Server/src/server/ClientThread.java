/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import Models.*;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import static server.Server.db;

/**
 *
 * @author MHassan
 */
class ClientThread implements Runnable
{
    private ObjectInputStream inpObj;
    private ObjectOutputStream outObj;
    private DataInputStream dis;
    private Request req;
    private Player player;
    public static HashMap<String,ClientThread> onlinePlayers = new HashMap<String,ClientThread>();
    public Thread th;
    
    public ClientThread(Socket s)
    {
        System.out.print("before starting 1");
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
            System.out.print("running thread");
            while(true)
            {
                req =(Request)inpObj.readObject();
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
            this.sendToAll(removedPlayer);
            onlinePlayers.remove(userName);
            syncPlayersList();
        }
        else
        {
            //do nothing
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
            Request AddedPlayer = new Request("addPlayer");
            AddedPlayer.setplayer(userName, player);
            this.sendToAll(AddedPlayer);

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
            //new game
            //player1, player2
            //status = playing
            //new game
            
        }
        return replyReq;
    }
    
    private void gameTurn(Request req)
    {
//        String source = req.getData("userName");
//        String destination = req.getData("destination");
//        String choice= req.getData("choice");
//        String place= req.getData("place");
        
        //game logic
        
        //send data from source to destination
        
        
    }
    
//    private boolean requestOpponent(Request in)
//    {
//        String sender = player1.getUsername();
//        String reciever = req.getData("destination");
//        if(onlinePlayers.get(player2Name).equals(player2Name))
//        {
//            //send request to destination
//            Request out = new Request("request_Opponent");
//            out.setData("sender", sender);
//            sendRequest(out);
//
//        }
//        
//        
//    }
    
    public static void sendRequest(Request message,ClientThread th){
        try
        {
            th.outObj.writeObject(message);
        }
        catch(IOException ioex){
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
            playersList.setplayer(p.getUsername(), p);
        });
        
        sendToAll(playersList);
    }
}

