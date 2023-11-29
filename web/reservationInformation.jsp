
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link rel="icon" href="assets/img/child-care-icon.png" type="image/png">
        <link rel="stylesheet" href="assets/vendor/fontawesome-free/css/all.min.css">
        <link rel="stylesheet" href="assets/vendor/animate.css/animate.min.css">
        <link rel="stylesheet" href="assets/vendor/bootstrap-icons/bootstrap-icons.css">
        <link rel="stylesheet" href="assets/vendor/boxicons/css/boxicons.min.css">
        <link rel="stylesheet" href="assets/vendor/remixicon/remixicon.css">
        <link rel="stylesheet" href="assets/vendor/swiper/swiper-bundle.min.css">
        <style>
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
            
            .customer-in4 {
                color: var(--black);
                font-size: 2rem;
                margin-bottom: 3rem;
            }

            .user_in4.h2 {
                margin-right: 2rem;
            }

            .cancel-btn {
                background-color: green;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
            }

            .cancel-btn:hover {
                background-color: #c0392b; /* Darker red on hover */
            }


            /* Apply some basic styles to the table */
            table {
                width: 100%;
                border-collapse: collapse;
                border-spacing: 0;
                font-size: 16px;
            }

            /* Style the table header */
            table th {
                background-color: var(--main-color);
                color: #fff;
                font-weight: bold;
                padding: 10px;
                text-align: left;
                font-size: 2rem;
            }

            /* Style table data cells */
            table td {
                padding: 10px;
                color: var(--black);
                font-size: 2rem;
            }

            /* Define styles for different reservation statuses */
            .order-status {
                display: inline-block;
                padding: 5px 10px;
                border-radius: 5px;
                color: #fff;
            }

            .order-ready {
                background-color: #28a745; /* Green for "Ready" status */
            }

            .payment-status {
                display: inline-block;
                padding: 5px 10px;
                border-radius: 5px;
                color: #fff;
                display: flex;
            }

            .payment-pending {
                background-color: #ffc107; /* Yellow for "Pending" status */
            }

            .payment-paid {
                background-color: #007bff; /* Blue for "Paid" status */
            }
            
            /* 12 */
            .btn-12{
                position: relative;
                right: 20px;
                bottom: 20px;
                border:none;
                box-shadow: none;
                width: 130px;
                height: 40px;
                line-height: 42px;
                -webkit-perspective: 230px;
                perspective: 230px;
            }
            .btn-12 span {
                background: rgb(0,172,238);
                background: linear-gradient(0deg, rgba(0,172,238,1) 0%, rgba(2,126,251,1) 100%);
                display: block;
                position: absolute;
                width: 130px;
                height: 40px;
                box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
                    7px 7px 20px 0px rgba(0,0,0,.1),
                    4px 4px 5px 0px rgba(0,0,0,.1);
                border-radius: 5px;
                margin:0;
                text-align: center;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                -webkit-transition: all .3s;
                transition: all .3s;
            }
            .btn-12 span:nth-child(1) {
                box-shadow:
                    -7px -7px 20px 0px #fff9,
                    -4px -4px 5px 0px #fff9,
                    7px 7px 20px 0px #0002,
                    4px 4px 5px 0px #0001;
                -webkit-transform: rotateX(90deg);
                -moz-transform: rotateX(90deg);
                transform: rotateX(90deg);
                -webkit-transform-origin: 50% 50% -20px;
                -moz-transform-origin: 50% 50% -20px;
                transform-origin: 50% 50% -20px;
            }
            .btn-12 span:nth-child(2) {
                -webkit-transform: rotateX(0deg);
                -moz-transform: rotateX(0deg);
                transform: rotateX(0deg);
                -webkit-transform-origin: 50% 50% -20px;
                -moz-transform-origin: 50% 50% -20px;
                transform-origin: 50% 50% -20px;
            }
            .btn-12:hover span:nth-child(1) {
                box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
                    7px 7px 20px 0px rgba(0,0,0,.1),
                    4px 4px 5px 0px rgba(0,0,0,.1);
                -webkit-transform: rotateX(0deg);
                -moz-transform: rotateX(0deg);
                transform: rotateX(0deg);
            }
            .btn-12:hover span:nth-child(2) {
                box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
                    7px 7px 20px 0px rgba(0,0,0,.1),
                    4px 4px 5px 0px rgba(0,0,0,.1);
                color: transparent;
                -webkit-transform: rotateX(-90deg);
                -moz-transform: rotateX(-90deg);
                transform: rotateX(-90deg);
            }


            /* 13 */
            .btn-13 {
                background-color: #89d8d3;
                background-image: linear-gradient(315deg, #89d8d3 0%, #03c8a8 74%);
                border: none;
                z-index: 1;
            }
            .btn-13:after {
                position: absolute;
                content: "";
                width: 100%;
                height: 0;
                bottom: 0;
                left: 0;
                z-index: -1;
                border-radius: 5px;
                background-color: #4dccc6;
                background-image: linear-gradient(315deg, #4dccc6 0%, #96e4df 74%);
                box-shadow:
                    -7px -7px 20px 0px #fff9,
                    -4px -4px 5px 0px #fff9,
                    7px 7px 20px 0px #0002,
                    4px 4px 5px 0px #0001;
                transition: all 0.3s ease;
            }
            .btn-13:hover {
                color: #fff;
            }
            .btn-13:hover:after {
                top: 0;
                height: 100%;
            }
            .btn-13:active {
                top: 2px;
            }


            /* 14 */
            .btn-14 {
                background: rgb(255,151,0);
                border: none;
                z-index: 1;
            }
            .btn-14:after {
                position: absolute;
                content: "";
                width: 100%;
                height: 0;
                top: 0;
                left: 0;
                z-index: -1;
                border-radius: 5px;
                background-color: #eaf818;
                background-image: linear-gradient(315deg, #eaf818 0%, #f6fc9c 74%);
                box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
                7px 7px 20px 0px rgba(0,0,0,.1),
                4px 4px 5px 0px rgba(0,0,0,.1);
                transition: all 0.3s ease;
            }
            .btn-14:hover {
                color: #000;
            }
            .btn-14:hover:after {
                top: auto;
                bottom: 0;
                height: 100%;
            }
            .btn-14:active {
                top: 2px;
            }

            /* 15 */
            .btn-15 {
                background: #b621fe;
                border: none;
                z-index: 1;
            }
            .btn-15:after {
                position: absolute;
                content: "";
                width: 0;
                height: 100%;
                top: 0;
                right: 0;
                z-index: -1;
                background-color: #663dff;
                border-radius: 5px;
                box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
                    7px 7px 20px 0px rgba(0,0,0,.1),
                    4px 4px 5px 0px rgba(0,0,0,.1);
                transition: all 0.3s ease;
            }
            .btn-15:hover {
                color: #fff;
            }
            .btn-15:hover:after {
                left: 0;
                width: 100%;
            }
            .btn-15:active {
                top: 2px;
            }


            /* 16 */
            .btn-16 {
                border: none;
                color: #000;
            }
            .btn-16:after {
                position: absolute;
                content: "";
                width: 0;
                height: 100%;
                top: 0;
                left: 0;
                direction: rtl;
                z-index: -1;
                box-shadow:
                    -7px -7px 20px 0px #fff9,
                    -4px -4px 5px 0px #fff9,
                    7px 7px 20px 0px #0002,
                    4px 4px 5px 0px #0001;
                transition: all 0.3s ease;
            }
            .btn-16:hover {
                color: #000;
            }
            .btn-16:hover:after {
                left: auto;
                right: 0;
                width: 100%;
            }
            .btn-16:active {
                top: 2px;
            }
            .box-header {
                text-transform: capitalize;
                font-size: 1.25rem;
                font-weight: 700;
            }
        </style>

    </head>

    <body>
        <!-- header-->
        <jsp:include page="assets/module/header.jsp"></jsp:include>
            <!-- sidebar-->
        <jsp:include page="assets/module/sidebar.jsp"></jsp:include>


        <main  id="main">
            <section class="courses">
            <div class="container">
                <!-- ORDERS TABLE -->
                <div class="box">
                    <div class="section-title">
                        <h1 class="heading">The receiver information: </h1>
                    </div>
                    <div class="box-body overflow-scroll">


                        <div class="customer-in4">
                            <div class="user_in4"><h3>Your name: ${informationUserReservation.user_name}</h3></div>
                            <div class="user_in4"><h3>Your Gender: <c:if test="${informationUserReservation.user_gender == true}">
                                <dd class="col-sm-9"><h3>Male</h3></dd>
                            </c:if>
                            <c:if test="${informationUserReservation.user_gender == false}">
                                <dd class="col-sm-9"><h3>Female</h3></dd>
                            </c:if></h3></div>
                            
                            <div class="user_in4"><h3>Your email: ${informationUserReservation.user_email}</h3></div>
                            <div class="user_in4"><h3>Your Phone: ${informationUserReservation.user_phone}</h3></div>
                        </div>


                        <table style="margin-bottom: 50px;"> 

                            <div class="section-title"> 
                                <h1 class="heading">Your Reservation information: </h1>
                            </div> 
                            <thead>
                                <tr>
                                    <th>ID reservation</th>
                                    <th>Reservation date</th>
                                    <th>Total cost($)</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        ${informationReservation.reservation_id}
                                    </td>

                                    <td>
                                        ${informationReservation.created_date}
                                    </td>

                                    <td>
                                        ${informationReservation.total_price}
                                    </td>


                                    <c:if test="${informationReservation.reservation_status==1}">
                                        <td>
                                            <div class="payment-status payment-pending">
                                                <div class="dot"></div>
                                                <span>Pending</span>
                                            </div>
                                        </td>
                                    </c:if>

                                    <c:if test="${informationReservation.reservation_status==2}">
                                        <td>
                                            <div class="payment-status payment-paid">
                                                <div class="dot"></div>
                                                <span>Submitted</span>
                                            </div>
                                        </td>
                                    </c:if>

                                    <c:if test="${informationReservation.reservation_status==3}">
                                        <td>
                                            <div class="payment-status payment-paid">
                                                <div class="dot"></div>
                                                <span>Successful</span>
                                            </div>
                                        </td>
                                    </c:if>
                                    <c:if test="${informationReservation.reservation_id != null}">
                                        <td>  
                                            <a href="deletereservation?rid=${informationReservation.reservation_id}" class="delete" data-confirm="Are you sure to delete this reservtion?"> <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-calendar2-x" viewBox="0 0 16 16">
                                                <path d="M6.146 8.146a.5.5 0 0 1 .708 0L8 9.293l1.146-1.147a.5.5 0 1 1 .708.708L8.707 10l1.147 1.146a.5.5 0 0 1-.708.708L8 10.707l-1.146 1.147a.5.5 0 0 1-.708-.708L7.293 10 6.146 8.854a.5.5 0 0 1 0-.708z"/>
                                                <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z"/>
                                                <path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z"/>
                                                </svg></a>
                                        </td>
                                    </c:if>


                                </tr>

                            </tbody>
                        </table>   


                        <table> 
                            <div class="section-title"> 
                                    <h1 class="heading">List of reserved service:</h1> 
                                </div>
                            <thead>
                                <tr>
                                    <th>Thumbnail</th>
                                    <th>Service</th>
                                    <th>Reservation begin date</th>
                                    <th>Time to check up</th>
                                    <th>Unit price</th>
                                    <th>Quantity</th>
                                    <th>Children name</th>              
                                    <th>Doctor name</th>
                                    <th>Nurse name</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${requestScope.listServiceOfReservation}" var="LR">
                                    <tr>
                                        <td>
                                            <img src="./resouce/image/service/${LR.image}" width="100px">
                                        </td>

                                        <td>
                                            ${LR.service_title}
                                        </td>

                                        <td>
                                            ${LR.begin_time}
                                        </td>

                                        <c:if test="${LR.slot==1}">
                                            <td>
                                                <span class="order-status order-ready">
                                                    (7h30 - 9h)
                                                </span>
                                            </td>
                                        </c:if>
                                        <c:if test="${LR.slot==2}">
                                            <td>
                                                <span class="order-status order-ready">
                                                    ( 9h10 - 12h30 )
                                                </span>
                                            </td>
                                        </c:if>
                                        <c:if test="${LR.slot==3}">
                                            <td>
                                                <span class="order-status order-ready">
                                                    ( 12h30 - 15h20 )
                                                </span>
                                            </td>
                                        </c:if>
                                        <c:if test="${LR.slot==4}">
                                            <td>
                                                <span class="order-status order-ready">
                                                    ( 15h30 - 17h00 )
                                                </span>
                                            </td>
                                        </c:if>


                                        <td>
                                            ${LR.service_price}$
                                        </td>

                                        <td>
                                            ${LR.quantity}
                                        </td>

                                        <td>
                                            ${LR.children_name}
                                        </td>

                                        <td>
                                            ${LR.doctor_name}
                                        </td>

                                        <td>
                                            ${LR.nurse_name}
                                        </td>
                                        <c:if test="${LR.reservation_status==1}">
                                            <td><a href="edit-reservationinformation?rid=${LR.reservation_detail_id}"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-pen" viewBox="0 0 16 16">
                                                    <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 
                                                          4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
                                                    </svg></a></td>
                                                </c:if>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table> 
                    </div>
                </div>
                <!-- END ORDERS TABLE -->
            </div>
        </section>


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
            var deleteLinks = document.querySelectorAll('.delete');

            for (var i = 0; i < deleteLinks.length; i++) {
                deleteLinks[i].addEventListener('click', function (event) {
                    event.preventDefault();

                    var choice = confirm(this.getAttribute('data-confirm'));

                    if (choice) {
                        window.location.href = this.getAttribute('href');
                    }
                });
            }
        </script>
    </body>

</html>
