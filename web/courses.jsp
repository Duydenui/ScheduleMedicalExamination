<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Blogs</title>

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

    </head>
    <body>
        <!--    header-->
        <jsp:include page="assets/module/header.jsp"></jsp:include>
            <!--    sidebar-->
        <jsp:include page="assets/module/sidebar.jsp"></jsp:include>
        <jsp:useBean id="a" class="DAO.BlogsDAO" scope="request"></jsp:useBean>

            <section class="courses">
                <a href="bloglist" class="heading">Childcare Blogs</a>
                <section class="categories">
                <c:forEach items="${listC}" var="o"> 
                    <li><a href="blogcategory?cid=${o.category_id}">${o.category_name}</a></li>
                    </c:forEach>
            </section>


            <!-- Thêm menu thả xuống sắp xếp -->
            <div class="dropdown">
                <button class="dropbtn">Sắp xếp</button>
                <div class="dropdown-content">
                    <a href="#" onclick="sortPostsByDate('newest')">Ngày mới nhất</a>
                    <a href="#" onclick="sortPostsByDate('oldest')">Ngày cũ nhất</a>
                </div>
            </div>
            <div class="box-container">
                
                    <c:forEach items="${listB}" var="o" varStatus="loop">
                        <div class="post-box">
                        <div class="blog-item" data-date="${o.blog_created_date}">
                            <div class="tutor">
                                <div class="title">
                                    <h2>${o.title}</h2>
                                </div>                                  
                            </div>
                                    <div>${o.blog_created_date}</div>
                            <div class="thumb">
                                <img class="blog-img" src="${o.blog_image}" alt="">
                            </div>
                            <div class="info">
                                <h2 class="title">${o.bi}</h2>
                            </div>
                            
                            <a href="blogdetail?bid=${o.blog_id}" class="inline-btn">view post</a>
                        </div>
                        </div>
                    </c:forEach>
                
            </div>
        </section>


        <style>
            /* Đặt CSS của bạn ở đây */
            .box {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
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
                border-radius: 0;
                padding: 0;
                margin: 0
            }

            .pagination ul {
                display: inline-block;
                *display: inline;
                *zoom: 1;
                margin: 0 auto;
                padding: 0
            }

            .pagination li {
                display: inline
            }

            .pagination a {
                float: left;
                padding: 0 18px;
                line-height: 40px;
                text-decoration: none;
                border: 1px solid #dbdbdb;
                border-left-width: 0;
                background: #fff
            }

            .pagination a:hover {
                background-color: #1d184a;
                color: #fff
            }

            .pagination .active a {
                background-color: #f7f7f7;
                color: #999;
                cursor: default
            }

            .pagination .disabled span {
                color: #999;
                background-color: transparent;
                cursor: default
            }

            .pagination .disabled a {
                color: #999;
                background-color: transparent;
                cursor: default
            }

            .pagination .disabled a:hover {
                color: #999;
                background-color: transparent;
                cursor: default
            }

            .pagination li:first-child a {
                border-left-width: 1px
            }

            .mt-6, .my-6 {
                margin-top: 3.5rem;
                /*                category*/
                .category {
                    display: inline-block;
                    margin-right: 10px;
                    padding: 5px 10px;
                    background-color: #f2f2f2;
                    border: 1px solid #ccc;
                    border-radius: 5px;
                    cursor: pointer;
                    transition: background-color 0.3s ease;
                }

                .category:hover {
                    background-color: #ddd;
                }

                .categories {
                    display: flex;
                    list-style: none;
                    padding: 0;
                }

                .categories li {
                    margin-right: 10px; /* Khoảng cách giữa các mục category */
                }





            </style>
            <div class="row mt-6 wow fadeInUp" data-wow-delay=".6s" style="visibility: visible;
                 animation-delay: 0.6s;
                 animation-name: fadeInUp;">
                <div class="col-12">
                    <div class="pagination text-small text-uppercase text-extra-dark-gray">
                        <ul>
                            <c:forEach begin="1" end="${a.numberPage}" var="i">  
                                <li class="active"><a href="bloglistpaging?index=${i}">${i}</a></li>  
                                </c:forEach>  
                        </ul>
                    </div>
                </div>
            </div>


            <!--               footer-->
            <jsp:include page="assets/module/footer.jsp"></jsp:include>
            <script>
                function sortPostsByDate(order) {
                    const blogList = document.querySelector(".box");
                    const posts = [...blogList.getElementsByClassName("blog-item")];

                    posts.sort((a, b) => {
                        const dateA = new Date(a.getAttribute("data-date"));
                        const dateB = new Date(b.getAttribute("data-date"));

                        if (order === "oldest") {
                            return dateA - dateB; // Sắp xếp tăng dần theo ngày đăng (cũ nhất trước)
                        } else if (order === "newest") {
                            return dateB - dateA; // Sắp xếp giảm dần theo ngày đăng (mới nhất trước)
                        }
                    });

                    // Xóa tất cả các mục trong danh sách
                    while (blogList.firstChild) {
                        blogList.removeChild(blogList.firstChild);
                    }

                    // Thêm lại các mục đã được sắp xếp
                    posts.forEach(post => blogList.appendChild(post));
                }
            </script>

            <script src="js/script.js"></script>
            <script src="assets/vendor/purecounter/purecounter.js"></script>
            <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
            <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
            <script src="assets/vendor/php-email-form/validate.js"></script>

        </body>
    </html>
