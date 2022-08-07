<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
    if (request.getParameter("submit") != null) {
        String aname = request.getParameter("aname");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection con;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/handcraft", "root", "");
        pst = con.prepareStatement("insert into admin(aname,email,username,password)values(?,?,?,?)");
        pst.setString(1, aname);
        pst.setString(2, email);
        pst.setString(3, username);
        pst.setString(4, password);
        pst.executeUpdate();
%>
<script>
    alert("Admin Added");
</script>
<%            }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Handcraft Shopping - Admin Register</title>
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
                    <h1>User Register</h1>
                    <form method="POST" action="#">
                        <table border="0">
                            <tbody>
                                <tr>
                                    <td><label class="form-label">Admin Name</label></td>
                                    <td><input type="text" class="form-control" placeholder="Admin Name" name="aname" id="aname" required ></td>
                                </tr>
                                <tr>
                                    <td><label class="form-label">Email</label></td>
                                    <td><input type="email" class="form-control" placeholder="Email" name="email" id="email" required ></td>
                                </tr>
                                <tr>
                                    <td><label class="form-label">Username</label></td>
                                    <td><input type="text" class="form-control" placeholder="Username" name="username" id="username" required ></td>
                                </tr>
                                <tr>
                                    <td><label class="form-label">Password</label></td>
                                    <td><input type="password" class="form-control" placeholder="Password" name="password" id="password" required ></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td style="text-align: right"> <button type="submit" class="btn btn-success" id="submit" value="submit" name="submit">Submit</button>

                                        <button class="btn btn-danger" type="reset">Reset</button>
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