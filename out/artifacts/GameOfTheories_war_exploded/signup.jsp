<%--
  Created by IntelliJ IDEA.
  User: Serkan-PC
  Date: 24/07/2015
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Sign up now</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <script src="scripts.js"></script>
</head>
<body>
<div class="signupmain">
    <div class="title">
        Game of Theories
    </div>
    <div class="boxes">
        <form onsubmit=" return userCreateVal()" action="register.jsp" >
            <p>
            <label for="email"> Email:</label> <br> <input type="text" name="email" id="email" size="15">
            <br></p><p>
            <label for="username"> Username:</label> <br> <input type="text" name="username" id="username"size="15">
            <br></p><p>
            <label for="password"> Password:</label> <br> <input type="text" name="password" id="password"size="15">
            <br></p><p>
            <label for="passwordagain"> Enter Password again:</label> <br> <input type="text" name="passwordagain" id="passwordagain" size="15">
            <br></p>
            <input type="submit">
        </form>
        <span id="Error"></span>
        <%
            String er = request.getParameter("error");
            if(er!=null){
                //System.out.println(er);
                if(er.equals("true")){
                    %>Error occurred
                    <%
                }
                if(er.equals("email")){
                    %>Email already registered<%
                }
                if(er.equals("username")){
                    %>Username already exists<%
                }
            }
        %>
        <a href="index.jsp">Return to Homepage</a>
    </div>

</div>

</body>
</html>
