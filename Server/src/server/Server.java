package server;

import models.Database;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.sql.Connection;
import java.sql.ResultSet;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author MHassan
 */
        

public class Server {
//    ServerSocket server_socket;
    private int port_num;
    static ServerSocket server;
    static boolean running = false;
    public static Database db = new Database();
    
    Socket client;
    
    public Server(int portNum){
        this.port_num = portNum;
//        Database db = new Database();
//        ResultSet rs = db.getAllUsers();
//        try{
//            if(rs.next())    
//            {
//               System.out.println(rs.getString(2));
//
//            }
//
//        }catch(Exception e)
//        {
//            
//        }
        
    };
    
    public void startServer()
    {
        try
        {
            server = new ServerSocket(this.port_num);
            running = true;
            System.out.println(server);

            if (running)
            {
                startListening();
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
            
        }
    };
    
    public static void stopServer()
    {
        if(running)
        {
            running = false;
            try{server.close(); System.out.println("closed");System.out.println("after closed");}
            catch(Exception e){System.out.println("in exception"); e.printStackTrace();}
            
        }
    }
    
    private void startListening(){
        new Thread(()->{
            while(running){
                try{
                    client = server.accept();
                    System.out.println("accepted");
                    System.out.println(client);
                    new ClientThread(client);                
                }catch(IOException e){
                    e.printStackTrace();
                }
            }
        }).start();
}
}

