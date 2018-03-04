/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author AhmedAbdallah
 */
import java.sql.* ;
import java.util.Properties;


public class DBConnect
{
        public DBConnect()
                {
                   System.out.println("DBConnect");
                }
	private Connection con;
	public Connection Connect_to()
	{
		try
		{
                    System.out.println("DBConnect trying");
//                    String url = "jdbc:mysql://localhost:3306/xoo";
//                    String username = "mhassan";
//                    String password = "iti38";
                    String url = "jdbc:mysql://localhost:3306/xoo";
                    String username = "mhassan";
                    String password = "iti38";
                    con = DriverManager.getConnection(url, username, password);
		}

		catch(SQLException ex)
		{
			ex.printStackTrace();
		}

		return con;
	}

}