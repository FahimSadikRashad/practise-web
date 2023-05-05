<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<br/>
<a href="jstlbasics.jsp">Jstl </a>
<br/>
<a href="HomeServlet">Home Jstl</a>
<br/>
<jsp:useBean id="obj" class="Bean.Calculator"/>

<%
    int m=obj.cube(5);
    out.print("cube of 5 is "+m);
%>

<form action="process.jsp" method="post">
    Name:<input type="text" name="name"><br>
    Password:<input type="password" name="password"><br>
    Email:<input type="text" name="email"><br>
    <input type="submit" value="register">
</form>
<jsp:useBean id="counterBean" class="Bean.Counter" scope="session"/>
<%
    int prevCounter=counterBean.getCount();
    prevCounter++;
%>

<jsp:setProperty name="counterBean" property="count" value="<%=prevCounter%>"/>
<jsp:getProperty name="counterBean" property="count"/>

<jsp:useBean id="currentDateTime" class="java.util.Date" scope="page"/>
<%--What is the difference between type and class in here--%>
<jsp:useBean id="myStudent" class="Bean.StudentBean" scope="page" type="Bean.StudentBean"/>

<jsp:setProperty name="myStudent" property="id" value="154443"/>
<jsp:setProperty name="myStudent" property="name" value="Anas"/>
<h1>
    Right now it's <%=currentDateTime%>. The name of the student is
    <jsp:getProperty name="myStudent" property="name"/>
</h1>
<br>
<h1>
    His ID is <jsp:getProperty name="myStudent" property="id"/>
</h1>

<%
    session.setAttribute("user","sonoo");
%>
<%
    Cookie ck=new Cookie("name","abhishek");
    response.addCookie(ck);
%>

<form action="third.jsp">
    Enter Name:<input type="text" name="name" /><br/><br/>
    <input type="submit" value="go"/>
</form>
</body>
</html>