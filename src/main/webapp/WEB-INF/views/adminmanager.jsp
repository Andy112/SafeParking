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
                                <li><a href="/homepage" class="active">Home</a></li>
                                <li class="dropdown"><a href="#">Booking<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="#">Booking in Process</a></li> 
                                        <li><a href="#">Temporary Booking</a></li>
                                        <li><a href="#">Make Booking</a></li>
                                        <li><a href="#">All Booking</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Users</a></li>
                                <li class="dropdown"><a href="#">Car Parks<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="#">Manage Airport</a></li> 
                                        <li><a href="#">Manage Car Park</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Logout</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3">
                            <div class="search_box pull-right">
                                    <input type="text" placeholder="Search"/>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
    <div class="row">    		
        <div class="col-sm-12">   			    				    				
            <div id="gmap" class="contact-map">
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