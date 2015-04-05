<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Registration | Safe-Parking</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
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
    <div class="col-md-6 col-md-offset-3">
        <h2 class="title text-center"><strong>Account Information</strong></h2>

        <form:form method="post" action="/register" commandName="account" class="form-horizontal">
            <form:errors path="*" class="error"/>
        <div class="form-group">
            <form:label class="control-label" path="firstName">First Name:</form:label>
            <div class="controls">
                <form:input class="form-control" path="firstName"/>
            </div>
        </div>

        <div class="form-group">
            <form:label class="control-label" path="lastName">Last Name:</form:label>
            <div class="controls">
                <form:input class="form-control" path="lastName"/>
            </div>
        </div>
        <div class="form-group">
            <form:label class="control-label" path="address">Address:</form:label>
            <div class="controls">
                <form:textarea cols="12" rows="3" path="address" class="form-control"/>
            </div>
        </div>

        <div class="form-group">
            <form:label class="control-label" path="telephone">Telephone:</form:label>
            <div class="controls">
                <form:input class="form-control" path="telephone"/>
            </div>
        </div>
        <div class="form-group">
            <form:label class="control-label" path="dob">Date of Birth:</form:label>
            <div class="controls">
                <form:input path="dob" type="text" id="dpYears" class="form-control" placeholder="DD-MM-YYYY"/>
            </div>
        </div>

        <div class="form-group">
            <form:label class="control-label" path="gender">Gender:</form:label>
            <div class="controls">
                <form:select path="gender" class="form-control">
                    <form:option value="Male" label="Male"/>
                    <form:option value="Female" label="Female"/>
                </form:select>
            </div>
        </div>
        <div class="form-group">
            <form:label class="control-label" path="email">Email:</form:label>
            <div class="controls">
                <form:input class="form-control" path="email" type="email"/>
            </div>
        </div>

        <div class="form-group">
            <form:label class="control-label" path="password">Password:</form:label>
            <div class="controls">
                <form:input path="password" class="form-control" type="password"/>
            </div>
        </div>

            <form:hidden path="role.id" value="2"/>
        <div class="form-group">
            <div class="controls">
                <input type="submit" value="Register" class="btn btn-primary"/>
                </form:form>
            </div>
        </div>

</div>
</div>




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