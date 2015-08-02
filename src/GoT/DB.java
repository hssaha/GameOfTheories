/**
 * Created by Serkan-PC on 25/07/2015.
 */
package GoT;

import java.awt.*;
import java.sql.*;

public class DB {
    Connection con;

    public DB(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/got", "admin", "heissen00");
        }catch(Exception e){
            System.out.println("Exception "+ e);
        }
    }
    public boolean createUser(String e,String u,String p){
        try {
            PreparedStatement ps = con.prepareStatement("INSERT into user (email,username,password,validation)Values (?,?,?,?)");
            ps.setString(1, e);
            ps.setString(2, u);
            ps.setString(3, p);
            ps.setInt(4, 0);
            ps.execute();
            return true;
        }catch(Exception ecu){
            return false;
        }
    }
    public String registered(String e,String u){
        try {
            PreparedStatement psr = con.prepareStatement("Select email, username from user where email=? or username=?");
            psr.setString(1, e);
            psr.setString(2, u);
            ResultSet rs = psr.executeQuery();
            while(rs.next()) {
                if (rs.getString("email").equals(e)) {
                    return "email";
                }
                if(rs.getString("username").equals(u)) {
                    return "username";
                }
            }
        }catch(Exception er){
            System.out.println("Error: "+ er);
        }
        return "";
    }
    public void validateUser(String em){
        try {
            PreparedStatement ps = con.prepareStatement("UPDATE user Set validation=1 Where email=?");
            ps.setString(1, em);
            ps.execute();
        }catch(Exception e){
            System.out.println("Error: "+ e);
        }
    }
    public boolean login(String u, String p){
        try{
            PreparedStatement ps = con.prepareStatement("SELECT * from user where username=? and password=?");
            ps.setString(1,u);
            ps.setString(2, p);
            ResultSet rs = ps.executeQuery();
            return rs.next();

        }catch(Exception e){
            System.out.println("Error: "+e);
            return false;
        }

    }
    public int getId(String u,String p){
        try{
            PreparedStatement ps = con.prepareStatement("SELECT * from user where username=? and password=?");
            ps.setString(1,u);
            ps.setString(2,p);
            ResultSet rs = ps.executeQuery();
            rs.next();
            return rs.getInt("user_id");

        }catch(Exception e){
            System.out.println("Error: "+e);
            return 0;
        }
    }
    public int submit(String title, String text, int i){
        //submit text
        try{
            PreparedStatement ps = con.prepareStatement("Insert INTO post(type,title,content,created,votes,creator) VALUES (?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
            ps.setString(1,"text");
            ps.setString(2, title);
            ps.setString(3, text);
            ps.setTimestamp(4, new Timestamp(System.currentTimeMillis()));
            ps.setInt(5, 0);
            ps.setInt(6, i);
            ps.execute();
            ResultSet rs = ps.getGeneratedKeys();
            rs.next();
            return rs.getInt(1);
        }catch(Exception e){
            System.out.println("Error: "+e);
        }
        return 0;
    }
    public void submit(String title, Image img, int i){
        //submit img

    }
    public Post viewPost(int id){
        Post p=null;
        try{
            PreparedStatement ps = con.prepareStatement("SELECT * from post where post_id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            rs.next();
            p = new Post(rs.getInt("post_id"),
                    rs.getString("type"),
                    rs.getString("title"),
                    rs.getString("content"),
                    rs.getTimestamp("created"),
                    rs.getInt("votes"),
                    rs.getInt("creator"),
                    rs.getString("img_link"));


        }catch(Exception e){
            System.out.println("Error: "+e);
        }
        return p;
    }

}