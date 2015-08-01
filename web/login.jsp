<%--
  Created by IntelliJ IDEA.
  User: Serkan-PC
  Date: 27/07/2015
  Time: 23:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="db" scope="session" class="GoT.DB"/>
<%
    String un = request.getParameter("username");
    String ps = request.getParameter("password");
    try {
        if(db.login(un,ps)) {
            session.setAttribute("un", un);
            session.setAttribute("id",db.getId(un,ps));
            response.sendRedirect("index.jsp?log=success");
        }else{
            response.sendRedirect("index.jsp?log=fail");
        }
    } catch (Exception e){
        response.sendRedirect("index.jsp?error=true");
    }

%>