<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Handcraft Shopping - Customer Dashboard</title>
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
                    <h1>Customer Dashboard</h1>

                    <table border="0">
                        <tbody>
                            <tr>
                                <td><label class="form-label">Handcraft Order</label></td>
                                <td><a href="handcraft-order.jsp" class="btn btn-success" role="button">Order Now</a></td>
                            </tr>

                        </tbody>
                    </table>
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
