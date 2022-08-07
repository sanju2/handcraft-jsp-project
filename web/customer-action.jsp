<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Handcraft Shopping - Customer Action</title>
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
                        <li class="nav-item">
                            <a class="nav-link" href="admin-login.jsp">Logout</a>
                        </li>

                    </ul>
                </div>
        </nav>

        <!-- Page Content -->
        <div class="container">
            <div class="row my-4">
                <div class="col-lg-6">
                    <img class="img-fluid rounded" src="images/home-img.jpg" alt="img">

                </div>

                <!-- /.col-lg-8 -->
                <div class="col-lg-6">
                    <h1>Customer Action</h1>
                    <div class="panel-body">
                        <table class="table table-responsive" cellpadding="0" width="80%">
                            <thead>
                                <tr>
                                    <th>Customer Name</th>
                                    <th>Email</th>
                                    <th>Mobile</th>
                                    <!--                                    <th>User Name</th>-->
                                    <th>Update</th>
                                    <th>Delete</th>
                                </tr>

                                <%                                Connection con;
                                    PreparedStatement pst;
                                    ResultSet rs;

                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost/handcraft", "root", "");
                                    String query = "select * from customer";
                                    Statement st = con.createStatement();
                                    rs = st.executeQuery(query);
                                    while (rs.next()) {
                                        String id = rs.getString("id");
                                %>

                                <tr>
                                    <td><%=rs.getString("cname")%></td>
                                    <td><%=rs.getString("email")%></td>
                                    <td><%=rs.getString("mobile")%></td>
                                    <!--<td><%=rs.getString("usern")%></td>-->
                                    <td><a href="customer-action-update.jsp?id=<%=id%>" class="btn btn-success" role="button">Edit</a></td>
                                    <td><a href="customer-action-delete.jsp?id=<%=id%>" class="btn btn-danger" role="button">Delete</a></td>
                                </tr>

                                <%
                                    }
                                %>
                            </thead>
                        </table>
                    </div>
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
