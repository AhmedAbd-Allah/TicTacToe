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
/*import Connect.Connect;
*/
public class Database
{
    private static DBConnect connection = new DBConnect();
    Statement stmt;
    Connection con;
    String queryString;
    ResultSet rs;
	



public ResultSet getAllUsers()
	{
		String users="";
		try	
		{
		System.out.println("selectAll");
                    con = connection.Connect_to();
		stmt = con.createStatement() ;
		queryString = new String("select * from user");
		rs = stmt.executeQuery(queryString) ;
		/*while(rs.next())
		{
		
			users = rs.getString(1)+" " +rs.getString(2)+" " +rs.getString(3)+" " +rs.getString(4);
		}
*/
		}
		catch(SQLException ex)
				{
					ex.printStackTrace();
				}
		
		return rs;
				
	}

public ResultSet getOneUser(String username)
	{ 
//		String user="";
		try
		{
		con = connection.Connect_to();
		stmt = con.createStatement() ;
		queryString = new String("select * from user where user_name = 'username'");
		rs = stmt.executeQuery(queryString) ;
//		user = rs.getString(1)+" " +rs.getString(2)+" " +rs.getString(3)+" " +rs.getString(4);
		}
		catch(SQLException ex)
				{
					ex.printStackTrace();
				}
		return rs;
	}

public boolean authUser(String username, String userpassword)
	{ boolean check=false;
		try
		{
		con = connection.Connect_to();
		stmt = con.createStatement() ;
		queryString = new String("select * from user where user_name = 'username' and password = 'userpassword'");
		rs = stmt.executeQuery(queryString);
		if(rs.next())
		{
			check = true;
		}

		else
		{
			check = false;
		}

	}
		catch(SQLException ex)
				{
					ex.printStackTrace();
				}

		return check;
	}

public String gameMoves(int user1ID, int user2ID, int gameID)
{
String moves="";
 try
	{
		con = connection.Connect_to();
		stmt = con.createStatement() ;
		queryString = new String("select moves from game where user1_id = user1ID and user2_id = user2ID and game_id = gameID ");
		rs = stmt.executeQuery(queryString) ;
		moves = rs.getString(5);
	}
	catch(SQLException ex)
				{
					ex.printStackTrace();
				}
	return moves;
}


public String getWinner(int user1ID, int user2ID, int gameID)
{	
	String winner="";
	try
	{
		con = connection.Connect_to();
		stmt = con.createStatement() ;
		queryString = new String("select winner_id from game where user1_id = user1ID and user2_id = user2ID and game_id = gameID ");
		rs = stmt.executeQuery(queryString) ;
		winner = rs.getString(6);
	}
	catch(SQLException ex)
				{
					ex.printStackTrace();
				}
		return winner;
}


public String getUserGames(int userID)
{ String games="";
	try
	{
		con = connection.Connect_to();
		stmt = con.createStatement() ;
		queryString = new String("select * from game where user1_id = 'userID'");
		rs = stmt.executeQuery(queryString) ;
		games = rs.getString(2);
	}
	catch(SQLException ex)
				{
					ex.printStackTrace();
				}
	return games;
}

public boolean insertUser(String userName,String password,int score)
{
    try
	{   
		con = connection.Connect_to();
		stmt = con.createStatement() ;
		queryString = new String("insert into user values(null,'password','score')");
		int exec = stmt.executeUpdate(queryString);
                if(exec != 0)
                {
                    return true;
                }
                else return false;
	}
	catch(SQLException ex)
	{
            ex.printStackTrace();
	}
	return false;
}






//public static void main(String args[])
//		{
//			Database d = new Database();
//			System.out.println(d.getAllUsers());
//		}
}