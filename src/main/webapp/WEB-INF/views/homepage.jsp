<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@page session="false"%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | Safe-Parking</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">

    <link type="text/css" href="css/bootstrap-timepicker.min.css" />
    <link href="datepicker/css/datepicker.css" rel="stylesheet">
    <link href="css/prettify.css" rel="stylesheet">

</head>
<!--/head-->

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

    <div class="header-middle">
        <div class="container">

        </div>
    </div>

    <div class="header-bottom">
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target=".navbar-collapse">
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
                            <security:authorize access="hasRole('ROLE_ADMIN') OR hasRole('ROLE_CUSTOMER')">
                                <li><a href="/j_spring_security_logout" >Logout</a></li>
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

<section id="slider">
    <div class="container">
        <div class="row">
            <div class="col-sm-8">
                <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#slider-carousel" data-slide-to="1"></li>
                        <li data-target="#slider-carousel" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="images/home/picture1.jpg" class="picture img-responsive" alt=""/>

                            <h1><span>Safe</span>-Parking</h1>
                        </div>
                        <div class="item">
                            <img src="images/home/picture2.jpg" class="picture img-responsive" alt=""/>

                            <h1><span>Safe</span>-Parking</h1>
                        </div>

                        <div class="item">
                            <img src="images/home/picture3.jpg" class="picture img-responsive" alt=""/>

                            <h1><span>Safe</span>-Parking</h1>
                        </div>
                    </div>
                    <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">

                    </a>
                    <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">

                    </a>
                </div>
            </div>

            <div class="footer-top">
                <%-- <form action="#" method="post">--%>
                <div class="col-lg-4">

                    <div class="row">
                        <div class="col-sm-9">
                            <div class="shop-menu pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="#"><i class="fa fa-user"></i> Account</a></li>
                                    <li><a href="#"><i class="fa fa-star"></i> Register</a></li>
                                    <li><a href="#"><i class="fa fa-lock"></i> Login</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <h3 class="title text-center"><strong>Get a parking space now</strong></h3>


                    <form:form method="post" action="/search" commandName="searchterm">
                        <form:errors path="*" class="error"/>


                        <div class="form-group col-xs-6">

                            <form:label path="dateOfEntry">Entry Date:</form:label>
                            <form:input path="dateOfEntry" class="form-control" name="dpd1" id="dpd1"
                                        type="text"/>
                            <div class="input-append bootstrap-timepicker">
                                <input name="timepicker1" id="timepicker1" type="text" class="form-control input-small">
                            </div>

                        </div>



                        <div class="form-group col-xs-6">
                            <form:label path="dateOfExit">Exit Date</form:label>
                            <form:input path="dateOfExit" class="form-control" name="dpd2" id="dpd2"
                                        type="text"/>
                            <div class="bootstrap-timepicker pull-right">
                                <input id="timepicker2" type="text" class="form-control input-small">
                            </div>
                        </div>

                        <div class="form-group">
                        <form:label path="airportid">Airport:</form:label>

                        <form:select path="airportid" class="form-control">
                            <c:forEach items="${airportEntityList}" var="airport">
                                <form:option path="airportid" value="${airport.id}" label="${airport.airportName}"/>
                            </c:forEach>
                        </form:select>

                        </div>
                        <div class="form-group">
                        <form:label path="spaceTypeid">Space Types:</form:label>
                        <form:select path="spaceTypeid" class="form-control">
                            <c:forEach items="${spaceTypeList}" var="space">
                                <form:option path="spaceTypeid" value="${space.spaceTypeId}"
                                             label="${space.spaceDescription}"/>
                            </c:forEach>
                        </form:select>
                        </div>

                        <input type="submit" value="Search" class="btn btn-primary pull-right"/>


                    </form:form>
                </div>
            </div>

            <div class="col-md-4">
                <h4 class="title text-center"><strong>Login</strong></h4>

                <form method="post" class="form-horizontal">
                    <label>Email:</label>
                    <input name="username" id="username" class="form-control" type="email"/>

                    <label>Password:</label>
                    <input name="username" id="username" class="form-control" type="password"/>

                    <div class="form-group pull-right">
                        <input type="submit" value="Login" class="btn btn-primary"/>
                    </div>
                </form>
            </div>


        </div>
    </div>
</section>


<footer id="footer">
    <div class="footer-widget">
        <div class="container">

        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <p class="pull-left">Copyright © 2015 Safe Parking. All rights reserved.</p>
            </div>
        </div>
    </div>
</footer>

<script src="js/jquery.min.js"></script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/price-range.js"></script>
<script src="js/main.js"></script>


<script src="js/prettify.js"></script>
<script src="datepicker/js/bootstrap-datepicker.js"></script>
<script src="js/bootstrap-timepicker.js"></script>
<script type="text/javascript" src="js/bootstrap-timepicker.min.js"></script>

<script>
    $('#timepicker1').timepicker({
        minuteStep: 5,
        showInputs: false,
        disableFocus: true
    });
</script>

<script>
    $('#timepicker2').timepicker({
        minuteStep: 5,
        showInputs: false,
        disableFocus: true
    });
</script>


<script>
    if (top.location != location) {
        top.location.href = document.location.href;
    }
    $(function () {
        window.prettyPrint && prettyPrint();
        $('#dp1').datepicker({
            format: 'dd-mm-yyyy'
        });
        $('#dp2').datepicker();
        $('#dp3').datepicker();
        $('#dp3').datepicker();
        $('#dpYears').datepicker();
        $('#dpMonths').datepicker();


        var startDate = new Date(2012, 1, 20);
        var endDate = new Date(2012, 1, 25);
        $('#dp4').datepicker()
                .on('changeDate', function (ev) {
                    if (ev.date.valueOf() > endDate.valueOf()) {
                        $('#alert').show().find('strong').text('The start date can not be greater then the end date');
                    } else {
                        $('#alert').hide();
                        startDate = new Date(ev.date);
                        $('#startDate').text($('#dp4').data('date'));
                    }
                    $('#dp4').datepicker('hide');
                });
        $('#dp5').datepicker()
                .on('changeDate', function (ev) {
                    if (ev.date.valueOf() < startDate.valueOf()) {
                        $('#alert').show().find('strong').text('The end date can not be less then the start date');
                    } else {
                        $('#alert').hide();
                        endDate = new Date(ev.date);
                        $('#endDate').text($('#dp5').data('date'));
                    }
                    $('#dp5').datepicker('hide');
                });

        // disabling dates
        var nowTemp = new Date();
        var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

        var checkin = $('#dpd1').datepicker({
            onRender: function (date) {
                return date.valueOf() < now.valueOf() ? 'disabled' : '';
            }
        }).on('changeDate', function (ev) {
            if (ev.date.valueOf() > checkout.date.valueOf()) {
                var newDate = new Date(ev.date)
                newDate.setDate(newDate.getDate() + 1);
                checkout.setValue(newDate);
            }
            checkin.hide();
            $('#dpd2')[0].focus();
        }).data('datepicker');
        var checkout = $('#dpd2').datepicker({
            onRender: function (date) {
                return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
            }
        }).on('changeDate', function (ev) {
            checkout.hide();
        }).data('datepicker');
    });
</script>
</body>
</html>