package GoT;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Serkan-PC on 02/08/2015.
 */

//still needs to resolve images

public class SubmitServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DB db = new DB();
        int pid=0;
        String title = request.getParameter("title");
        String text = request.getParameter("text");
        HttpSession ses = request.getSession(false);
        int i = (Integer)ses.getAttribute("id");
        if (title!=null && text !=null){
            pid=db.submit(title,text,i);
        }/*else if (title!=null && img!=null){
            db.submit(title,img);
        }*/
        request.getRequestDispatcher("/viewpost.jsp?post="+pid).forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
