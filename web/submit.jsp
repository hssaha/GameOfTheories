<%--
  Created by IntelliJ IDEA.
  User: Serkan-PC
  Date: 24/07/2015
  Time: 01:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="db" scope="session" class="GoT.DB"/>
<html>
<head>
    <title>Submit Post</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src="scripts.js"></script>
    <script src="dropzone.js"></script>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="main">
    <form action="<% db.submit(%><%);%>" method="post"><p>
    <%
    String type=request.getParameter("post");
    if(type!=null){
        if(type.equals("Text")){
            %>
        <label for="title"> Title:</label> <br>&nbsp <input type="text" name="title" id="title" size="75">
        <br>
        <label for="text">Main Body:</label> <br>&nbsp <textarea id="text" name="text" cols="40" rows="5"></textarea>
        <br><input type="submit">
            <%
        }else if(type.equals("Image")){
            %>
        <label for="title"> Title:</label> <br>&nbsp <input type="text" id="title" size="75">
        <br>
        <div id="dropzone">
             <div class="dz-message">
                 <input type="file" name="pic" accept="image/jpeg" id="img">
                 <input type="submit">
             </div>
        </div>
        <%
        }
            }
    %>
    </p></form>
</div>
</body>
</html>
