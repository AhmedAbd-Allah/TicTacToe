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
import com.sun.deploy.util.StringUtils;
import java.sql.*;
import java.util.ArrayList;
import java.util.Properties;

/*import Connect.Connect;
 */
public class Database {

    private static DBConnect connection = new DBConnect();
    Statement stmt;
    Connection con;
    String queryString;
    ResultSet rs;

    public ResultSet getAllUsers() {
        String users = "";
        try {
            System.out.println("selectAll");
            con = connection.Connect_to();
            stmt = con.createStatement();
            queryString = new String("select * from user");
            rs = stmt.executeQuery(queryString);
            /*while(rs.next())
		{
		
			users = rs.getString(1)+" " +rs.getString(2)+" " +rs.getString(3)+" " +rs.getString(4);
		}
             */
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return rs;

    }

    public ResultSet getOneUser(String username) {
//		String user="";
        try {
            con = connection.Connect_to();
            stmt = con.createStatement();
            queryString = new String("select * from user where user_name = '" + username + "'");
            System.out.println(queryString);
            rs = stmt.executeQuery(queryString);
            System.out.println(rs);

//		user = rs.getString(1)+" " +rs.getString(2)+" " +rs.getString(3)+" " +rs.getString(4);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return rs;
    }

    public boolean authUser(String username, String userpassword) {
        boolean check = false;
        try {
            con = connection.Connect_to();
            stmt = con.createStatement();
            queryString = new String("select * from user where user_name = '" + username + "' and password = '" + userpassword + "'");
            rs = stmt.executeQuery(queryString);
            if (rs.next()) {
                check = true;
            } else {
                check = false;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return check;
    }

    public String gameMoves(int user1ID, int user2ID, int gameID) {
        String moves = "";
        try {
            con = connection.Connect_to();
            stmt = con.createStatement();
            queryString = new String("select moves from game where user1_id = '" + user1ID + "' and user2_id = '" + user2ID + "' and game_id = '" + gameID + "'");
            rs = stmt.executeQuery(queryString);
            moves = rs.getString(5);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return moves;
    }

    public String getWinner(int user1ID, int user2ID, int gameID) {
        String winner = "";
        try {
            con = connection.Connect_to();
            stmt = con.createStatement();
            queryString = new String("select winner_id from game where user1_id = '" + user1ID + "' and user2_id = '" + user2ID + "' and game_id = '" + gameID + "'");
            rs = stmt.executeQuery(queryString);
            winner = rs.getString(6);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return winner;
    }

    public String getUserGames(int userID) {
        String games = "";
        try {
            con = connection.Connect_to();
            stmt = con.createStatement();
            queryString = new String("select * from game where user1_id = '" + userID + "'");
            rs = stmt.executeQuery(queryString);
            games = rs.getString(2);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return games;
    }

    public boolean insertUser(String userName, String password, int score) {
        try {
            con = connection.Connect_to();
            stmt = con.createStatement();

            queryString = new String("insert into user values(null,'" + userName + "','" + password + "','" + score + "')");

            System.out.println(queryString);

            int exec = stmt.executeUpdate(queryString);
            System.out.println("exec " + exec);

            if (exec == 1) {
                return true;
            } else {
                return false;
            }
//                return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public void insertMoves(String gameMoves, int gameID) {
        try {
            con = connection.Connect_to();
            stmt = con.createStatement();
            queryString = new String("update game set moves = '" + gameMoves + "' where game_id = '" + gameID + "'");
            int s = stmt.executeUpdate(queryString);

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public static String prepareMoves(int[][] board) {
        ArrayList<Integer> oneDArray = new ArrayList<>();
        int k = 0;
        for (int i = 0; i < board.length; i++) {
            for (int j = 0; j < board.length; j++) {
                oneDArray.add(board[i][j]);
            }
        }
        return StringUtils.join(oneDArray, ",");
    }

    public void createGame(int user1ID, int user2ID) {
        try {
            con = connection.Connect_to();
            stmt = con.createStatement();
            queryString = new String("insert into game (user1_id, user2_id) values ('" + user1ID + "', '" + user2ID + "')");
            rs = stmt.executeQuery(queryString);

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public void playerScore(String userName) {
        try {
            con = connection.Connect_to();
            stmt = con.createStatement();
            queryString = new String("update user set `high_score` = high_score+10 where user_name = '" + userName + "'");
            int s = stmt.executeUpdate(queryString);    

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

//public int getGameID (int user1ID, int user2ID)
//{
//     try
//	{
//		con = connection.Connect_to();
//		stmt = con.createStatement() ;
//		queryString = new String("select  from game where user1_id = '"+user1ID+"' and user2_id = '"+user2ID+"' and game_id = '"+gameID+"'");
//		rs = stmt.executeQuery(queryString);
//		
//	}
//	catch(SQLException ex)
//				{
//					ex.printStackTrace();
//				}
//}
//
//public String getMoves (int user1ID, int user2ID, int gameID)
//{
//     try
//	{
//		con = connection.Connect_to();
//		stmt = con.createStatement() ;
//		queryString = new String("select moves from game where user1_id = '"+user1ID+"' and user2_id = '"+user2ID+"' and game_id = '"+gameID+"'");
//		rs = stmt.executeQuery(queryString);
//                
//		
//	}
//	catch(SQLException ex)
//				{
//					ex.printStackTrace();
//				}
//}
//public static void main(String args[])
//		{
//			Database d = new Database();
//			System.out.println(d.getAllUsers());
//		}
}
