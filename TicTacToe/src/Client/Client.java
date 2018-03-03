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
 * @author rania
 */
public class Client implements Runnable{
    Socket mySocket;
    Thread th;
    ObjectInputStream inpObj;
    ObjectOutputStream outObj;
    Request req;
    Player player;
    Player player1;
    Player player2;
    Game game;
    boolean auth = false;
    
    
    public Client(){
        try {
                     System.out.println(new Request("Hnan"));

            mySocket = new Socket("127.0.0.1", 5000);
            outObj = new ObjectOutputStream(mySocket.getOutputStream());
            inpObj = new ObjectInputStream(mySocket.getInputStream());
            
                        System.out.println(mySocket);

            th = new Thread(this);
            th.start();

        } catch (IOException ex) {
            Logger.getLogger(Client.class.getName()).log(Level.SEVERE, null, ex);
        }
           
    }

    @Override
    public void run() {
        //only for receive
//         try{
//            System.out.println("running thread");
//            while(true)
//            {
//                Request req =(Request) inpObj.readObject();
//                System.out.println(req.getRequestType());
//                getResponse(req);
//            }
//        }
//        catch(Exception e)
//        {
//            e.printStackTrace();
//        }
    }
    
    public void signUp(String userName,String password){
         Request request = new Request("SignUp");
           request.setData("userName", userName);
           request.setData("password", password);           
           System.out.println(1);

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
    
    public void login(String userName,String password){
         Request request = new Request("Login");
           request.setData("userName", userName);
           request.setData("password", password);
           sendRequest(request, this);
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
    
    private Request gameTurn()
    {
        Request req = new Request("GameTurn");

        req.setData("destination", "");        
        req.setData("xpos", "0");
        req.setData("ypos", "0");
           
        return req;
    }
    
    
    public void prepareRequest(){
        //check which button clicked to set request type and send it to server
        //sendRequest(Request message,this);
        
    }
    public  void sendRequest(Request message,Client th){
        try {
            
            th.outObj.writeObject(message);
        } catch (IOException ex) {
            Logger.getLogger(Client.class.getName()).log(Level.SEVERE, null, ex);
        }

        
    }

    private void getResponse(Request req) {
        System.out.println("response :"+req.getRequestType());
        if("Successful login".equals(req.getRequestType())
                || "playersList".equals(req.getRequestType())
                ||"Successful signup".equals(req.getRequestType())){
            auth = true;
        }else if("failed login".equals(req.getRequestType())
                ||"failed signup".equals(req.getRequestType())){
            auth = false;
            //
        }
    }

    public boolean isAuth() {
        return auth;
    }
    
    private void sendMove(int xpos, int ypos)
    {
        Request move = new Request("Move");
        move.setPosition("xpos", xpos);
        move.setPosition("ypos", ypos);
        move.setData("destination", player2.getUsername());
        sendRequest(move,this);
    }
    
    private void recieveMove(Request move)
    {
        
    }

}
