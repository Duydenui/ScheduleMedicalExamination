

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Child Care System</title>
        <link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
        <script src="js/jquery.dataTables.js"></script>
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
        <style>
            .main {
                padding-left: var(--sidebar-size);
            }

            .main-header {
                height: var(--main-header-height);
                display: flex;
                align-items: center;
                padding: 20px;
                background-color: var(--box-bg);
                box-shadow: var(--shadow);
            }

            .dark .main-header {
                border-bottom: 2px solid var(--border-color);
            }

            .mobile-toggle {
                display: none;
            }

            .main-title {
                text-transform: capitalize;
                font-size: 1.5rem;
            }

            .main-content {
                padding: 20px;
            }

            .box {
                background-color: var(--box-bg);
                padding: 20px;
                border: 0.5px solid var(--border-color);
                border-radius: var(--box-border-radius);
            }

            .box-hover:hover {
                border-color: var(--main-color);
            }

            .counter-title {
                margin-bottom: 20px;
                text-transform: capitalize;
            }

            .counter-info {
                display: flex;
                align-items: center;
                justify-content: space-between;
                font-size: 2rem;
                font-weight: 700;
            }

            .counter-info i {
                color: var(--main-color);
            }

            .box-header {
                text-transform: capitalize;
                font-size: 1.25rem;
                font-weight: 700;
            }

            .box-body {
                padding: 20px 0;
            }

            .product-list {
                list-style-type: none;
            }

            .product-list-item {
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 15px 0;
            }

            .item-info {
                display: flex;
                align-items: center;
            }

            .item-info img {
                width: 50px;
                height: 50px;
                border-radius: 10px;
                margin-right: 10px;
            }

            .product-name,
            .product-sales {
                font-weight: 600;
                text-transform: capitalize;
            }

            .product-name {
                margin-bottom: 5px;
            }

            .product-sales {
                margin-top: 5px;
            }

            .text-second {
                color: var(--text-second-color);
            }

            .item-sale-info {
                text-align: right;
            }

            .f-height {
                height: 100%;
            }

            table {
                width: 100%;
                min-width: 1000px;
            }

            .order-owner {
                display: flex;
                align-items: center;
                text-transform: capitalize;
                font-weight: 500;
            }

            .order-owner img {
                width: 45px;
                height: 45px;
                border-radius: 50%;
                margin-right: 15px;
            }

            table thead tr {
                text-align: left;
            }

            table th,
            table td {
                padding: 20px 0;
                border-bottom: 1px solid var(-border-color);
            }

            .order-status {
                padding: 5px 15px;
                border-radius: 5px;
                font-weight: 500;
            }

            .order-ready {
                color: #2a59d1;
                background-color: rgba(62, 121, 247, 0.1);
            }

            .order-shipped {
                color: #00ab6f;
                background-color: rgba(4, 209, 130, 0.1);
            }
            .order-shipped1 {
                color: #00ab6f;
                background-color: #FFCCFF;
            }

            .payment-status {
                display: flex;
                align-items: center;
            }

            .payment-status .dot {
                width: 10px;
                height: 10px;
                border-radius: 50%;
                margin-right: 10px;
            }

            .payment-paid .dot {
                background-color: green;
            }
            .payment-success .dot {
                background-color: pink;
            }
            
            .payment-pending .dot {
                background-color: #ffc542;
            }

            .overflow-scroll {
                overflow-y: auto;
            }

            .overlay {
                position: absolute;
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.7);
                display: none;
            }

            .overlay.active {
                display: block;
            }
            
            table thead tr {
                text-align: left;
            }

            table th,
            table td {
                padding: 20px 0;
                border-bottom: 1px solid var(--border);
                font-size: 1.5rem;
                color: var(--black);
                text-align: center;
            }
            
            .dataTables_length {
                font-size: 2rem;
                color: var(--black);
            }

            #examples_filter {
                font-size: 2rem;
                color: var(--black);
            }

            .previous, .next {
                cursor: pointer;
                width: auto;
                padding: 16px;
                color: var(--black);
                font-weight: bold;
                font-size: 18px;
                transition: 0.6s ease;
                border-radius: 0 3px 3px 0;
                user-select: none;
                border: var(--border);
                background-color: var(--white);
            }

            .paginate_button {
                color: var(--black);
                padding: 1rem;
                font-size: 2rem;
                font-weight: bold;
                transition: 0.6s ease;
                border-radius: 0 3px 3px 0;
                user-select: none;
            }

            .dataTables_info {
                font-size: 1.5rem;
                margin: 2rem;
                color: var(--black);
            }

            #examples {
                background-color: var(--white);
                border-radius: .5rem;
                padding: 2rem;
                width: 100%;
                margin-top: 5rem;
            }

            .sorting{
                color: #fff;
                background-color: #8e44ad;
                text-align: center;
            }
        </style>

    </head>

    <body>

        <!-- header-->
        <jsp:include page="assets/module/header.jsp"></jsp:include>
            <!-- sidebar-->
        <jsp:include page="assets/module/sidebar.jsp"></jsp:include>

        <main id="main">

            <section class="">
                <div class="container">
                    <div class="col-md-12">
                        <div class="col-md-12">
                            <!-- ORDERS TABLE -->
                            <div class="box">
                                <div class="heading">
                                    Medical Examination
                                </div>
                                <div class="box-body overflow-scroll" style=" overflow-y: auto;">
                                    <table id="examples">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Service</th>
                                                <th>Time To Check Up</th>
                                                <th>Status</th>
                                                <th>Total Cost</th>
                                                <th>Note</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach  items="${requestScope.reserList}" var="reservation">


                                                <tr>
                                                    <td>#ID: ${reservation.reservation_id}</td>
                                                    <td>
                                                        <div class="order-owner">

                                                            <span class="order-status order-ready">${reservation.service_title}</span>
                                                        </div>
                                                    </td>
                                                    <c:if test="${reservation.slot==1}">
                                                        <td>
                                                            <span class="order-status order-ready">
                                                                (7h30 - 9h) - ${reservation.begin_time}
                                                            </span>
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${reservation.slot==2}">
                                                        <td>
                                                            <span class="order-status order-ready">
                                                                ( 9h10 - 12h30 ) - ${reservation.begin_time}  
                                                            </span>
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${reservation.slot==3}">
                                                        <td>
                                                            <span class="order-status order-ready">
                                                                ( 12h30 - 15h20 ) - ${reservation.begin_time}  
                                                            </span>
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${reservation.slot==4}">
                                                        <td>
                                                            <span class="order-status order-ready">
                                                                ( 15h30 - 17h00 ) - ${reservation.begin_time}  
                                                            </span>
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${reservation.reservation_status==1}">
                                                        <td>
                                                            <div class="payment-status payment-pending">
                                                                <div class="dot"></div>
                                                                <span>Pending</span>
                                                            </div>
                                                        </td>
                                                    </c:if>

                                                    <c:if test="${reservation.reservation_status==2}">
                                                        <td>
                                                            <div class="payment-status payment-paid">
                                                                <div class="dot"></div>
                                                                <span>Submitted</span>
                                                            </div>
                                                        </td>
                                                    </c:if>

                                                    <c:if test="${reservation.reservation_status==3}">
                                                        <td>
                                                            <div class="payment-status payment-paid">
                                                                <div class="dot"></div>
                                                                <span>Cancel</span>
                                                            </div>
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${reservation.reservation_status==4}">
                                                        <td>
                                                            <div class="payment-status payment-success">
                                                                <div class="dot"></div>
                                                                <span>Success</span>
                                                            </div>
                                                        </td>
                                                    </c:if>
                                                        <td style="padding-left: 20px;padding-right: 20px">$${reservation.total_price}</td>
                                                    <td>
                                                        <span class="">${reservation.note}</span>
                                                    </td>
                                                    <td>
                                                        <a href="/Child-care-system/addexamination?res_id=${reservation.reservation_id}">
                                                            <div class="payment-status order-shipped">
                                                                <div class="dot"></div>
                                                                <span>Add examination</span>
                                                            </div>
                                                        </a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- END ORDERS TABLE -->
                        </div>

                    </div>
                </div>
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
        $(document).ready(function () {
            $('#examples').DataTable();
        });
    </script>

    </body>

</html>