<%--
  Created by IntelliJ IDEA.
  User: Serkan-PC
  Date: 02/08/2015
  Time: 03:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="db" scope="session" class="GoT.DB"/>
<%
  String title = request.getParameter("title");
    System.out.println(title);
%>