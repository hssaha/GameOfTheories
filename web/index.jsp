<%--
  Created by IntelliJ IDEA.
  User: Serkan-PC
  Date: 20/07/2015
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>Game of Theories</title>
      <link rel="stylesheet" type="text/css" href="style.css">
      <script src="scripts.js"></script>
  </head>
  <body>
  <div class="container">
  <jsp:include page="header.jsp" />
  <div class="createPost">
      <p>Create Post: </p>
      <form action="submit.jsp">
          <input type="submit" name="post" value="Text">
          <input type="submit" name="post" value="Image">
      </form>
  </div>
  <div class="main">
      <div class="post">
          Test Post
      </div>
  </div>
  </div>
  </body>
</html>
