package GoT;

import java.sql.Timestamp;

/**
 * Created by Serkan-PC on 02/08/2015.
 */
public class Post {
    public int postid;
    public String type;
    public String title;
    public String content;
    public Timestamp created;
    public int votes;
    public int creator;
    public String imgLink;
    public Post(int pi,String type, String title,String content,Timestamp ts,int vo,int creator,String imgLink){
        this.postid = pi;
        this.type = type;
        this.title=title;
        this.content=content;
        this.created=ts;
        this.votes = vo;
        this.creator=creator;
        this.imgLink=imgLink;

    }

}
