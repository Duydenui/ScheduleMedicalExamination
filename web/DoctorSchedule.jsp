<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Child Care System</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

        <link rel="stylesheet" href="css/homestyle1.css">
        <!--<link href="css/bootstraps.css" rel="stylesheet">-->
        <link href="assets/img/child-care-icon.png" rel="icon" type="images/png">
        <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
        <script>
            function submitForm() {
                document.getElementsByTagName('form')[2].submit();
            }
        </script>
        <style>
            table {
                border-collapse: collapse;
                width: 100%;
            }

            th, td {
                border: 1px solid black;
                padding: 8px;
                text-align: center;
                color: var(--black);
                font-size: 2rem;
                background: var(--white);
            }

            th {
                background-color: var(--main-color);
                font-weight: bold;
                font-size: 2rem;
                color: #fff;
            }
            :root {
                --main-color: #8e44ad;
                --red: #e74c3c;
                --orange: #f39c12;
                --light-color: #888;
                --light-bg: #eee;
                --black: #2c3e50;
                --white: #fff;
                --border: .1rem solid rgba(0, 0, 0, .2);
            }

            .table>:not(caption)>*>* {
                padding: 0.5rem 0.5rem;
                background-color: var(--bs-table-bg);
                border-bottom-width: 1px solid var(--black);
                box-shadow: inset 0 0 0 9999px var(--bs-table-accent-bg);
                color: var(--black);
                font-size: 2rem;
            }

            .form-control {
                display: block;
                width: 100%;
                padding: 0.375rem 0.75rem;
                font-size: 1rem;
                font-weight: 400;
                line-height: 1.5;
                color: #212529;
                background-color: #fff;
                background-clip: padding-box;
                border: 1px solid #ced4da;
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
                border-radius: 0.25rem;
                transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
                font-size: 1.5rem;
            }

            .choices__list--dropdown.choices__item--selectable {
                padding-right: 1rem;
            }

            .choices__list--single {
                padding: 0;
            }



            .shadow {
                box-shadow: 0.3rem 0.3rem 1rem rgba(178, 200, 244, 0.23);
            }

            a {
                text-decoration: none;
                color: inherit;
                transition: all 0.3s;
            }
            .picker__footer,
            .picker__header,
            .picker__table {
                text-align: center
            }

            .picker__box {
                padding: 0 1em
            }

            .picker__header {
                position: relative;
                margin-top: .75em
            }

            .picker__month,
            .picker__year {
                font-weight: 500;
                display: inline-block;
                margin-left: .25em;
                margin-right: .25em
            }

            .picker__year {
                color: #999;
                font-size: .8em;
                font-style: italic
            }

            .picker__select--month,
            .picker__select--year {
                border: 1px solid #b7b7b7;
                height: 2em;
                padding: .5em;
                margin-left: .25em;
                margin-right: .25em
            }

            .picker__select--month {
                width: 35%
            }

            .picker__select--year {
                width: 22.5%
            }

            .picker__select--month:focus,
            .picker__select--year:focus {
                border-color: #f78b65
            }

            .picker__nav--next,
            .picker__nav--prev {
                position: absolute;
                padding: .5em 1.25em;
                width: 1em;
                height: 1em;
                box-sizing: content-box;
                top: -.25em
            }

            .picker__nav--prev {
                left: -1em;
                padding-right: 1.25em
            }

            .picker__nav--next {
                right: -1em;
                padding-left: 1.25em
            }

            @media (min-width:24.5em) {

                .picker__select--month,
                .picker__select--year {
                    margin-top: -.5em
                }

                .picker__nav--next,
                .picker__nav--prev {
                    top: -.33em
                }

                .picker__nav--prev {
                    padding-right: 1.5em
                }

                .picker__nav--next {
                    padding-left: 1.5em
                }
            }

            .picker__nav--next:before,
            .picker__nav--prev:before {
                content: " ";
                border-top: .5em solid transparent;
                border-bottom: .5em solid transparent;
                border-right: .75em solid #000;
                width: 0;
                height: 0;
                display: block;
                margin: 0 auto
            }

            .picker__nav--next:before {
                border-right: 0;
                border-left: .75em solid #000
            }

            .picker__nav--next:hover,
            .picker__nav--prev:hover {
                cursor: pointer;
                color: #000;
                background: #f2d1c5
            }

            .picker__nav--disabled,
            .picker__nav--disabled:before,
            .picker__nav--disabled:before:hover,
            .picker__nav--disabled:hover {
                cursor: default;
                background: 0 0;
                border-right-color: #f5f5f5;
                border-left-color: #f5f5f5
            }

            .picker__table {
                border-collapse: collapse;
                border-spacing: 0;
                table-layout: fixed;
                font-size: inherit;
                width: 100%;
                margin-top: .75em;
                margin-bottom: .5em
            }

            @media (min-height:33.875em) {
                .picker__table {
                    margin-bottom: .75em
                }
            }

            .picker__table td {
                margin: 0;
                padding: 0
            }

            .picker__weekday {
                width: 14.285714286%;
                font-size: .75em;
                padding-bottom: .25em;
                color: #999;
                font-weight: 500
            }

            @media (min-height:33.875em) {
                .picker__weekday {
                    padding-bottom: .5em
                }
            }

            .picker__day {
                padding: .3125em 0;
                font-weight: 200;
                border: 1px solid transparent
            }

            .picker__day--today {
                position: relative
            }

            .picker__day--today:before {
                content: " ";
                position: absolute;
                top: 2px;
                right: 2px;
                width: 0;
                height: 0;
                border-top: .5em solid #f78b65;
                border-left: .5em solid transparent
            }

            .picker__day--disabled:before {
                border-top-color: #aaa
            }

            .picker__day--outfocus {
                color: #ddd
            }

            .picker--focused .picker__day--highlighted,
            .picker__day--highlighted:hover,
            .picker__day--infocus:hover,
            .picker__day--outfocus:hover {
                cursor: pointer;
                color: #000;
                background: #f2d1c5
            }

            .picker__day--highlighted {
                border-color: #f78b65
            }

            .picker--focused .picker__day--selected,
            .picker__day--selected,
            .picker__day--selected:hover {
                background: #f78b65;
                color: #fff
            }

            .picker--focused .picker__day--disabled,
            .picker__day--disabled,
            .picker__day--disabled:hover {
                background: #f5f5f5;
                border-color: #f5f5f5;
                color: #ddd;
                cursor: default
            }

            .picker__day--highlighted.picker__day--disabled,
            .picker__day--highlighted.picker__day--disabled:hover {
                background: #bbb
            }

            .picker__button--clear,
            .picker__button--close,
            .picker__button--today {
                border: 1px solid #fff;
                background: #fff;
                font-size: .8em;
                padding: .66em 0;
                font-weight: 700;
                width: 33%;
                display: inline-block;
                vertical-align: bottom
            }

            .picker__button--clear:hover,
            .picker__button--close:hover,
            .picker__button--today:hover {
                cursor: pointer;
                color: #000;
                background: #f2d1c5;
                border-bottom-color: #f2d1c5
            }

            .picker__button--clear:focus,
            .picker__button--close:focus,
            .picker__button--today:focus {
                background: #f2d1c5;
                border-color: #f78b65;
                outline: 0
            }

            .picker__button--clear:before,
            .picker__button--close:before,
            .picker__button--today:before {
                position: relative;
                display: inline-block;
                height: 0
            }

            .picker__button--clear:before,
            .picker__button--today:before {
                content: " ";
                margin-right: .45em
            }

            .picker__button--today:before {
                top: -.05em;
                width: 0;
                border-top: .66em solid #f78b65;
                border-left: .66em solid transparent
            }

            .picker__button--clear:before {
                top: -.25em;
                width: .66em;
                border-top: 3px solid #e20
            }

            .picker__button--close:before {
                content: "\D7";
                top: -.1em;
                vertical-align: top;
                font-size: 1.1em;
                margin-right: .35em;
                color: #777
            }

            .picker__button--today[disabled],
            .picker__button--today[disabled]:hover {
                background: #f5f5f5;
                border-color: #f5f5f5;
                color: #ddd;
                cursor: default
            }

            .picker__button--today[disabled]:before {
                border-top-color: #aaa
            }
            .picker,.picker__holder{
                width:100%;
                position:absolute
            }
            .picker{
                font-size:16px;
                text-align:left;
                line-height:1.2;
                color:#000;
                z-index:10000;
                -webkit-user-select:none;
                -moz-user-select:none;
                -ms-user-select:none;
                user-select:none;
                outline:0
            }
            .picker__input{
                cursor:default
            }
            .picker__input.picker__input--active{
                border-color:#0089ec
            }
            .picker__holder{
                overflow-y:auto;
                -webkit-overflow-scrolling:touch;
                background:#fff;
                border:1px solid #aaa;
                border-top-width:0;
                border-bottom-width:0;
                border-radius:0 0 5px 5px;
                box-sizing:border-box;
                min-width:176px;
                max-width:466px;
                max-height:0;
                -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
                filter:alpha(opacity=0);
                -moz-opacity:0;
                opacity:0;
                transform:translateY(-1em) perspective(600px) rotateX(10deg);
                transition:transform .15s ease-out,opacity .15s ease-out,max-height 0s .15s,border-width 0s .15s
            }/*!
                         * Classic picker styling for pickadate.js
                         * Demo: http://amsul.github.io/pickadate.js
                         */
            .picker__frame{
                padding:1px
            }
            .picker__wrap{
                margin:-1px
            }
            .picker--opened .picker__holder{
                max-height:25em;
                -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)";
                filter:alpha(opacity=100);
                -moz-opacity:1;
                opacity:1;
                border-top-width:1px;
                border-bottom-width:1px;
                transform:translateY(0) perspective(600px) rotateX(0);
                transition:transform .15s ease-out,opacity .15s ease-out,max-height 0s,border-width 0s;
                box-shadow:0 6px 18px 1px rgba(0,0,0,.12)
            }

            input[type="date"]{
                background-color: #fff;
                padding: 7px;

                font-family: "Roboto Mono",monospace;
                color: #000;
                font-size: 15px;
                border: 1px solid #000;
                outline: none;
                border-radius: 5px;
            }
            .cart-quantity-input {
                height: 34px;
                width: 50px;
                border-radius: 5px;
                border: 1px solid #56CCF2;
                background-color: #eee;
                color: #333;
                padding: 0;
                text-align: center;
                font-size: 1.2em;
                margin-right: 25px;
            }
            @media (min-width: 768px){
                .seven-cols .col-md-1,
                .seven-cols .col-sm-1,
                .seven-cols .col-lg-1  {
                    width: 100%;
                    *width: 100%;
                }
            }

            @media (min-width: 992px) {
                .seven-cols .col-md-1,
                .seven-cols .col-sm-1,
                .seven-cols .col-lg-1 {
                    width: 14.285714285714285714285714285714%;
                    *width: 14.285714285714285714285714285714%;
                }
            }

            /**
             *  The following is not really needed in this case
             *  Only to demonstrate the usage of @media for large screens
             */
            @media (min-width: 1200px) {
                .seven-cols .col-md-1,
                .seven-cols .col-sm-1,
                .seven-cols .col-lg-1 {
                    width: 14.285714285714285714285714285714%;
                    *width: 14.285714285714285714285714285714%;
                }
            }
            .lead {
                font-size: 0.9rem;
                font-weight: 300;
            }

            .text-black {
                --bs-text-opacity: 1;
                color: var(--black)!important;
                font-size: 2rem;
            }

            label {
                display: inline-block;
                font-size: 2rem;
                color: var(--black)!important;
            }

                h1 {
                    font-size: 24px; /* Set the font size for the heading */
                    color: #333; /* Set the text color */
                    margin: 0; /* Remove default margin */
                }

                a {
                    text-decoration: none; /* Remove underlines from the link */
                    color: #007BFF; /* Set link color */
                    font-weight: bold; /* Make the link bold */
                }

                a:hover {
                    text-decoration: underline; /* Underline the link on hover */
                }
            
        </style>
    </head>

    <body>

        <!-- header-->
        <jsp:include page="assets/module/header.jsp"></jsp:include>
            <!-- sidebar-->
        <jsp:include page="assets/module/sidebar.jsp"></jsp:include>

            <main id="main">

            <c:if test="${sessionScope.account != null || sessionScope.admin != null}">
                <form action="addschedule" method="post">
                    <section>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row mb-5">
                                        <div class="box">
                                            <div class="section-title">
                                                <h1 class="heading">Add Schedule</h1>
                                            </div>                                               
                                            <div class="p-3 p-lg-5">
                                                <table>
                                                    <thead>

                                                    <th>Doctor</th>
                                                    <th>Date</th>
                                                    <th>Slot</th>

                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td><select required name="doctor" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                                                    <option value="" selected="selected">--Doctor--</option>
                                                                    <c:forEach items="${requestScope.doctorList}" var="d">
                                                                        <option value="${d.user_id}">${d.user_name}</option>
                                                                    </c:forEach>
                                                                </select></td>

                                                            <td><input onchange="checkdate()" required type="date" id="date_order" name="date"></td>

                                                    <script>
                                                        function checkdate() {
                                                            var GivenDate = document.getElementById('date_order').value;
                                                            GivenDate = new Date(GivenDate);
                                                            var CurrentDate = new Date();
                                                            var date = new Date();
                                                            date.setDate(date.getDate() + 1);
                                                            if (GivenDate < CurrentDate) {
                                                                alert('The Order Date must bigger than current date !');
                                                                console.log(date);
                                                                var now = date;
                                                                var day = ("0" + now.getDate()).slice(-2);
                                                                var month = ("0" + (now.getMonth() + 1)).slice(-2);
                                                                var today = now.getFullYear() + "-" + (month) + "-" + (day);
                                                                document.getElementById('date_order').value = today;
                                                            }
                                                        }

                                                    </script>

                                                    <td><select required name="time" class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1" aria-hidden="true">
                                                            <option value="" selected="selected">--Time--</option>
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>      
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                        </select></td>

                                                    </tr>
                                                    </tbody>
                                                </table>
                                                <button id="placeOrder" class="btn" onclick="this.form().submit()">Add Schedule</button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                
                                </form>
                            </div><br>
                            <!--                            table-->
                            <div class="box">
                            <div class="section-title">
                                                <h1 class="heading">Doctor Schedule</h1>
                                            </div> 
                                <div>
                                    <form action="schedule" method="get">
                                        <div style="color: var(--black); font-size: 2rem; font-weight: bold;">Select week to display doctor's schedule</div>
                                            <input style="color: var(--black); background: var(--white)" type="date" id="xdate" name="xdate" value="${requestScope.date}" onchange="submitForm()"><br/>
                                        </form>
                                </div>
                            <table>
                                <thead>
                                <tr>
                                    <th>
                                        
                                    </th>
                                    <c:forEach items="${requestScope.week}" var="d">
                                        <th> 
                                            <fmt:formatDate value="${d}" pattern="EEEE"/> <br> 
                                            <fmt:formatDate value="${d}" pattern="dd-MM"/>
                                        </th>
                                    </c:forEach>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${requestScope.slot_index}" var="slot_index"> 
                                    <tr>
                                        <td>Slot ${slot_index}</td>
                                        <c:forEach items="${requestScope.week}" var="w">
                                            <td>                           
                                                <c:forEach items="${requestScope.schedules}" var="s">                              
                                                    <c:if test="${slot_index eq s.slot and w eq s.date}"> 
                                                        <span style="color: #124DA3">${s.doctorName} </br>
                                                        <c:choose>

                                                            <c:when test = "${s.slot == 1}">
                                                                (7:30-9:50)
                                                            </c:when>

                                                            <c:when test = "${s.slot == 2}">
                                                                (10:00-12:20)
                                                            </c:when>

                                                            <c:when test = "${s.slot == 3}">
                                                                (12:50-15:10)
                                                            </c:when>

                                                            <c:when test = "${s.slot == 4}">
                                                                (15:20-17:40)
                                                            </c:when>

                                                        </c:choose>                                   
                                                    </c:if>
                                                </c:forEach>
                                            </td>
                                        </c:forEach>
                                    </tr>
                                </c:forEach>
                                    </tbody>
                            </table>
                        </div>
                        </div>
                    </section>

                    <% String errorMessage = (String) request.getAttribute("errorMessage");
   if (errorMessage != null) { %>
                    <div class="error-message">
                        <%= errorMessage %>
                    </div>
                    <% } %>
                </c:if>
                <c:if test="${sessionScope.account == null && sessionScope.admin == null}">
                    <section class="inner-page">
                        <div class="container">
                            <center>
                                <h1>
                                    You need to login first
                                </h1>
                            </center>

                        </div>
                    </section>
                </c:if>
        </main><!-- End #main -->

        <!-- footer-->
        <jsp:include page="assets/module/footer.jsp"></jsp:include>

        <script src="assets/vendor/purecounter/purecounter.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>
        <script src="js/script.js"></script>
        <script src="assets/js/main.js"></script>
        <script>
                                                function checkPhone() {
                                                    var phone = document.getElementById("c_phone").value;
                                                    var regex1 = /((0[3|5|7|8|9])+([0-9]{8})\b)/g;
                                                    var regex2 = /((84[3|5|7|8|9])+([0-9]{8})\b)/g;
                                                    if (phone.match(regex1) || phone.match(regex2)) {
                                                        document.getElementById("demo").innerHTML = "";
                                                        document.getElementById("placeOrder").disabled = 0;
                                                    } else {
                                                        document.getElementById("demo").innerHTML = "Invalid Phone Number";
                                                        document.getElementById("placeOrder").disabled = 1;
                                                    }
                                                }
        </script>
        <script>

            $(document).ready(function () {
                $('input[type="number"]').on('keyup', function () {
                    v = parseInt($(this).val());
                    min = parseInt($(this).attr('min'));
                    max = parseInt($(this).attr('max'));
                    /*if (v < min){
                     $(this).val(min);
                     } else */if (v > max) {
                        $(this).val(max);
                    }
                })
            })
            function required()
            {
                var empt1 = document.forms["checkout"]["fullname"].value;
                var empt2 = document.forms["checkout"]["gender"].value;
                var empt3 = document.forms["checkout"]["address"].value;
                var empt4 = document.forms["checkout"]["email"].value;
                var empt5 = document.forms["checkout"]["phone"].value;
                var empt6 = document.forms["checkout"]["password"].value;
                var empt7 = document.forms["checkout"]["repeatpassword"].value;
                if (empt1 == "")
                {
                    alert("Email is empty! Please input a full your name.");
                    return false;
                } else if (empt2 == "") {
                    alert("Password is empty! Please input your gender.");
                    return false;
                } else if (empt3 == "") {
                    alert("Password is empty! Please input your address.");
                    return false;
                } else if (empt4 == "") {
                    alert("Password is empty! Please input your email.");
                    return false;
                } else if (empt5 == "") {
                    alert("Password is empty! Please input your phone.");
                    return false;
                } else if (empt6 == "") {
                    alert("Password is empty! Please input a password.");
                    return false;
                } else if (empt7 == "") {
                    alert("Password is empty! Please input repeat password.");
                    return false;
                } else
                {
                    //   alert('Code has accepted : you can try another');
                    return true;
                }
            }



            $(function () {

                var from_$input = $('#input_from').pickadate(),
                        from_picker = from_$input.pickadate('picker')

                var to_$input = $('#input_to').pickadate(),
                        to_picker = to_$input.pickadate('picker')


                // Check if there’s a “from” or “to” date to start with.
                if (from_picker.get('value')) {
                    to_picker.set('min', from_picker.get('select'))
                }
                if (to_picker.get('value')) {
                    from_picker.set('max', to_picker.get('select'))
                }

                // When something is selected, update the “from” and “to” limits.
                from_picker.on('set', function (event) {
                    if (event.select) {
                        to_picker.set('min', from_picker.get('select'))
                    } else if ('clear' in event) {
                        to_picker.set('min', false)
                    }
                })
                to_picker.on('set', function (event) {
                    if (event.select) {
                        from_picker.set('max', to_picker.get('select'))
                    } else if ('clear' in event) {
                        from_picker.set('max', false)
                    }
                })

            });
        </script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/picker.js"></script>
        <script src="assets/js/picker.date.js"></script>
    </body>

</html>