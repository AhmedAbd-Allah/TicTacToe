/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package client;

import java.io.Serializable;
import Models.Player;
import java.util.HashMap;

/**
 *
 * @author MHassan
 */
public class Request implements Serializable {
    private String requestType;
    private HashMap<String, String>data;
    private HashMap<String, Player>players;

    public Request(String reqType) {
        this.requestType = reqType;
        this.data = new HashMap<>();
    }
    
    public String getRequestType()
    {
        return this.requestType;
    }
    
    public void setRequestType(String type)
    {
        this.requestType = type;
    }
    
    public String getData(String key)
    {
        if(data.containsKey(key))
        {
            return data.get(key);
        }
        return null;
    }
    
    public void setData(String key, String value)
    {
        data.put(key, value);
    }
    
    public Player getPlayer(String key)
    {
        if(players.containsKey(key))
        {
            return players.get(key);
        }
        return null;
    }
    
    public void setPlayer(String name, Player player)
    {
        players.put(name, player);
    }
}
