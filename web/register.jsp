<%--
  Created by IntelliJ IDEA.
  User: Serkan-PC
  Date: 26/07/2015
  Time: 01:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="db" scope="session" class="GoT.DB"/>
<%
    String email = request.getParameter("email");
    String un = request.getParameter("username");
    String ps = request.getParameter("password");
    String regcheck = db.registered(email,un);
    try {
        if(regcheck.equals("")){
            db.createUser(email,un,ps);
            response.sendRedirect("index.jsp?reg=success");
        }else if(regcheck.equals("email")){
            response.sendRedirect("signup.jsp?error=email");
        }else if (regcheck.equals("username")){
            response.sendRedirect("signup.jsp?error=username");
        }
    }catch (Exception a){
    response.sendRedirect("signup.jsp?error=true");
    }
%>