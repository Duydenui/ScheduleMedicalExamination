<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
            /* Right Sidebar Styles */
            .sidebar-right {
                float: right; /* Align the sidebar to the right */
                width: 300px; /* Set the width of the sidebar */
                background-color: var(--white); /* Background color for the sidebar */
                padding: 20px; /* Add some padding for spacing */
                margin-left: 20px; /* Add a margin to separate it from the main content */
            }

            /* Style for the "Latest Posts" section */
            .sidebar-widget h3 {
                font-size: 18px;
                margin-bottom: 10px;
                color: var(--black);
            }

            .sidebar-widget ul {
                list-style-type: none;
                padding: 0;
            }

            .sidebar-widget ul li {
                margin-bottom: 10px;
            }

            .sidebar-widget a {
                text-decoration: none;
                color: var(--black);
                transition: color 0.3s;
                font-size: 1.5rem;
            }

            .sidebar-widget a:hover {
                color: var(--main-color);
            }

            /* Style for the "Contacts/Links" section */
            .sidebar-widget:last-child {
                margin-top: 30px;
            }

            .sidebar-widget:last-child h3 {
                font-size: 18px;
                margin-bottom: 10px;
                color: var(--black);
            }

            .sidebar-widget:last-child ul {
                list-style-type: none;
                padding: 0;
            }

            .sidebar-widget:last-child ul li {
                margin-bottom: 10px;
            }

            .sidebar-widget:last-child a {
                text-decoration: none;
                color: var(--black);
                transition: color 0.3s;
            }

            .sidebar-widget:last-child a:hover {
                color: var(--main-color);
            }
            .sider-img {
                max-width: 100%;
                height: auto;
                vertical-align: middle;
                overflow-clip-margin: content-box;
                overflow: clip;
            }
            .home-grid .box-container {
                display: grid;
                grid-template-columns: repeat(auto-fit, 85.5rem);
                gap: 1.5rem;
                justify-content: center;
                align-items: flex-start;
            }
            .courses .nav-link.active {
                color: var(--main-color);
                background: none;
                border-bottom: 3px solid var(--main-color);
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
            @media (max-width: 768px) {
                .sidebar-right {
                    display: none; /* Hide the Latest Posts widget on small screens */
                }
            }
            .courses .tab-pane.active {
                -webkit-animation: fadeIn 0.5s ease-out;
                animation: fadeIn 0.5s ease-out;
            }
            .tab-content>.active {
                display: block;
            }

        </style>
    </head>

    <body>
        <!--    header-->
        <jsp:include page="assets/module/header.jsp"></jsp:include>
            <!--    sidebar-->
        <jsp:include page="assets/module/sidebar.jsp"></jsp:include>

            <!-- ======= Slider Section ======= -->
            <section id="hero-slider" class="hero-slider">
                <div class="slideshow-container" data-aos="fade-in">
                    <div class="swiper sliderFeaturedPosts">
                        <div class="swiper-wrapper">

                        <c:forEach items="${sliderList}" var="slide">

                            <div class="mySlides fade">
                                <div class="numbertext">${slide.notes}</div>
                                <a href="servicedetail?svid=${slide.service_id}"><img src="./resouce/image/service/${slide.image_link}" style="width:800px; height: 600px;"></a>
                                <div class="text">${slide.service_title}</div>
                            </div>

                        </c:forEach>
                        <a class="prevhome" onclick="plusSlides(-1)">&#10094;</a>
                        <a class="nexthome" onclick="plusSlides(1)">&#10095;</a>
                    </div>
                </div>
            </div>
        </section>
        <div style="display: flex;">
            <div>

                <!-- ======= About Section ======= -->
                <section class="home-grid">

                    <h1 class="heading">Welcome to Children's Care System</h1>

                    <div class="box-container">

                        <div class="box">
                            <div class="icon-box">
                                <div class="icon"><i class="fa-solid fa-fingerprint"></i></div>
                                <h3 class="title">24/7</h3>
                                <p class="likes">Always takes care your children anytime, anywhere.</p>
                            </div>
                            <div class="icon-box">
                                <div class="icon"><i class="fa-solid fa-gift"></i></div>
                                <h3 class="title">Best Services</h3>
                                <p class="likes">A team of prestigious and top quality doctors from Eastern Laos, Cambodia,
                                    Thailand,
                                    Malaysia...</p>
                            </div>
                            <div class="icon-box">
                                <div class="icon"><i class="fa-solid fa-atom"></i></div>
                                <h3 class="title">Very Cheap</h3>
                                <p class="likes">Don't worry about price. Here we have discount to 70% and sometimes free for
                                    broken
                                    children.</p>
                            </div>
                        </div>

                        <div class="box">
                            <h3 class="title">services</h3>
                            <div class="flex">
                                <a href="#"><i class="fa-solid fa-eye"></i><span>Eyes</span></a>
                                <a href="#"><i class="fa-solid fa-teeth-open"></i><span>Mouth</span></a>
                                <a href="#"><i class="fa-solid fa-socks"></i><span>Foot</span></a>
                                <a href="#"><i class="fa-solid fa-box-tissue"></i><span>Noose</span></a>
                                <a href="#"><i class="fa-solid fa-lungs"></i><span>Lung</span></a>
                                <a href="#"><i class="fa-solid fa-child"></i><span>Body</span></a>
                            </div>
                        </div>

                        <div class="box">
                            <h3 class="title">hot services</h3>
                            <div class="flex">
                                <a href="#"><i class="fa-solid fa-file"></i><span>General Liver Function Test Package</span></a>
                                <a href="#"><i class="fa-solid fa-id-card"></i><span>Apply SDF to prevent and prevent the development of tooth decay</span></a>
                                <a href="#"><i class="fa-solid fa-comment-dots"></i><span>Package for children under 8</span></a>
                            </div>
                        </div>

                    </div>
                    <!-- ======= Counts Section ======= -->
                    <div id="counts" class="counts">
                        <div class="container">

                            <div class="counts-box">

                                <div class="col-lg-3 col-md-6">
                                    <div class="count-box">
                                        <i class="fas fa-user-md"></i>
                                        <span data-purecounter-start="0" data-purecounter-end="85" data-purecounter-duration="1"
                                              class="purecounter"></span>
                                        <p>Doctors</p>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-6 mt-5 mt-md-0">
                                    <div class="count-box">
                                        <i class="far fa-hospital"></i>
                                        <span data-purecounter-start="0" data-purecounter-end="18" data-purecounter-duration="1"
                                              class="purecounter"></span>
                                        <p>Departments</p>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
                                    <div class="count-box">
                                        <i class="fas fa-flask"></i>
                                        <span data-purecounter-start="0" data-purecounter-end="12" data-purecounter-duration="1"
                                              class="purecounter"></span>
                                        <p>Research Labs</p>
                                    </div>
                                </div>

                                <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
                                    <div class="count-box">
                                        <i class="fas fa-award"></i>
                                        <span data-purecounter-start="0" data-purecounter-end="150" data-purecounter-duration="1"
                                              class="purecounter"></span>
                                        <p>Awards</p>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </section>

            </div>
            <!-- Right Sidebar -->
            <div>
                <aside class="sidebar-right">
                    <!-- Latest Posts -->
                    <div class="sidebar-widget">
                        <h3>Latest Posts</h3>
                        <ul>
                            <c:forEach items="${latestPosts}" var="post">
                                <li>
                                    <img class="sider-img" src="${post.blog_image}" alt="">
                                    <a href="blogdetail?bid=${post.blog_id}">${post.title}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>

                    <!-- Static Contacts/Links -->
                    <div class="sidebar-widget">
                        <ul>
                            <li>
                                <a href="feedback.jsp">Contact Us</a>
                            </li>
                            <li>
                                <a href="aboutcontrol">About Us</a>
                            </li>
                            <!-- Add more links as needed -->
                        </ul>
                    </div>
                </aside>  
            </div>
        </div>
        <!-- ======= Features services ======= -->
        <section class="courses" id="services">
            <div data-aos="fade-up">
                <div class="section-title">
                    <h1 class="heading">All Services</h1>
                </div>
                <ul class="service-cate">

                    <c:forEach items="${requestScope.categoryList}" var="cate">

                        <li class="service-icon">

                            <a class="nav-link" data-bs-toggle="tab" data-bs-target="#tab-${cate.category_id}"
                               href="home?cid=${cate.category_id}">
                                <i class="${cate.icon}"></i>
                                <h4>${cate.category_name}</h4>
                            </a>

                        </li>

                    </c:forEach>

                </ul>

                <div class="box-container">

                    <c:forEach items="${requestScope.list}" var="servicee">
                        <c:forEach items="${servicee}" var="service">

                            <div class="post-box" id="tab-${service.category_id}">
                                <div class="blog-item">
                                    <div class="tutor">
                                        <div class="title">
                                            <h1 style="font-size: 2rem;">${service.service_title}</h1>
                                        </div>
                                        <div>
                                            <div style="text-align: start">
                                                </br>
                                                <p style="font-size: 1.5rem;">${service.services_bi}</p>
                                                <p style="font-size: 1.5rem; color: red" class="fst-italic">Discount Price: ${service.service_discount}$</p>
                                                <p style="font-size: 1.5rem;">Old Price: ${service.service_price}$</p>
                                                <p style="font-size: 1.5rem;">Rate Star: ${service.service_rateStar} <i style="color: yellow" class="bi bi-star-fill"></i></p>
                                            </div>
                                            <img style="width: 300px; height: 250px;" src="./resouce/image/service/${service.image.get(0).getImage_link()}" alt="" class="img-fluid">
                                        </div>
                                        <div class="text-center mt-auto">
                                            <a href="servicedetail?svid=${service.service_id}" class="buy-btn">
                                                <h5>MORE DETAILS ...</h5>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </c:forEach>
                    </c:forEach>


                </div>
            </div>
        </section>
        <!-- ======= Hot Services ======= -->
        <section id="hotservices" class="courses">
            <div class="container" data-aos="fade-up">

                <div class="section-title">
                    <h1 class="heading">HOT SERVICES</h1>
                </div>
                <div class="box-container">
                    <c:forEach items="${ListHotService}" var="hots">
                        <div class="post-box">
                            <div class="blog-item" data-aos="zoom-in" data-aos-delay="200">

                                <div class="pricing-header" style="font-size: 3rem;">
                                    <h1 style="font-size: 2rem;">${hots.service_title}</h1>
                                    </br>
                                    <h4 style="font-size: 3rem; color: red"><sup>$</sup>${hots.service_price}<span style="color: var(--black)"> 3̶̶9̶̶9̶$</span></h4>
                                </div>

                                <div class="pricing-bi">
                                    <p  style="font-size: 2rem;">${hots.services_bi}</p>
                                </div>
                                </br>
                                <div class="pricing-star" style="font-size: 2rem;">${hots.service_rateStar} <i style="color: yellow" class="bi bi-star-fill"></i></div>
                                </br>
                                </br>
                                <div class="text-center mt-auto" style="font-size: 2rem;">
                                    <a href="servicedetail?svid=${hots.service_id}" class="inline-btn">view details</a>
                                </div>

                            </div>
                        </div>

                    </c:forEach>

                </div>
            </div>
        </section>

        <!-- ======= Recent Blog Posts Section ======= -->
        <section class="courses">
            <h1 class="heading">Childcare Blogs</h1>
            <div class="box-container">

                <c:forEach items="${blogList}" var="o">
                    <div class="post-box">
                        <div class="blog-item" data-aos="fade-up" data-aos-delay="200">
                            <div class="tutor">
                                <div class="title">
                                    <h1 style="font-size: 2rem;">${o.title}</h1>
                                    <h3>Hello</h3>
                                    <span>${o.blog_created_date}</span>
                                </div>
                            </div>
                            <div class="thumb">
                                <img class="blog-img" src="${o.blog_image}" alt="">
                            </div>
                            <h3>${o.bi}</h3>
                            <a href="blogdetail?bid=${o.blog_id}" class="inline-btn">view post</a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </section>
        <!--<div id="preloader"></div>-->
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>


        <!--               footer-->
        <jsp:include page="assets/module/footer.jsp"></jsp:include>
        <script>
            let toggleBtn = document.getElementById('toggle-btn');
            let body = document.body;
            let darkMode = localStorage.getItem('dark-mode');

            const enableDarkMode = () => {
                toggleBtn.classList.replace('fa-sun', 'fa-moon');
                body.classList.add('dark');
                localStorage.setItem('dark-mode', 'enabled');
            };

            const disableDarkMode = () => {
                toggleBtn.classList.replace('fa-moon', 'fa-sun');
                body.classList.remove('dark');
                localStorage.setItem('dark-mode', 'disabled');
            };

            if (darkMode === 'enabled') {
                enableDarkMode();
            }
            ;

            toggleBtn.onclick = (e) => {
                darkMode = localStorage.getItem('dark-mode');
                if (darkMode === 'disabled') {
                    enableDarkMode();
                } else {
                    disableDarkMode();
                }
            };

            let profile = document.querySelector('.header .flex .profile');

            document.querySelector('#user-btn').onclick = () => {
                profile.classList.toggle('active');
                search.classList.remove('active');
            };

            let search = document.querySelector('.header .flex .search-form');

            document.querySelector('#search-btn').onclick = () => {
                search.classList.toggle('active');
                profile.classList.remove('active');
            };

            let sideBar = document.querySelector('.side-bar');

            document.querySelector('#menu-btn').onclick = () => {
                sideBar.classList.toggle('active');
                body.classList.toggle('active');
            };

            document.querySelector('#close-btn').onclick = () => {
                sideBar.classList.remove('active');
                body.classList.remove('active');
            };

            window.onscroll = () => {
                profile.classList.remove('active');
                search.classList.remove('active');

                if (window.innerWidth < 1200) {
                    sideBar.classList.remove('active');
                    body.classList.remove('active');
                }
            };

            let slideIndex = 0;
            showSlides();

            function showSlides() {
                let i;
                const slides = document.querySelectorAll('.mySlides');
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = 'none';
                }
                slideIndex++;
                if (slideIndex > slides.length) {
                    slideIndex = 1;
                }
                slides[slideIndex - 1].style.display = 'block';
                setTimeout(showSlides, 5000); // Change slide every 5 seconds (adjust as needed)
            }

            // Function to change slides on button click
            function plusSlides(n) {
                slideIndex += n;
                const slides = document.querySelectorAll('.mySlides');
                if (slideIndex > slides.length) {
                    slideIndex = 1;
                } else if (slideIndex < 1) {
                    slideIndex = slides.length;
                }
                for (let i = 0; i < slides.length; i++) {
                    slides[i].style.display = 'none';
                }
                slides[slideIndex - 1].style.display = 'block';
            }
            ;
            function addToCardAsync(id) {
                axios.get('addtocardasync', {
                    params: {
                        id: id
                    }
                }).then((response) => {
                    // lấy data
                    document.getElementById("cart-number").innerHTML = response.data;
                    // cập nhật
                });
            }
        </script>
        <script src="assets/vendor/purecounter/purecounter.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>
        <script src="js/script.js"></script>
        <script src="assets/js/main.js"></script>

    </body>

</html>
