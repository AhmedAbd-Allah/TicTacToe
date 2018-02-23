/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TicTacToe.Client;

import java.util.ArrayList;
import java.util.Scanner;
import java.util.stream.IntStream;

/**
 *
 * @author rania
 */
public class XoDemo {
    int[] board = new int[9];    
    int[] dummyBoard = new int[9];

    int index = 0;
    
    
    public void init(){
        for (int i = 0; i < board.length; i++) {
             board[i] = dummyBoard[i] = -1;             
        }    
    }
    public void initDummyBoard(){
        for (int i = 0; i < board.length; i++) {           
             dummyBoard[i] = board[i];             
        }    
    }
    public void view(int[] board){
        for (int i = 0; i < board.length; i++) {
            System.out.print(board[i]+"  ");
            if((i+1)%3 ==0 )System.out.println("");

        }
    }
    
    
    /**
     * 
     * Recursive method to get best move that computer can play
     * @return 
     */
    public int getBestMove(){
        //if centered place is empty then play on it
        if(board[4] == -1){
            return 4;
        }
        int ind = index = 0;
        
        int[] freeCells = new int[9];
        //freeCells = IntStream.of(board).filter((x -> x == -1)).toArray();
        for (int i = 0; i < board.length; i++) {
            if( board[i] == -1){
                freeCells[ind++] = i;
            }
        }
        //System.out.println(freeCells.length);
        //for (int i = 0; i < freeCells.length;i++) {
           //while( getResult(freeCells) !=-1){
                int perfectCell = getResult(freeCells);
           // }
        //}
        
        return perfectCell;
        
    }
    
    /**
     * @param  int cellIndex
     * check the state of board with given value
     * @return 
     */
    public int getResult(int[] freeCells){
        //when computer plays in given cell

        int cellIndex = freeCells[index++];
                
        System.out.println("cell index = "+cellIndex);

        dummyBoard[cellIndex] = 1;
        System.out.println("getWinner() = "+getWinner(dummyBoard)+"\n\n");
        view(dummyBoard);
        
        int defenseIndex = defense();
        if(defenseIndex !=-1){
            return defenseIndex;
        }

        if( getWinner(dummyBoard) == 1 || gameEnded(dummyBoard) || cellIndex == 8 || index == 8) {
            System.out.println("cell index = "+cellIndex);
            initDummyBoard();
            return cellIndex;
        }
        
        return getResult(freeCells);
    }
    
    /**
     * check if any path of player has 2 moves  play into third place
     */
    public int defense() {
        
        //search for 2 neighbours has 0
        
        //rows
        for (int i = 0; i <6; i+=3) {
            if(board[i] == board[i+1] && board[i+1] == 0){   
                if(board[i+2] == -1)
                    return i+2;
            }
            if(board[i+1] == board[i+2] && board[i+2] == 0){  
                if(board[i] == -1)
                    return i;
            }
            if(board[i] == board[i+2] && board[i+2] == 0){    
                if(board[i+1] == -1)
                    return i+1;
            }
        }
        //columns
        for (int i = 0; i <3; i++) {
            if(board[i] == board[i+3] && board[i+3] == 0){   
                if(board[i+6] == -1)
                    return i+6;
            }
            if(board[i+3] == board[i+6] && board[i+6] == 0){  
                if(board[i] == -1)
                    return i;
            }
            if(board[i] == board[i+6] && board[i+6] == 0){    
                if(board[i+3] == -1)
                    return i+3;
            }
        }
        
        //1st diagonal

        if(board[0] == board[4] && board[4] == 0){   
            if(board[8] == -1)
                return 8;
        }
        if(board[4] == board[8] && board[8] == 0){  
            if(board[0] == -1)
                return 0;
        }
        if(board[0] == board[8] && board[8] == 0){    
            if(board[4] == -1)
                return 4;
        }

        //2nd diagonal
        if(board[2] == board[4] && board[4] == 0){   
            if(board[6] == -1)
                return 6;
        }
        if(board[4] == board[6] && board[6] == 0){  
            if(board[2] == -1)
                return 2;
        }
        if(board[2] == board[6] && board[6] == 0){    
            if(board[4] == -1)
                return 4;
        }
        
        
        
        
        //if no exists
        return -1;
    }
    
    public int getWinner(int [] board){
        return checkWinner(board);
    }
    
    /**
     * check if there exists a winner 
     * @return his sign(0,1)
     * else 
     * @return -1
     */
    public int checkWinner(int[] board){
        //if no move had been made yet
        if(IntStream.of(board).allMatch(x -> x == -1)){
            return -1;
        }
        
        //check rows

        if(board[0]== board[1] &&  board[1] == board[2]){
            return board[0];
        }
        if(board[3]== board[4] &&  board[4] == board[5]){
            return board[3];
        }
        if(board[6]== board[7] &&  board[7] == board[8]){
            return board[6];
        }
        
        
        //check columns
         if(board[0]== board[3] &&  board[3] == board[6]){
            return board[0];
        }
        if(board[1]== board[4] &&  board[4] == board[7]){
            return board[0];
        }
        if(board[2]== board[5] &&  board[5] == board[8]){
            return board[0];
        }
        
        //check diagonals
        if(board[0]== board[4] &&  board[4] == board[8]){
            return board[0];
        }
        if(board[2]== board[4] &&  board[4] == board[6]){
            return board[2];
        }
        
        return -1;
        
    }
    /**
     * 
     * @return true if all cells has moves
     */
    private boolean gameEnded(int[] board) {
        return (IntStream.of(board).allMatch(x -> x != -1));  
    }
    
    public void play(){
       //intialize gamed
       init();
       while(getWinner(board) == -1  && !gameEnded(board)){
           //get user move
        System.out.println("Enter Your cell");
        Scanner scan = new Scanner(System.in);
        int cellIndex = scan.nextInt();
        while(board[cellIndex] !=-1){
            System.out.println("please, Enter free cell");
            cellIndex = scan.nextInt();
        }
        board[cellIndex] = 0;
        int perfectCell = getBestMove();
        board[perfectCell] = 1;
        initDummyBoard();

        
        System.out.println("My Cell"+perfectCell);
        System.out.println("\n");
        view(board);
        System.out.println("\n");

       }
       
       if(getWinner(board) ==1){
           System.out.println("Computer Wins");
       }else if(getWinner(board) ==0){
            System.out.println("User Wins");
       }
       else {
            System.out.println("Tie");
       }
       
       
       //view();

    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // Symbols : user 0 , computer 1
        XoDemo xo = new XoDemo();
        xo.play();
       // xo.view();
    }

    
    
}
