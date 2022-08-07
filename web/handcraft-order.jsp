<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Handcraft Shopping - Order page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.js"></script>
        <style>
            body{
                margin:0;
                padding:0;
            }
            /* .container{
                    width:90%
                    margin:10px auto;
            } */
            .portfolio-menu{
                text-align:center;
            }
            .portfolio-menu ul li{
                display:inline-block;
                margin:0;
                list-style:none;
                padding:10px 15px;
                cursor:pointer;
                -webkit-transition:all 05s ease;
                -moz-transition:all 05s ease;
                -ms-transition:all 05s ease;
                -o-transition:all 05s ease;
                transition:all .5s ease;
            }

            .portfolio-item{
                /*width:100%;*/
            }
            .portfolio-item .item{
                /*width:303px;*/
                float:left;
                margin-bottom:10px;
            }
        </style>
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
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center my-2">
                    <h4>Handcraft Shopping - Handcraft</h4>
                </div>
            </div>
            <div class="portfolio-item row">
                <div class="item selfie col-lg-3 col-md-4 col-6 col-sm">
                    <img class="img-fluid" src="images/3.jpg" alt="">
                    <p class="badge-warning">Bag Price - LKR 250</p>
                    <a href="order.jsp" class="btn btn-success" role="button">Order Now</a>
                </div>
                <div class="item gts col-lg-3 col-md-4 col-6 col-sm"> 
                    <img class="img-fluid" src="images/7.jpg" alt="">
                    <p class="badge-info">Queen Price - LKR 500</p>
                    <a href="order.jsp" class="btn btn-success" role="button">Order Now</a>
                </div>
                <div class="item selfie col-lg-3 col-md-4 col-6 col-sm">
                    <img class="img-fluid" src="images/4.jpg" alt="">
                    <p class="badge-warning">Chain Price - LKR 750</p>
                    <a href="order.jsp" class="btn btn-success" role="button">Order Now</a>
                </div>
                <div class="item gts col-lg-3 col-md-4 col-6 col-sm">
                    <img class="img-fluid" src="images/5.jpg" alt="">
                    <p class="badge-info">Hand Bag Price - LKR 800</p>
                    <a href="order.jsp" class="btn btn-success" role="button">Order Now</a>
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