<%--
  Created by IntelliJ IDEA.
  User: FAHIM
  Date: 4/29/2023
  Time: 11:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
Welcome, ${ param.name }

Value is ${ sessionScope.user }

Hello, ${cookie.name.value}
</body>
</html>
