<%--
  Created by IntelliJ IDEA.
  User: Serkan-PC
  Date: 29/07/2015
  Time: 00:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.getSession().invalidate();
    response.sendRedirect("index.jsp");
%>