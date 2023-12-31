<%-- 
    Document   : index
    Created on : 29 Mar, 2021, 4:51:20 PM
    Author     : JAVA-JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>

        <title>Optimizing Information Leakage</title>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/templatemo-style.css"
    </head>
    <%
        if (request.getParameter("Failed") != null) {
    %>
    <script>alert('Login Failed');</script>
    <%            }
    %>
    <script type="text/javascript">
        function loadFile(o)
        {
            var fr = new FileReader();
            fr.onload = function (e)
            {
                showDataFile(e, o);
            };
            fr.readAsText(o.files[0]);
        }

        function showDataFile(e, o)
        {
            document.getElementById("data").innerText = e.target.result;
        }
    </script>
    <body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

        <!-- PRE LOADER -->
        <section class="preloader">
            <div class="spinner">
                <span class="spinner-rotate"></span>
            </div>
        </section>
        <!-- MENU -->
        <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
            <div class="container">

                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a class="navbar-brand">Multicloud Storage</a>
                </div>
                <!-- MENU LINKS -->
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="User_Home.jsp" class="smoothScroll">Home</a></li>
                        <li class="active"><a href="Upload_file.jsp" class="smoothScroll">Upload File</a></li>
                        <li><a href="My_files.jsp" class="smoothScroll">My Files</a></li>
                        <li><a href="Download_files.jsp" class="smoothScroll">Download File</a></li>
                        <li><a href="view_downloads.jsp" class="smoothScroll">View Downloads</a></li>
                        <li><a href="index.jsp" class="smoothScroll">Logout</a></li>
                    </ul>
                </div>

            </div>
        </section>
        <section id="home">
            <div class="row">
                <div class="owl-carousel owl-theme home-slider">
                    <div class="item item-first">
                        <div class="caption">
                            <div class="container">
                                <div class="col-md-12">
                                    <center><h1>Optimizing Information Leakage in Multicloud
                                            Storage Services</h1></center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="about">
            <div class="container">
                <div class="row">
                    <div class="about-info">
                        <center><h2>Upload File</h2></center>
                    </div>
                    <br><br>
                    <div class="col-md-6 col-sm-12">
                        <div class="contact-image">
                            <img src="images/upload.png" class="img-responsive">
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <form id="contact-form" role="form" action="Upload_file1.jsp" method="post" enctype="multipart/form-data">
                            <div class="col-md-12 ">
                                <div class="form-group">
                                    <label>File Keyword :</label><br>
                                    <input type="text" placeholder="Enter File Keyword" style="width: 300px;" name="keyword" minlength="5" required=""><br><br><br>
                                    <label>Select File :</label><br>
                                    <input type="file" style="width: 300px;"  onchange="loadFile(this)" name="fileToUpload" accept="text/plain" required=""><br>
                                    <label>File Content :</label><br>
                                    <textarea readonly="" pre id="data" style="width:300px; height:100px"></textarea>
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12">
                                <button type="submit" class="btn-primary btn-lg">Pre Process</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- SCRIPTS -->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/smoothscroll.js"></script>
        <script src="js/custom.js"></script>
    </body>
</html>
