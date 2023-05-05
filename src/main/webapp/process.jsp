<%--
  Created by IntelliJ IDEA.
  User: FAHIM
  Date: 4/29/2023
  Time: 8:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<jsp:useBean id="u" class="Bean.User" scope="session"/>
<jsp:setProperty property="*" name="u"/>

Record:<br>
<jsp:getProperty property="name" name="u"/><br>
<jsp:getProperty property="password" name="u"/><br>
<jsp:getProperty property="email" name="u" /><br>

<a href="second.jsp">Visit Page</a>
<a href="jstlbasics.jsp">Jstl </a>

</body>
</html>
