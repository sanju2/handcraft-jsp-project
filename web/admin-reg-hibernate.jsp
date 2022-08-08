<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="mypack.AdminDao"%><jsp:useBean id="obj" class="mypack.Admin"></jsp:useBean>
<jsp:setProperty property="*" name="obj"/>

<%
int i=AdminDao.register(obj);
if(i>0)
out.print("Admin successfully registered");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Register Page</title>
    </head>
    <body>
        <form action="#" method="post">
            Name:<input type="text" name="aname"/><br><br/>
            Email ID:<input type="text" name="email"/><br><br/>
            Username:<input type="text" name="username"/><br><br/>
            Password:<input type="password" name="password"/><br><br/>
            <input type="submit" value="register"/>"

        </form>
    </body>
</html>
