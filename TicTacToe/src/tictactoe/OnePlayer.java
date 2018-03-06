/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tictactoe;

import java.util.List;
import java.util.stream.IntStream;
import javafx.collections.ObservableList;
import javafx.scene.Node;
import javafx.scene.control.Alert;
import javafx.scene.image.ImageView;
import javafx.scene.layout.GridPane;
//import static tictactoe.GameBoardController.grid;
import static controller.GameBoardController.imageo;
import static controller.GameBoardController.imagex;
import static controller.GameBoardController.source;
import static controller.GameBoardController.*;
import static controller.OnePlayerController.player;

/**
 *
 * @author aliaa
 */
public class OnePlayer {

    int[] board = new int[9];    
    int[] dummyBoard = new int[9];
    int index = 0;
        public OnePlayer()
    {
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
                System.out.println("free cell : "+i);
                freeCells[ind++] = i;
            }
        }
        
        int perfectCell = getResult(freeCells);
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
        dummyBoard[cellIndex] = 1;
        

        if( getWinner(dummyBoard) == 1 || gameEnded(dummyBoard) || cellIndex == 8 || index == 8) {
            initDummyBoard();
            return cellIndex;
        }
        
        //here i reversed order of getWinner with defense to enable user to win
        //in some cases
//        int defenseIndex = defense();
//        if(defenseIndex !=-1 && getWinner(dummyBoard) != 1){
//            return defenseIndex;
//        }
        
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
    
    /**
     * check if there exists a winner 
     * @return his sign(0,1)
     * else 
     * @return -1
     */
    public int getWinner(int[] board){
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
            return board[1];
        }
        if(board[2]== board[5] &&  board[5] == board[8]){
            return board[2];
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
    
    public void play(int row , int col){
        int cellIndex=-1;
        if(row==0 && col==0)
        {
            cellIndex=0;
        }   
        else if(row==0 && col==1)
        {
            cellIndex=1;
        }
        else if(row==0 && col==2)
        {
            cellIndex=2;
        }
        else if(row==1 && col==0)
        {
            cellIndex=3;
        }
        else if(row==1 && col==1)
        {
            cellIndex=4;
        }
        else if(row==1 && col==2)
        {
            cellIndex=5;
        }
        else if(row==2 && col==0)
        {
            cellIndex=6;
        }
        else if(row==2 && col==1)
        {
            cellIndex=7;
        }
        else if(row==2 && col==2)
        {
            cellIndex=8;
        }
        int perfectCell=-1;
        
        System.out.println("cellindex = == "+cellIndex+ " "+board[cellIndex]);
        if(board[cellIndex]==-1)
        {
            //player turn
            board[cellIndex] = 0;
            seti(board[cellIndex],cellIndex);
            
            //computer turn
            if(!gameEnded(board)){
                perfectCell = getBestMove();
                board[perfectCell] = 1;
                seti(board[perfectCell],perfectCell);
                initDummyBoard();
            }
        }
        
        
        
        System.out.println("My Cell"+perfectCell);
        System.out.println("\n");
        view(board);
        System.out.println("\n");

      // }
       
       if(getWinner(board) ==1){
//            Alert alert = new Alert(Alert.AlertType.INFORMATION);
//            alert.setTitle("Information Dialog");
//            alert.setHeaderText(null);
//            alert.setContentText("Looooooooser :(");
//            alert.showAndWait(); 
//            System.exit(1);
           lose.setVisible(true);
           loseName.setText("   Sorry "+player+" Is The Loser :( ");
           
       }else if(getWinner(board) == 0){

            win.setVisible(true);
           winName.setText("        "+player+" Is The Winner :)");
       }
       else if (gameEnded(board)){
            System.out.println("Tie");
            Alert alert = new Alert(Alert.AlertType.INFORMATION);
            alert.setTitle("Information Dialog");
            alert.setHeaderText(null);
            alert.setContentText("Tie");
            alert.showAndWait(); 
            System.exit(1);
       }
    }
    public void seti(int player,int cell)
    {
        ImageView img = (ImageView)source;
        ImageView i ;        
        int row=-1;
        int col =-1;
        if(player==0)
        {
            img.setImage(imageo);
        }
        else if(player==1)
        {
                    
            switch(cell)
            {
                case 0 :
                    row=0;
                    col=0;
                    break;
                case 1 :
                    row=0;
                    col=1;
                    break;
                case 2 :
                    row=0;
                    col=2;
                    break;
                case 3 :
                    row=1;
                    col=0;
                    break;
                case 4:
                    row=1;
                    col=1;
                    break;
                case 5 :
                    row=1;
                    col=2;
                    break;
                case 6 :
                    row=2;
                    col=0;                
                    break;
                case 7 :
                    row=2;
                    col=1;
                    break;
                case 8 :
                    row=2;
                    col=2;
                    break;
            }
        Node s = getNodeByRowColumnIndex(row, col, grid);
        i=(ImageView)s;
        i.setImage(imagex);
        }
        


    }
private Node getNodeByRowColumnIndex(final int row,  final int column, GridPane gridPane) {
        Node result =null;
        ObservableList<Node> childrens = gridPane.getChildren();
        
        for (Node node : childrens) {
            
            Integer colIndex = GridPane.getColumnIndex(node);
            Integer rowIndex = GridPane.getRowIndex(node);

            if(rowIndex==null)
            {
                rowIndex=0;
            }
            if(colIndex==null)
            {
                colIndex=0;
            }
                if (rowIndex == row && colIndex == column) {
                    result = node;
                    break;
                }
        }

        return result;
    }
}

