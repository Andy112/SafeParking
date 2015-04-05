<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Search Results | Safe-Parking</title>
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
                                <li><a href="/homepage">Home</a></li>
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
        <div class="col-sm-9 col-md-offset-1">
            <h2 class="title text-center">Available <strong>Spaces</strong> at ${se}</h2>


            <table class="table table-striped">

                <tbody>
                <c:forEach items="${spaces}" var="space">
                <tr>
                <td><br/><h3>Car Park: ${space.carpark}</h3><br/></td>
                    <td><br/><strong>Address:</strong> <br/>${space.carpark.carparkAddress}</td>
                <td><br/><strong>Capacity:</strong> <br/>${carpark.capacity}</td>
                <td><div class="form-group">
                    <br/><br/><br/><input type="submit" value="Book now" class="btn btn-primary"/>
                </div>
                </td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
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