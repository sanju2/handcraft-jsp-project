<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
    if (request.getParameter("submit") != null) {
        String cname = request.getParameter("cname");
        String rating = request.getParameter("rating");
        String reviewmsg = request.getParameter("reviewmsg");

        Connection con;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/handcraft", "root", "");
        pst = con.prepareStatement("insert into review(cname,rating,reviewmsg)values(?,?,?)");
        pst.setString(1, cname);
        pst.setString(2, rating);
        pst.setString(3, reviewmsg);
        pst.executeUpdate();
%>
<script>
    alert("Review Submit");
</script>
<%            }

%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Handcraft Shopping - Review</title>
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
                        <a class="nav-link" href="gallery-page.jsp">Gallery</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="about-us.jsp">About US</a>
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
                <h1>Review</h1>
                <form method="POST" action="#">
                    <table border="0">
                        <tbody>
                            <tr>
                                <td><label class="form-label">Customer Name</label></td>
                                <td><input type="text" class="form-control" placeholder="Customer Name" name="cname" id="cname" required ></td>
                            </tr>
                            <tr>
                                <td><label class="form-label">Rating</label></td>
                                <td><select class="form-control" name="rating" id="rating" requirenamed >
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select></td>


                            </tr>
                            <tr>
                                <td><label class="form-label">Enter Review Message</label></td>
                                <td><textarea class="form-control" placeholder="Review Message" name="reviewmsg" id="reviewmsg" required ></textarea></td>
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

