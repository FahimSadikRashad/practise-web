<%--
  Created by IntelliJ IDEA.
  User: FAHIM
  Date: 4/29/2023
  Time: 10:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Count to 10 Example (Using JSTL)</title>
</head>
<body>
<c:forEach var="i" begin="1" end="10" step="1">
  <c:out value="${i}"/>
  <br>
</c:forEach>
</body>
</html>
