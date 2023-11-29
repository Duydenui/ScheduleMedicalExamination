<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Services</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

        <!--<link href="css/bootstraps.css" rel="stylesheet">-->
        <link href="assets/img/child-care-icon.png" rel="icon" type="images/png">
        <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <link rel="stylesheet" href="css/homestyle1.css">
        <style>
            .inline-btn {
                display: inline-block;
                padding: 10px 15px;
                text-align: center;
                text-decoration: none;
                color: #ffffff;
                border-radius: 5px;
                cursor: pointer;
            }

            .view-service {
                background-color: #007bff; /* Blue color */
            }

            .booking {
                background-color: #28a745; /* Green color */
            }

        </style>
        <jsp:useBean id="a" class="DAO.ServicesDAO" scope="request"></jsp:useBean>
        </head>
        <body>
            <!--    header-->
            <header class="header">
                <section class="flex">
                    <a href="home" class="logo">Children Care</a>
                    <form action="searchservice" method="post" class="search-form">
                        <input type="text" name="servicename" required placeholder="search service..." maxlength="100">
                        <button type="submit" class="fas fa-search"></button>
                    </form>
                    <a class="me-3 m-auto" href="reservation-detail" style="color: var(--white);">
                        <i style="font-size: 30px; color: var(--white);" class="fas fa-shopping-cart"></i>
                        <span style="color: var(--white);" id="cart-number" class="cart-number">
                        <c:choose>
                            <c:when test="${sessionScope.carts.size() != null}">
                                <c:out value="${sessionScope.carts.size()}" />
                            </c:when>
                            <c:otherwise>0</c:otherwise>
                        </c:choose>
                        <span class="visually-hidden" style="display: none;">Cart item</span>
                    </span>
                </a>
                <div class="icons">
                    <div id="menu-btn" class="fas fa-bars"></div>
                    <div id="search-btn" class="fas fa-search"></div>
                    <div id="user-btn" class="fas fa-user"></div>
                    <div id="toggle-btn" class="fas fa-sun"></div>
                </div>
                <div class="profile">
                    <c:if test="${sessionScope.account != null || sessionScope.admin != null}">
                        <c:choose>
                            <c:when test="${sessionScope.account != null}">
                                <a href="profile.jsp" class="">
                                    <img src="./resouce/image/${sessionScope.account.user_image}" class="image" alt="">
                                    <h3 class="name">${sessionScope.account.user_name}</h3>
                                    <p class="role">${sessionScope.account.user_role}</p>
                                </a>
                            </c:when>
                            <c:when test="${sessionScope.admin != null}">
                                <a href="profile.jsp" class="">
                                    <img src="./resouce/image/${sessionScope.admin.user_image}" class="image" alt="">
                                    <h3 class="name">${sessionScope.admin.user_name}</h3>
                                    <p class="role">${sessionScope.admin.user_role}</p>
                                </a>
                            </c:when>
                        </c:choose>
                        <a href="logout" class="option-btn">Logout</a>
                    </c:if>
                    <c:if test="${sessionScope.account == null && sessionScope.admin == null}">
                        <div class="flex-btn">
                            <a href="login.jsp" class="option-btn">Login</a>
                            <a href="register.jsp" class="option-btn">Register</a>
                        </div>
                    </c:if>
                </div>


            </section>
        </header>
        <!--    sidebar-->
        <jsp:include page="assets/module/sidebar.jsp"></jsp:include>  

            <section class="courses">
                <h1 class="heading">Childcare Service</h1>
                <div class="box">
                    <div class="flex">
                    <c:forEach items="${listC}" var="o">
                        <a href="servicecategory?cid=${o.category_id}"><span class="text-large">${o.category_name}</span></a>
                        </c:forEach>
                </div>
            </div>
            <div class="box-container">

                <c:forEach items="${listSV}" var="i" varStatus="loop">
                    <div class="post-box">
                        <div class="blog-item" data-date="">
                            <div class="tutor">
                                <div class="title">
                                    <h2>${i.service_title}</h2>
                                </div>

                            </div>
                            <div class="thumb">
                                <img class="blog-img" src="./resouce/image/service/${i.image_link}" alt="">
                            </div>
                            <div class="info">
                                <h2>${i.service_bi}</h2>
                            </div>

                            <h2 class="original-price">Giá gốc: <del>${i.service_price}</del></h2>
                            <h2 class="discounted-price">Giá ưu đãi: ${i.service_discount}</h2>

                            <div style="display: flex; justify-content: space-around;">
                                <a href="servicedetail?svid=${i.service_id}" class="inline-btn view-service">view service</a>
                                <button onclick="addToCardAsync(${i.service_id})" class="inline-btn booking" type="button">Book Service</button>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </section>


        <style>
            /* Đặt CSS của bạn ở đây */
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

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropbtn {
                background-color: #fff;
                color: #333;
                padding: 10px;
                border: none;
                cursor: pointer;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .dropdown-content a {
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                cursor: pointer;
            }

            .dropdown-content a:hover {
                background-color: #ddd;
            }

            .dropdown:hover .dropdown-content {
                display: block;
            }

            .dropdown:hover .dropbtn {
                background-color: #f1f1f1;
            }
            body{
                margin-top:20px;
            }
            .blog-grid {
                position: relative;
                box-shadow: 0 1rem 1.75rem 0 rgba(45, 55, 75, 0.1);
                height: 100%;
                border: 0.0625rem solid rgba(220, 224, 229, 0.6);
                border-radius: 0.25rem;
                transition: all .2s ease-in-out;
                height: 100%
            }

            .blog-grid span {
                color: #292dc2
            }

            .blog-grid img {
                width: 100%;
                border-top-left-radius: 0.25rem;
                border-top-right-radius: 0.25rem
            }

            .blog-grid-text {
                position: relative
            }

            .blog-grid-text>span {
                color: #292dc2;
                font-size: 13px;
                padding-right: 5px
            }

            .blog-grid-text h4 {
                line-height: normal;
                margin-bottom: 15px
            }

            .blog-grid-text .meta-style2 {
                border-top: 1px dashed #cee1f8;
                padding-top: 15px
            }

            .blog-grid-text .meta-style2 ul li {
                margin-bottom: 0;
                font-weight: 500
            }

            .blog-grid-text .meta-style2 ul li:last-child {
                margin-right: 0
            }

            .blog-grid-text ul {
                margin: 0;
                padding: 0
            }

            .blog-grid-text ul li {
                display: inline-block;
                font-size: 14px;
                font-weight: 500;
                margin: 5px 10px 5px 0
            }

            .blog-grid-text ul li:last-child {
                margin-right: 0
            }

            .blog-grid-text ul li i {
                font-size: 14px;
                font-weight: 600;
                margin-right: 5px
            }

            .blog-grid-text p {
                font-weight: 400;
                padding: 0
            }

            .blog-list-left-heading:after,
            .blog-title-box:after {
                content: '';
                height: 2px
            }

            .blog-grid-simple-content a:hover {
                color: #1d184a
            }

            .blog-grid-simple-content a:hover:after {
                color: #1d184a
            }
            .blog-grid-text {
                position: relative
            }

            .blog-grid-text>span {
                color: #292dc2;
                font-size: 13px;
                padding-right: 5px
            }

            .blog-grid-text h4 {
                line-height: normal;
                margin-bottom: 15px
            }

            .blog-grid-text .meta-style2 {
                border-top: 1px dashed #cee1f8 !important;
                padding-top: 15px
            }

            .blog-grid-text .meta-style2 ul li {
                margin-bottom: 0;
                font-weight: 500
            }

            .blog-grid-text .meta-style2 ul li:last-child {
                margin-right: 0
            }

            .blog-grid-text ul {
                margin: 0;
                padding: 0
            }

            .blog-grid-text ul li {
                display: inline-block;
                font-size: 14px;
                font-weight: 500;
                margin: 5px 10px 5px 0
            }

            .blog-grid-text ul li:last-child {
                margin-right: 0
            }

            .blog-grid-text ul li i {
                font-size: 14px;
                font-weight: 600;
                margin-right: 5px
            }

            .blog-grid-text p {
                font-weight: 400;
                padding: 0
            }

            a, a:active, a:focus {
                color: #575a7b;
                text-decoration: none;
                transition-timing-function: ease-in-out;
                -ms-transition-timing-function: ease-in-out;
                -moz-transition-timing-function: ease-in-out;
                -webkit-transition-timing-function: ease-in-out;
                -o-transition-timing-function: ease-in-out;
                transition-duration: .2s;
                -ms-transition-duration: .2s;
                -moz-transition-duration: .2s;
                -webkit-transition-duration: .2s;
                -o-transition-duration: .2s;
            }

            .pagination {
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .pagination ul {
                list-style: none;
                padding: 0;
                display: flex;
                gap: 10px;
            }

            .pagination ul li {
                font-size: 14px;
                background-color: var(--main-color);
                color: #fff;
                border-radius: 4px;
                cursor: pointer;
                transition: background-color 0.3s;
            }

            .pagination ul li:hover {
                background-color: #0056b3;
            }

            .pagination ul li.active {
                background-color: var(--main-color);
            }

            .pagination ul li a {
                display: block;
                padding: 8px 12px;
                text-decoration: none;
                color: #fff;
            }

            .pagination ul li.active a {
                font-weight: bold;
            }

            .mt-6, .my-6 {
                margin-top: 3.5rem;
            }
            .original-price del {
                text-decoration: line-through; /* Thêm dấu gạch ngang */
                color: #999; /* Màu sắc của giá gốc */
                font-size: 14px; /* Kích thước chữ của giá gốc */
                /* Các thuộc tính khác (nếu cần) */
            }
            .inline-btn.view-service {
                display: block; /* Hiển thị trên một dòng riêng */
            }
            .inline-btn.booking,
            .inline-btn.feedback {
                display: inline-block; /* Hiển thị trên cùng một hàng */
                vertical-align: middle; /* Căn giữa theo chiều dọc */
            }
            .text-large {
                font-size: 20px; /* Thay đổi kích thước chữ theo ý muốn */
                margin-right: 15px;
            }

            .back-to-top.active {
                visibility: visible;
                opacity: 1;
            }
            .back-to-top {
                position: fixed;
                visibility: hidden;
                opacity: 0;
                right: 110rem;
                bottom: 10rem;
                z-index: 996;
                background: var(--main-color);
                width: 40px;
                height: 40px;
                border-radius: 4px;
                transition: all 0.4s;
            }
            .back-to-top i {
                font-size: 28px;
                color: #fff;
                line-height: 0;
            }
        </style>
        <div class="row mt-6 wow fadeInUp" data-wow-delay=".6s" style="visibility: visible; animation-delay: 0.6s; animation-name: fadeInUp;">
            <div class="col-12">
                <div class="pagination text-small text-uppercase text-extra-dark-gray">
                    <ul>
                        <c:forEach begin="1" end="${a.numberPage}" var="i">  
                            <li class="active"><a href="servicelistpaging?index=${i}">${i}</a></li>  
                            </c:forEach>  
                    </ul>
                </div>
            </div>
        </div>

        <jsp:include page="assets/module/footer.jsp"></jsp:include>
        <div id="preloader"></div>
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/purecounter/purecounter.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <script src="js/script.js"></script>
        <script src="js/script1.js"></script>
        <script>
                                    function searchByName(param) {
                                        var txtSearch = param.value;
                                        $.ajax({
                                            url: "/project_swp391/searchserviceajax",
                                            type: "get", //send it through get method
                                            data: {
                                                txt: txtSearch
                                            },
                                            success: function (data) {
                                                var row = document.getElementById("content");
                                                row.innerHTML = data;
                                            },
                                            error: function (xhr) {
                                                //Do Something to handle error
                                            }
                                        });
                                    }
                                    function loadCate(data) {
                                        var cate = data.value;
                                        $.ajax({
                                            url: "/project_swp391/servicesbycate",
                                            type: "get", //send it through get method
                                            data: {
                                                cate: cate
                                            },
                                            success: function (data) {
                                                var row = document.getElementById("content");
                                                row.innerHTML = data;
                                            },
                                            error: function (xhr) {
                                                //Do Something to handle error
                                            }
                                        });
                                    }

                                    $(document).ready(function () {
                                        $(window).scroll(function () {
                                            if ($(window).scrollTop() > $(document).height() - $(window).height() - 1) {
                                                var amount = document.getElementsByClassName("services").length;
                                                $.ajax({
                                                    url: "/project_swp391/lazyloadingservices",
                                                    type: "get",
                                                    data: {
                                                        exist: amount
                                                    },
                                                    success: function (data) {
                                                        var row = document.getElementById("content");
                                                        row.innerHTML += data;
                                                    }
                                                });
                                            }
                                        });
                                    });
//                                    function addToCardAsync(id) {
//                                        axios.get('addtocardasync', {
//                                            params: {
//                                                id: id
//                                            }
//                                        }).then((response) => {
//                                            console.log(response);
//                                            // lấy data
//                                            document.getElementById("cart-number").innerHTML = response.data;
//                                            // cập nhật
//                                        })
//                                        window.location.href = 'reservation-contact?id=' + id;
//                                    }
                                    function addToCardAsync(id) {
                                        axios.get('addtocardasync', {
                                            params: {
                                                id: id
                                            }
                                        }).then((response) => {
                                            console.log(response);
                                            // lấy data
                                            document.getElementById("cart-number").innerHTML = response.data;
                                            // Sau khi nhận phản hồi thành công, thực hiện chuyển hướng
                                            window.location.href = 'reservation-contact?id=' + id;
                                        }).catch((error) => {
                                            console.error(error);
                                        });
                                    }



        </script>

    </body>
</html>

