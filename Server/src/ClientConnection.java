
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.InetAddress;
import java.net.Socket;
import server.Request;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author MHassan
 */
public class ClientConnection implements Runnable {
    Socket clientSocket;
    private static InetAddress ip;
    private static int port_num;
    private ObjectOutputStream Objout;
    private ObjectInputStream ObjIn;
    Request req;
    Thread th;
    
    public ClientConnection(InetAddress Ip , int port) {
        
        this.ip = Ip;
        this.port_num = port;
        
        try
        {
            clientSocket = new Socket(this.ip,this.port_num);
            ObjIn = new ObjectInputStream(clientSocket.getInputStream());
            Objout = new ObjectOutputStream(clientSocket.getOutputStream());
            th = new Thread(this);

        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        th.start();
    }
    
    @Override
    public void run()
    {
        try
        {
            while (true)
            {
                req = (Request)ObjIn.readObject();
//                new RequestHandler(req);
            }
        }
        catch(Exception e)
        {
              e.printStackTrace();
        }
    }
    
}
