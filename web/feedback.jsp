<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Feedback</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

        <link rel="stylesheet" href="css/homestyle.css">
        <!--<link href="css/bootstraps.css" rel="stylesheet">-->
        <link href="assets/img/child-care-icon.png" rel="icon" type="images/png">
        <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    </head>
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
            width: 190px; /* Set the width of the sidebar */
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
        /* Add styles for the form container */
        .form-container {
            background-color: #f4f4f4;
            padding: 20px;
            border-radius: 5px;
            max-width: 500px;
            margin: 0 auto;
        }

        /* Add styles for form headings */
        .form-container h3 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }

        /* Add styles for form labels */
        .labels {
            font-weight: bold;
            margin-bottom: 5px;
        }

        /* Add styles for text input fields */
        .form-control {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        /* Add styles for radio buttons and labels */
        .labels input[type="radio"] {
            margin-right: 5px;
            vertical-align: middle;
        }

        .labels label {
            margin-right: 10px;
            font-weight: normal;
        }

        /* Add styles for the Upload Image button */
        .input[type="file"] {
            display: none;
        }

        .card-body {
            padding: 5px;
            border: var(--border);
        }
        /* Style for Categories card */
        .card-header {
            background-color: var(--white);
            color: var(--black);
            font-weight: bold;
            padding: 10px;
            font-size: 3rem;
        }

        .card-body ul {
            list-style: none;
            padding: 0;
        }

        .card-body li {
            margin-bottom: 8.3rem;
        }

        .card-body a {
            text-decoration: none;
            color: var(--black);
            font-size: 2rem;
            margin: 7rem;
        }

        .card-body a:hover {
            color: var(--main-color);
        }
    </style>

    <body>
        <!--    header-->
        <jsp:include page="assets/module/header.jsp"></jsp:include>
            <!--    sidebar-->
        <jsp:include page="assets/module/sidebar.jsp"></jsp:include>

            <section class="contact">

                <div class="row" style="display: flex; justify-content: space-between">

                    <div class="image">
                        <img src="images/contact-img.svg" alt="">
                    </div>
                    <div>
                        <form action="feedback" method="post">
                            <h3>GIVE YOUR FEEDBACK</h3>
                            <div>
                                <div class="box">
                                    <input type="hidden" name="user_id" value="${user.user_id}">
                                <input type="hidden" name="res_id" value="${res_id}">
                                <input type="text" name="name" value="${user.user_name}" class="form-control" id="name"
                                       placeholder="Your Name" required>
                            </div>
                            <div class="box">
                                <input type="email" class="form-control" value="${user.user_email}" name="email" id="email"
                                       placeholder="Your Email" required>
                            </div>
                        </div>
                        <div class="box"><label class="labels">Gender: </label><br>
                            <c:choose>
                                <c:when test="${user != null}">
                                    <c:if test="${user.user_gender == true}">
                                        <input checked name="gender" type="radio" value="1"> Male
                                        <input name="gender" type="radio" value="0"> Female
                                    </c:if>
                                    <c:if test="${user.user_gender == false}">
                                        <input name="gender" type="radio" value="1"> Male
                                        <input checked name="gender" checked="checked" type="radio" value="0"> Female
                                    </c:if>
                                </c:when>
                                <c:otherwise>
                                    <input name="gender" type="radio" value="1"> Male
                                    <input name="gender" type="radio" value="0"> Female
                                </c:otherwise>
                            </c:choose>
                            <script>
                                document.addEventListener("DOMContentLoaded", function () {
                                    document.getElementsByName('gender')[0].checked = true;
                                });

                            </script>

                        </div>
                        <div class="box">
                            <input type="tel" pattern="[0-9\-\+]{9,15}" type="text" class="form-control" name="phone"
                                   value="${user.user_phone}" id="subject" placeholder="Phone" required>
                        </div>

                        <div class="box">
                            <textarea class="form-control" name="note" rows="5" placeholder="Feedback" required></textarea>
                        </div>
                        <div class="box">
                            <select name="star">
                                <option value="1">1 SAO</option>
                                <option value="2">2 SAO</option>
                                <option value="3">3 SAO</option>
                                <option value="4">4 SAO</option>
                                <option value="5">5 SAO</option>
                            </select>
                        </div>
                        <div class="box">
                            <label class="labels">
                                UPLOAD IMAGE<img class="o rounded-circle mt-5" width="100px" height="100px"
                                                 src="data:image/png;base64,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">
                                <input accept="image/*" hidden="hidden" name="image" type="file" class="form-control" value="">
                            </label>
                        </div>
                        <button class="inline-btn" type="submit">FeedBack</button>
                    </form>
                </div>
                <div>
                    <div>
                        <!-- Search widget-->
                        <div>
                            <div class="card-header">Search</div>
                            <div class="card-body">
                                <form action="searchblogonfeedback">
                                    <div class="input-group">
                                        <input class="form-control" type="text" name="search_box" placeholder="Enter search term..." aria-label="Enter search term..." aria-describedby="button-search" />
                                        <button class="btn btn-primary" id="button-search" type="submit">Go!</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- Categories widget-->
                        <div>
                            <div class="card-header">Categories</div>
                            <div class="card-body">
                                <div class="row">
                                    <div>
                                        <ul>
                                            <c:forEach items="${listC}" var="o">
                                                <li><a href="blogcategory?cid=${o.category_id}">${o.category_name}</a></li>
                                                </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Side widget-->

                    </div> 
                </div>
            </div>

            <div class="box-container">

                <div class="box">
                    <i class="fas fa-phone"></i>
                    <h3>phone number</h3>
                    <a href="tel:0334230359">033-423-0359</a>
                    <a href="tel:0334230359">033-423-0359</a>
                </div>

                <div class="box">
                    <i class="fas fa-envelope"></i>
                    <h3>email address</h3>
                    <a href="mailto:trungddhe171481@fpt.edu.vn">trungddhe171481@fpt.edu.vn</a>
                    <a href="mailto:trungddhe171481@fpt.edu.vn">trungddhe171481@fpt.edu.vn</a>
                </div>

                <div class="box">
                    <i class="fas fa-map-marker-alt"></i>
                    <h3>office address</h3>
                    <a
                        href="https://www.google.com/maps/search/%C4%91%E1%BA%A1i+h%E1%BB%8Dc+FPT+H%C3%A0+N%E1%BB%99i/@21.0130535,105.5260889,17.25z?hl=vi-VN&entry=ttu">ĐH
                        FPT Hà Nội</a>
                </div>

            </div>

        </section>

        <!--               footer-->
        <jsp:include page="assets/module/footer.jsp"></jsp:include>

        <script src="assets/vendor/purecounter/purecounter.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>
        <script src="js/script.js"></script>


    </body>

</html>