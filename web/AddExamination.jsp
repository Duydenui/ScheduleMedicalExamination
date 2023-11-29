
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
        </style>

    </head>

    <body>

        <!-- header-->
        <jsp:include page="assets/module/header.jsp"></jsp:include>
            <!-- sidebar-->
        <jsp:include page="assets/module/sidebar.jsp"></jsp:include>


        <main  id="main">
            <section class="courses">
                <!-- ORDERS TABLE -->
                <div class="container">
                <div class="box">
                    <div class="section-title">
                        <h1 class="heading">The receiver information: </h1>
                    </div>
                    <div class="box-body overflow-scroll">


                        <div class="customer-in4">
                            <div class="user_in4"><h3>Parent name: ${informationUserReservation.user_name}</h3></div>
                            <div class="user_in4"><h3>Parent email: ${informationUserReservation.user_email}</h3></div>
                            <div class="user_in4"><h3>Parent Phone: ${informationUserReservation.user_phone}</h3></div>
                        </div>
                        <form action="successreservation">
                            <input type="hidden" name="res_id" value="${informationReservation.reservation_id}">
                        <button type="submit" class="cancel-btn">Completed</button>
                        
                        </form>

                        <table style="margin-bottom: 50px;"> 

                            <div class="section-title"> 
                                    <h1 class="heading">Reservation information:</h1>
                                </div> 
                            <thead>
                                <tr>
                                    <th>ID reservation</th>
                                    <th>Reservation date</th>
                                    <th>Time to check up</th>
                                    <th>Total cost</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>${informationReservation.reservation_id}</td>
                                    <td>
                                        ${informationReservation.created_date}
                                    </td>

                                    <c:if test="${informationReservation.reservation_slot==1}">
                                        <td>
                                            <span class="order-status order-ready">
                                                (7h30 - 9h)
                                            </span>
                                        </td>
                                    </c:if>
                                    <c:if test="${informationReservation.reservation_slot==2}">
                                        <td>
                                            <span class="order-status order-ready">
                                                ( 9h10 - 12h30 )
                                            </span>
                                        </td>
                                    </c:if>
                                    <c:if test="${informationReservation.reservation_slot==3}">
                                        <td>
                                            <span class="order-status order-ready">
                                                ( 12h30 - 15h20 )
                                            </span>
                                        </td>
                                    </c:if>
                                    <c:if test="${informationReservation.reservation_slot==4}">
                                        <td>
                                            <span class="order-status order-ready">
                                                ( 15h30 - 17h00 )
                                            </span>
                                        </td>
                                    </c:if>


                                    <td>
                                        ${informationReservation.total_price}$
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

                                </tr>

                            </tbody>
                        </table>

                                   
                            <table> 
                                <div class="section-title"> 
                                    <h1 class="heading">List of reserved service</h1> 
                                </div>
                                <thead>
                                    <tr>
                                        <th>Thumbnail</th>
                                        <th>Service</th>
                                        <th>Children</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${requestScope.listServiceOfReservation}" var="LR">
                                         <form action="addmedicine" method="get">
                                        <tr>
                                    <input type="hidden" name="reservation_id" value="${LR.reservation_id}">
                                    <input type="hidden" name="service_id" value="${LR.service_id}">
                                    <td><img src="./resouce/image/service/${LR.service_image}" width="100px"></td>
                                    <td>
                                        ${LR.service_name}
                                    </td>
                                    <td >
                                        <select name="child_id" style="width: 300px" class="selectpicker" data-style="btn-info">
                                            
                                            <c:forEach items="${LR.getListChil()}" var="i">
                                                <c:if test="${i.children_gender == true}">
                                                    <option value="${i.children_id}">${i.children_name}- Male -${i.children_age}</option>
                                                </c:if>
                                                <c:if test="${i.children_gender == false}">
                                                    <option value="${i.children_id}">${i.children_name}- Male -${i.children_age}</option>
                                                </c:if>
                                            </c:forEach>
                                        </select>
                                    </td>
                                    <td>
                                        <button type="submit" class="btn btn-info">Add Medicine</button>
                                    </td>
                                    </tr>
                                    </form> 
                                </c:forEach>

                                </tbody>
                            </table> 
                                   

                    </div>
                </div>
                                    </div>
                <!-- END ORDERS TABLE -->
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

    </body>

</html>


