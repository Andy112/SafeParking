<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Admin | Safe-Parking</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
</head>

<body>
    <header id="header">
        <div class="header_top">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="contactinfo">
                            <ul class="nav nav-pills">
                                <li><a href="/new/homepage.jsp"><i class="fa fa-crosshairs"></i>Homepage</a></li>
                                <li><a href="#"><i class="fa fa-envelope"></i> safeparking@domain.com</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="header-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="mainmenu pull-left">
                            <ul class="nav navbar-nav collapse navbar-collapse">
                                <li><a href="#">.</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
    <div class="row">    		
        <div class="col-sm-12">   
            <h2 class="title text-center"><strong>Account Login</strong></h2>
            <div id="gmap" class="contact-map">
                <div class="row">    		
                    <div class="col-md-4 col-md-offset-4">      
                        <form method="post"  action="/j_spring_security_check" class="form-horizontal">
                            <div class="form-group">
                                <label>Email:</label>
                                    <input  name="username" id="username" class="form-control" type="email"/>
                            </div>
                            <div class="form-group">
                              <label>Password:</label>
                              <input name="password" id = "password" class="form-control" type="password"/>
                            </div>

                            <div class="form-group">
                              <div class="controls">
                                  <input type="submit" value="Login" class="btn btn-primary"/>
                              </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>			 		
    </div>

    <footer id="footer">
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <p class="pull-left">Copyright © 2015 Safe Parking. All rights reserved.</p>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>