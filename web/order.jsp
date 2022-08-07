<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
    if (request.getParameter("submit") != null) {
        String productname = request.getParameter("productname");
        String quentity = request.getParameter("quentity");
        String price = request.getParameter("price");
        String postalcode = request.getParameter("postalcode");
        String address = request.getParameter("address");
        String mobileno = request.getParameter("mobileno");

        Connection con;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/handcraft", "root", "");
        pst = con.prepareStatement("insert into orders(productname,quentity,price,postalcode,address,mobileno)values(?,?,?,?,?,?)");
        pst.setString(1, productname);
        pst.setString(2, quentity);
        pst.setString(3, price);
        pst.setString(4, postalcode);
        pst.setString(5, address);
        pst.setString(6, mobileno);
        pst.executeUpdate();
        String redirectURL = "success.jsp";
        response.sendRedirect(redirectURL);
%>
<script>
    alert("Order Success");
</script>
<%            }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Handcraft Shopping - Order</title>
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
                            <a class="nav-link" href="user-login.jsp">Logout</a>
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
                    <h1>Order Page</h1>
                    <form method="POST" action="#">
                        <table border="0">
                            <tbody>
                                <tr>
                                    <td><label class="form-label">Product Name</label></td>
                                    <td><input type="text" class="form-control" placeholder="Product Name" name="productname" id="productname" required ></td>
                                </tr>
                                <tr>
                                    <td><label class="form-label">Quantity</label></td>
                                    <td><input type="text" class="form-control" placeholder="Quantity" name="quentity" id="quentity" required ></td>
                                </tr>
                                <tr>
                                    <td><label class="form-label">Price</label></td>
                                    <td><input type="text" class="form-control" placeholder="Price" name="price" id="price" required ></td>
                                </tr>
                                <tr>
                                    <td><label class="form-label">Postal Code</label></td>
                                    <td><input type="text" class="form-control" placeholder="Postal Code" name="postalcode" id="postalcode" required ></td>
                                </tr>
                                <tr>
                                    <td><label class="form-label">Address</label></td>
                                    <td><input type="text" class="form-control" placeholder="Address" name="address" id="address" required ></td>
                                </tr>
                                <tr>
                                    <td><label class="form-label">Mobile No</label></td>
                                    <td><input type="text" class="form-control" placeholder="Mobile No" name="mobileno" id="mobileno" required ></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td style="text-align: right"> <button type="submit" class="btn btn-success" id="submit" value="Order Now" name="submit">Submit</button>

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
