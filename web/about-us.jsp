<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Handcraft Shopping - about us</title>
        <link href="bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/handcraft.css" rel="stylesheet" type="text/css"/>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <style>
            .paddingTB60 {padding:60px 0px 60px 0px;}
            .gray-bg {background: #F1F1F1 !important;}
            .about-title {}
            .about-title h1 {color: #535353; font-size:45px;font-weight:600;}
            .about-title span {color: #AF0808; font-size:45px;font-weight:700;}
            .about-title h3 {color: #535353; font-size:23px;margin-bottom:24px;}
            .about-title p {color: #7a7a7a;line-height: 1.8;margin: 0 0 15px;}
            .about-paddingB {padding-bottom: 12px;}
            .about-img {padding-left: 57px;}

            /* Social Icons */
            .about-icons {margin:48px 0px 48px 0px ;}
            .about-icons i{margin-right: 10px;padding: 0px; font-size:35px;color:#323232;box-shadow: 0 0 3px rgba(0, 0, 0, .2);}
            .about-icons li {margin:0px;padding:0;display:inline-block;}
            #social-fb:hover {color: #3B5998;transition:all .001s;}
            #social-tw:hover {color: #4099FF;transition:all .001s;}
            #social-gp:hover {color: #d34836;transition:all .001s;}
            #social-em:hover {color: #f39c12;transition:all .001s;}
        </style>
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
                            <a class="nav-link" href="review.jsp">Review</a>
                        </li>

                    </ul>
                </div>
        </nav>
        <div class="about-section paddingTB60 gray-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-7 col-sm-6">
                        <div class="about-title clearfix">
                            <h1>About <span>Handcraft</span></h1>
                            <h3> Handcraft Shopping </h3>
                            <p class="about-paddingB">A virtual platform dedicated to local handcraft artists and buyers all around the country. Textile, Decorative, Paper, Functional, and Fashion Crafts which are supplied by local artists are sold. We are allowing our customers to experience the beautiful Sri Lankan culture through our products.</p>
                            <div class="about-icons"> 
                                <ul >
                                    <li><a href="https://www.facebook.com/"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a> </li>
                                    <li><a href="https://twitter.com/"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a> </li>
                                    <li> <a href="https://plus.google.com/"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a> </li>
                                    <li> <a href="mailto:bootsnipp@gmail.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a> </li>
                                </ul>       
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-6">
                        <div class="about-img">
                            <img src="https://devitems.com/preview/appmom/img/mobile/2.png" alt="">
                        </div>
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
