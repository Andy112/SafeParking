<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
                            <security:authorize access="hasRole('ROLE_ADMIN') OR hasRole('ROLE_CUSTOMER')">
                            <li><a href="#">Logout</a></li>
                            </security:authorize>
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
<h2 class="title text-center"><strong>List of All Carparks</strong></h2>
<div class="row">
    <div class="col-md-3 col-md-offset-8">
        <form:form method="post" commandName="airport" class="form-inline" action="/backend/managecarparks/${airport.id}">

            <div class="form-group">
                <form:select path="id" class="form-control">
                    <option disabled selected>Select Airport:</option>
                    <c:forEach items="${allAirports}" var="airport">
                        <form:option path="id" label="${airport.airportName}" value="${airport.id}"></form:option>
                    </c:forEach>
                </form:select>
            </div>
            <input type="submit" value="Search" class="btn btn-primary"/>
        </form:form>
    </div>
</div>


<div class="row">
    <div class="col-md-10 col-md-offset-1">
        <!-- All Carparks -->
        <c:if test="${empty allCarparks}">
            No Carparks to Show
        </c:if>
        <c:if test="${!empty allCarparks}">

            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Airport</th>
                    <th>Carpark Name</th>
                    <th>Capacity</th>
                    <th>Carpark Address</th>
                    <th>Carpark Telephone</th>
                    <th colspan="3">SpaceTypes : Capacity (Price)</th>
                    <th style="width: 8%" class="center">&nbsp;</th>
                    <th style="width: 8%" class="center">&nbsp;</th>

                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>Regular</td>
                    <td>Family</td>
                    <td>Disabled</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <c:forEach items="${allCarparks}" var="park" varStatus="loopStatus">
                    <tr>
                        <td>${park.airport.airportName}</td>
                        <td>${park.carparkName}</td>
                        <td>${park.capacity}</td>
                        <td>${park.carparkAddress}</td>
                        <td>${park.carparkTelephone}</td>
                        <td>${park.regular} (&pound; ${allSpaceTypes.get(0).price})</td>
                        <td>${park.family} (&pound; ${allSpaceTypes.get(1).price})</td>
                        <td>${park.disabled} (&pound; ${allSpaceTypes.get(2).price})</td>
                        <td>

                            <form action="/backend/editcarpark/${park.carparkId}" method="post"><input type="submit"
                                                                                                       class="btn btn-success btn-mini"
                                                                                                       value="Edit"/>
                            </form>
                        </td>
                        <td>
                            <form action="/backend/deletecarpark/${park.carparkId}" method="post"><input
                                    type="submit"
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


<h2 class="title text-center"><strong>Create a new Car Park</strong></h2>

<div class="row">
    <div class="col-md-10 col-md-offset-1">

    <form:form method="post" action="/backend/addCarpark" commandName="carpark" class="form-horizontal">

        <%--Row for the form body--%>

        <div class="row">
        <div class="col-sm-4 col-sm-offset-1">
            <form:errors path="*" class="error"/>
            <div class="form-group">
                <form:label class="control-label" path="carparkAddress">Carpark Airport: </form:label>
                <div class="controls">
                    <form:select path="airport.id" class="form-control">
                        <option disabled selected>Select Airport:</option>
                        <c:forEach items="${allAirports}" var="airport">
                            <form:option path="airport.id" label="${airport.airportName}" value="${airport.id}"/>
                        </c:forEach>
                    </form:select>
                </div>
            </div>

            <div class="form-group">
                <form:label class="control-label" path="carparkName">Carpark Name: </form:label>
                <div class="controls">
                    <form:input class="form-control" path="carparkName"/>
                </div>
            </div>

            <div class="form-group">
                <form:label class="control-label" path="carparkAddress">Carpark Address: </form:label>
                <div class="controls">
                    <form:input class="form-control" path="carparkAddress"/>
                </div>
            </div>

            <div class="form-group">
                <form:label class="control-label" path="carparkTelephone">Carpark Telephone: </form:label>
                <div class="controls">
                    <form:input class="form-control" path="carparkTelephone"/>
                </div>
            </div>


        </div>
        <div class="col-sm-4  col-sm-offset-1">
            Capacities
            <div class="form-group">
                <form:label class="control-label" path="regular">Regular Capacity: </form:label>
                <div class="controls">
                    <form:input class="form-control" path="regular"/>
                </div>
            </div>
            <div class="form-group">
                <form:label class="control-label" path="family">Family Capacity: </form:label>
                <div class="controls">
                    <form:input class="form-control" path="family"/>
                </div>
            </div>
            <div class="form-group">
                <form:label class="control-label" path="disabled">Disabled Capacity: </form:label>
                <div class="controls">
                    <form:input class="form-control" path="disabled"/>
                </div>
            </div>
        </div>
        </div>
        <%--Row for the submit button--%>
        <div class="row">
            <div class="col-sm-4 col-sm-offset-7">
                <div class="form-group pull-right">
                    <div class="controls">
                        <input type="submit" value="Create Car Park" class="btn btn-primary"/>
                    </div>
                 </div>
            </div>
        </div>
    </form:form>
</div>

</div>


</body>
<footer id="footer">
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <p class="pull-left">Copyright © 2015 Safe Parking. All rights reserved.</p>
            </div>
        </div>
    </div>
</footer>
</html>