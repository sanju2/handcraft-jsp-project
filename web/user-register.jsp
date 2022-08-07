<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
    if (request.getParameter("submit") != null) {
        String cname = request.getParameter("cname");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String usern = request.getParameter("usern");
        String pass = request.getParameter("pass");

        Connection con;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/handcraft", "root", "");
        pst = con.prepareStatement("insert into customer(cname,email,mobile,usern,pass)values(?,?,?,?,?)");
//        pst = con.prepareStatement("insert into customer(cname,email,mobile,usern,pass)values(?,?,?,?,PASSWORD(?))");
        pst.setString(1, cname);
        pst.setString(2, email);
        pst.setString(3, mobile);
        pst.setString(4, usern);
        pst.setString(5, pass);
        pst.executeUpdate();
%>
<script>
    alert("Customer Added");
</script>
<%            }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Handcraft Shopping - user register</title>
        <link href="bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/handcraft.css" rel="stylesheet" type="text/css"/>
        <script>
           function phonenumber(mobile)
            {
                var phoneno = /^\d{10}$/;
                if ((mobile.value.match(phoneno))
                {
                    return true;
                } else
                {
                    alert("Enter correct No");
                    return false;
                }
            }

        </script>
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
                                    <td><label class="form-label">Customer Name</label></td>
                                    <td><input type="text" class="form-control" placeholder="Customer Name" name="cname" id="cname" required ></td>
                                </tr>
                                <tr>
                                    <td><label class="form-label">Email</label></td>
                                    <td><input type="email" class="form-control" placeholder="Email" name="email" id="email" required ></td>
                                </tr>
                                <tr>
                                    <td><label class="form-label">Mobile No</label></td>
                                    <td><input type="text" class="form-control" placeholder="Mobile No" name="mobile" id="mobile" onsubmit="return phonenumber()" required ></td>
                                </tr>
                                <tr>
                                    <td><label class="form-label">Username</label></td>
                                    <td><input type="text" class="form-control" placeholder="Username" name="usern" id="usern" required ></td>
                                </tr>
                                <tr>
                                    <td><label class="form-label">Password</label></td>
                                    <td><input type="password" class="form-control" placeholder="Password" name="pass" id="pass" required ></td>
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
