<%@ page import="GoT.Post" %>
<%--
  Created by IntelliJ IDEA.
  User: Serkan-PC
  Date: 02/08/2015
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="db" scope="session" class="GoT.DB"/>
<html>
<%
    String postid = request.getParameter("post");
    if(postid!=null){
        Post current = db.viewPost(Integer.parseInt(postid));

%>
<head>
    <title><%= current.title%></title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src="scripts.js"></script>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="main">
    <p class="title"><%= current.title%></p>
    <p class="postbody"><%= current.content%></p>


</div>

</body>
<%}%>
</html>
