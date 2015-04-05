<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Admin Booking | Safe-Parking</title>
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
                                <li><a href="/homepage">Home</a></li>
                                <li class="dropdown"><a href="#" class="active">Booking<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="#">Booking in Process</a></li> 
                                        <li><a href="#">Temporary Booking</a></li> 
                                        <li><a href="#">Booking</a></li> 
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
        <div class="col-sm-4">
                <div class="col-sm-4">
                    <div class="controls">
                        <select class="form-control">
                            <option disabled selected>Search By:</option>
                            <option>Reference Number</option>
                            <option>Booking Name</option>
                        </select>
                    </div>
                    <div class="controls">
                        <input type="submit" value="Search" class="btn btn-primary"/>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="controls">
                        <input  name="username" class="form-control" type="text"/>
                    </div>
                </div>
            </div>

    </div>

    <div class="row">

        <h2 class="title text-center"><strong>All Bookings</strong></h2>

        <div class="span8 offset2">
            <!-- All Bookings -->
            <c:if test="${!empty bookingList}">

                <table class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>Booking Id</th>
                        <th>Customer Name</th>
                        <th>Booking Date</th>
                        <th>Entry Date</th>
                        <th>Exit Date</th>
                        <th>Car Reg No</th>
                        <th>Model</th>
                        <th>Car Type</th>
                        <th>Payment Type</th>
                        <th>Payment By</th>
                        <th>Price</th>
                        <th  class="center">&nbsp;</th>
                        <th class="center">&nbsp;</th>

                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${bookingList}" var="book" varStatus="loopStatus">
                        <tr>
                            <td>${book.bookingId}</td>
                            <td>${book.bookingDate} ${book.bookingDate}</td>
                            <td>${book.flightNumber}</td>
                            <td>${book.entryDateTime}</td>
                            <td>${book.exitDateTime}</td>
                            <td>${book.carRegNumber}</td>
                             <td>${book.model}</td>
                            <td>${book.type}</td>
                            <td>${book.paymentType}</td>
                            <td>${book.paymentBy}</td>
                            <td>${book.price}</td>
                            <td>
                                <form action="/editBooking/${book.carParkId}" method="post"><input type="submit"
                                                                                                class="btn btn-success btn-mini"
                                                                                                value="Edit"/>
                                </form>
                            </td>
                            <td>
                                <form action="/deleteBooking/${book.carParkId}" method="post"><input type="submit"
                                                                                                class="btn btn-danger btn-mini"
                                                                                                value="Delete"/>
                                </form>
                            </td>

                        </tr>


                    </c:forEach>


                    </tbody>
                </table>
            </c:if>


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