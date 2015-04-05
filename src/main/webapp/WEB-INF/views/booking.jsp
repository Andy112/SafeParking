<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Booking | Safe-Parking</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
</head><!--/head-->

<body>
    <header id="header">
        <div class="header_top">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="contactinfo">
                            <ul class="nav nav-pills">
                                <li><a href="#"><i class="fa fa-phone"></i> +29 0768 567 456</a></li>
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
                        <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                </button>
                        </div>
                        <div class="mainmenu pull-left">
                            <ul class="nav navbar-nav collapse navbar-collapse">
                                <li><a href="/homepage" class="active">Home</a></li>
                                <li><a href="#">Get Quote</a></li>
                                <li><a href="#">Services</a></li>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Contact</a></li>
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
            <div class="col-md-4 col-md-offset-1">    			   			
            <h2 class="title text-center"><strong>Account Information</strong></h2>  
                <label>First Name:</label>
                <input  name="username" id="username" class="form-control"/>
                
                <label>Last Name:</label>
                <input  name="username" id="username" class="form-control" type="text"/>
                
                <label>Telephone:</label>
                <input  name="username" id="username" class="form-control" type="text"/>
                
                <label>Email:</label>
                <input  name="username" id="username" class="form-control" type="email"/>
                
                <label>Password:</label>
                <input  name="username" id="username" class="form-control" type="password"/>
            </div>
            
            <div class="col-md-4 col-md-offset-2">    			   			
            <h2 class="title text-center"><strong>Booking Details</strong></h2>  
                <label>Entry Date:</label>
                <input  name="username" id="username" class="form-control" type="date"/>

                <label>Exit Date</label>
                <input  name="username" id="username" class="form-control" type="date"/>
                
                <label>Car Registration Number:</label>
                <input  name="username" id="username" class="form-control" type="text"/>
                
                <label>Model</label>
                <input  name="username" id="username" class="form-control" type="text"/>
                
                <label>Password:</label>
                <input  name="username" id="username" class="form-control" type="password"/>
            </div>
            
            <div class="col-md-4 col-md-offset-1">    			   			
            <br/><br/><h2 class="title text-center"><strong>Payment Option</strong></h2>  
                <label>First Name:</label>
                <input  name="username" id="username" class="form-control"/>
                
                <label>Last Name:</label>
                <input  name="username" id="username" class="form-control" type="text"/>
                
                <label>Telephone:</label>
                <input  name="username" id="username" class="form-control" type="text"/>
                
                <label>Email:</label>
                <input  name="username" id="username" class="form-control" type="email"/>
                
                <label>Password:</label>
                <input  name="username" id="username" class="form-control" type="password"/>
                
                <div class="form-group pull-right">
                    <input type="submit" value="Book Now" class="btn btn-primary"/>
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