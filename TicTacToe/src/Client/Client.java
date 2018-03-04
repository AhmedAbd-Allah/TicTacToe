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
    Player player;
    Player player1;
    Player player2;
    boolean myTurn = true;
//    Game game = new Game(player1, player2);
    boolean auth = false;

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
//   public static Client getInstance(){
//       
//   }
    
    @Override
    public void run()
    {
        
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

//        if ("Login".equals(reqType)) {
//            System.out.println("login");
//            login(req);
//        } else if (req.getRequestType().equals("SignUp")) {
//            signUp(req);
//        } else if ("LogOut".equals(reqType)) {
//            logOut(req);
//        } else if ("GameTurn".equals(reqType)) {
//            gameTurn(req);
//        } else if ("RequestOpponent".equals(reqType)) {
//            requestGame(req);
//        } else if ("ReplyOpponent".equals(reqType)) {
//            respondGame(req);
//        }
    }
    
    public void signUp(String userName,String password){
         Request request = new Request("SignUp");
           request.setData("userName", userName);
           request.setData("password", password);           

           sendRequest(request, this);
           System.out.println(2);
           while(true)
            {
                Request req;
             try {

                req = (Request) inpObj.readObject();
                System.out.println(req.getRequestType());
                getResponse(req);
               break;
                
             } catch (IOException ex) {
                 Logger.getLogger(Client.class.getName()).log(Level.SEVERE, null, ex);
             } catch (ClassNotFoundException ex) {
                 Logger.getLogger(Client.class.getName()).log(Level.SEVERE, null, ex);
             }
                

            }

        }
    
    public void login(String userName, String password) {
        Request request = new Request("Login");
        request.setData("userName", userName);
        request.setData("password", password);
        System.out.println("before request");
        sendRequest(request, this);
        while (true) {
            Request req;
            try {
                req = (Request) inpObj.readObject();
                System.out.println(req.getRequestType());
                getResponse(req);
                break;

            } catch (IOException ex) {
                Logger.getLogger(Client.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Client.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }
    
    public void initateGame(){
        Request request = new Request("initiateGame");
      
        sendRequest(request, this);
        //wait for response
        while (true) {
            Request req;
            try {
                req = (Request) inpObj.readObject();
                System.out.println(req.getRequestType());
                getResponse(req);
                break;

            } catch (IOException ex) {
                Logger.getLogger(Client.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Client.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }

    private Request gameTurn() {
        Request req = new Request("GameTurn");

        req.setData("destination", "");
        req.setData("xpos", "0");
        req.setData("ypos", "0");

        return req;
    }

    public void prepareRequest() {
        //check which button clicked to set request type and send it to server
        //sendRequest(Request message,this);

    }

    public void sendRequest(Request message, Client th) {
        try {

            th.outObj.writeObject(message);
        } catch (IOException ex) {
            Logger.getLogger(Client.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private void getResponse(Request req) {
        System.out.println("response :"+req.getRequestType());
        if("Successful login".equals(req.getRequestType())
                ||"Successful signup".equals(req.getRequestType())){

            auth = true;
        } else if ("failed login".equals(req.getRequestType())
                || "failed signup".equals(req.getRequestType())) {
            auth = false;
            //
        }
        if("playersList".equals(req.getRequestType())){
            //
            System.out.println(req);
        }
    }

    public boolean isAuth() {
        return auth;
    }
   
    private String winner(Request reply)
    {
        String status;
        Request reply = new Request("gameStatus");
        
        String gameStatus = req.getData("status");
        if(gameStatus == "gameOn")
        {
            gameturn();
        }
        else if (gameStatus == "End")
        {
            if(req.containsKey("draw"))
            {
                status = draw;
            }
            else
            {   
                String myStatus = req.getData("winner");
                if(myStatus == "player1")
                {
                    status = player1;
                }
                
                else if(myStatus == "player2")
                {
                    status = player2;
                }
                
            }

        }
        return status;
    }   
         
    private Request requestgame(String opponent)
    {
        Request request = new Request("RequestOpponent");
        request.setData("destination", opponent);
        
        sendRequest(request, this);
        //return request;
    }
    
    private Request respondgame(String opponent, String answer)
    {
        Request request = new Request("ReplyOpponent");
        request.setData("destination", opponent);
        request.setData("reply", answer);
        
        
         sendRequest(request, this);
    }
    
    public void prepareRequest()
    {
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
}
