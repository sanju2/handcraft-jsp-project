<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String username = request.getParameter("username");
    session.putValue("username", username);
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/handcraft", "root", "");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from admin where username='" + username + "' and password='" + password + "'");
    try {
        rs.next();
        if (rs.getString("password").equals(password) && rs.getString("username").equals(username)) {
            String redirectURL = "admin-dashboard.jsp";
            response.sendRedirect(redirectURL);
//            out.println("Welcome " + usern);
        } else {
            out.println("Invalid password or username.");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Handcraft Shopping - Admin Login</title>
        <link href="bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/handcraft.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">Online Handcraft Shopping</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.jsp">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>

                    </ul>
                </div>
        </nav>

        <!-- Page Content -->
        <div class="container">
            <div class="row my-4">
                <div class="col-lg-7">
                    <img class="img-fluid rounded" src="images/home-img.jpg" alt="img">

                </div>

                <!-- /.col-lg-8 -->
                <div class="col-lg-5">
                    <h1>Handcraft Shopping Admin Login</h1>
                    <form action="#" method="POST">
                        <table border="0">
                            <tbody>




                                <tr>
                                    <td>Username </td>
                                    <td><input type="text" name="username" value="" size="30" /></td>
                                </tr>
                                <tr>
                                    <td>Password </td>
                                    <td><input type="password" name="password" value="" size="30" /></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td style="text-align: right"> <button type="submit" class="btn btn-success" name="">Login</button>

                                        <button class="btn btn-danger" type="reset">Reset</button>
                                        <a href="user-register.jsp" class="btn btn-primary">Register as new customer</a>.

                                    </td>
                                </tr>

                            </tbody>
                        </table>

                    </form>
                </div>


            </div>
        </div>

        <!-- Footer -->
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Handcraft Shopping 2022</p>
            </div>
            <!-- /.container -->
        </footer>

        <script src="bootstrap/bootstrap.bundle.min.js" type="text/javascript"></script>
        <script src="bootstrap/jquery.min.js" type="text/javascript"></script>
    </body>
</html>