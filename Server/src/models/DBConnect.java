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
                    String url = "jdbc:mysql://localhost:3306/xoo";
<<<<<<< HEAD
                    String username = "rania";
                    String password = "rania2017";
=======
                    String username = "aliaa";
                    String password = "aliaa123";
>>>>>>> 9ede4b9d72b79f13a2006ce10e01080d9d191d6a

                    con = DriverManager.getConnection(url, username, password);
		}

		catch(SQLException ex)
		{
			ex.printStackTrace();
		}

		return con;
	}

}