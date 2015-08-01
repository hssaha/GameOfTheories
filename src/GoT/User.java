package GoT;

/**
 * Created by Serkan-PC on 27/07/2015.
 */
public class User {
    public int user_id;
    public String email;
    public String username;
    public int validation;
    public User(int uid, String e,String u, int v){
        this.user_id = uid;
        this.email = e;
        this.username = u;
        this.validation = v;
    }
    public String getUsername(){return this.username;}
    public int validated(){return this.validation;}

}
