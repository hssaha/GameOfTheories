
<div class="top">
    <a href="index.jsp">Game of Theories :O</a> <span id="titleExtra">//Spoilers</span>
</div>
<div class="block"></div>
<div class="left">
    <%
        if (session.getAttribute("un")!=null){
            %><%= session.getAttribute("un")%><br><%= session.getAttribute("id")%>
        <a href="logout.jsp">Logout</a>
    <%
        }else{
    %>

    <form onsubmit="return loginVal()" action="login.jsp"><p>
        &nbsp <label for="username"> Username:</label> <br>&nbsp <input type="text" name="username" id="username" size="15">
        &nbsp <label for="password"> Password:</label> <br>&nbsp <input type="text" name="password" id="password" size="15">
        <br><br>&nbsp<input type="submit" value="submit" >
        <br>
        <span id="Error"></span>
        <%
            String log = request.getParameter("log");
            if(log!=null){
                if(log.equals("fail")){
                    %>Username and Password don't match<%
                }
            }
        %>

    </p>
    </form>
    <a href="signup.jsp">Sign up now</a>
    
    <%

        String signup = request.getParameter("reg");
        String success = "success";
        if(signup!=null){
        if (signup.equals(success)){
    %>Register successful, sign in above<%
    }
    }
    }
%>
</div>
