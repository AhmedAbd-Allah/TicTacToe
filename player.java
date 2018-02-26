
public class Player {
    private int id;
    private int score;
    private String username;
    private String password;

    public Player()
    {

    }
    public Player(String username, int score, String password) 
    {
        this.username = username;
        this.password = password;
        this.score = score;
    }
    
    public int getId() {
        return id;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }
    
    public void setUsername(String username){
        this.username = username;
    }
    public String getUsername(){
        return username;
    }
    
    public void setScore(int score){
        this.score = score;
    }
    
    public int getScore(){
        return score;
    }
}