
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


            .container {
                width: 100%;
                max-width: 1200px;
                margin: 0 auto;
            }

            /* Form Container */
            .container.rounded {
                background-color: var(--white);
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                padding: 30px;
            }

            .text-right {
                font-size: 2rem;
                color: var(--black);
            }

            /* Form Style */
            .form-control {
                width: 100%;
                padding: 10px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
                border-radius: 5px;
            }

            .labels {
                font-size: 14px;
                font-weight: bold;
                color: var(--black);
            }

            .profile-button:hover {
                background: #682773;
            }

            /* Sidebar */
            aside {
                width: 300px;
                background-color: #2c3e50;
                color: var(--black);
                padding: 20px;
            }

            /* Sidebar Links */
            aside a {
                display: block;
                color: var(--black);
                text-decoration: none;
                padding: 10px 0;
            }

            /* Footer */
            footer {
                background-color: #2c3e50;
                color: var(--black);
                padding: 20px 0;
                text-align: center;
            }

            /* Back to Top Button */
            .back-to-top {
                position: fixed;
                bottom: 20px;
                right: 20px;
                background-color: #632778;
                color: #fff;
                padding: 10px;
                border-radius: 50%;
                text-decoration: none;
                display: none;
            }

            /* Hover Effect for Back to Top Button */
            .back-to-top:hover {
                background-color: #682773;
            }

        </style>

    </head>

    <body>

        <!--    header-->
        <jsp:include page="assets/module/header.jsp"></jsp:include>
            <!--    sidebar-->
        <jsp:include page="assets/module/sidebar.jsp"></jsp:include>

            <main id="main">

                <!-- ======= Breadcrumbs Section ======= -->
                <section class="breadcrumbs">
                    <div class="container">
                        <div class="container rounded bg-white mt-5 mb-5">
                            <form action="add_new_user" method="get">
                                <div class="row">
                                    <div class="col-md-3 border-right">
                                        <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold"></span><span class="text-black-50"></span><span> </span></div>
                                    </div>
                                    <div class="col-md-5 border-right">
                                        <div class="p-3 py-5">
                                            <div class="d-flex justify-content-between align-items-center mb-3">
                                                <h4 class="text-right">Add new user</h4>
                                            </div>
                                            <div class="row mt-2">
                                                <div class="col-md-12"><label class="labels">Name</label><input required="" name="name" type="text" class="form-control" placeholder="Full name" value=""></div>
                                            </div>
                                            <div class="row mt-3">
                                                <div class="col-md-12"><label class="labels">Email</label><input required="" name="email" type="email" class="form-control" placeholder="enter user email" value=""></div>
                                                <c:if test="${errEmail != null}">
                                                <div style="color: red">${errEmail}</div>
                                            </c:if>
                                            <div class="col-md-12"><label class="labels">Password</label><input required="" name="password" type="password" class="form-control" placeholder="enter password" value=""></div>
                                            <div class="col-md-12"><label class="labels">Address</label><input required="" name="address" type="text" class="form-control" placeholder="enter address" value=""></div>
                                            <div class="col-md-12"><label class="labels">Phone number</label><input required="" name="phone" type="number" class="form-control" placeholder="enter phone number" value=""></div>
                                                <c:if test="${errPhone != null}">
                                                <div style="color: red">${errPhone}</div>
                                            </c:if>
                                            <div class="col-md-12"><label class="labels">Gender</label><br>
                                                <input name="gender" type="radio" checked="checked" value="1"> Male
                                                <input name="gender" type="radio" value="0"> Female
                                            </div>
                                            <div class="col-md-12"><label class="labels">Image</label><input name="image" type="file" class="form-control" placeholder="enter phone number" value=""></div>

                                        </div>
                                        <div class="col-md-4 mt-5">
                                            <div class="p-3 py-5">
                                                <div class="col-md-12"><label class="labels">Role</label>
                                                    <div class="input-group mb-3">
                                                        <select name="role" class="form-select" id="inputGroupSelect01">
                                                            <option value="1">Admin</option>
                                                            <option value="2">Doctor</option>
                                                            <option value="3">Nurse</option>
                                                            <option value="4">Customer</option>
                                                            <option value="5">Manager</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-12"><label class="labels">Status</label>
                                                    <select name="status" class="form-select" id="inputGroupSelect01">
                                                        <option selected value="1">Is activated</option>
                                                        <option value="0">Not activated</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Save Profile</button></div>
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
                </div>
                </div>

        </main><!-- End #main -->

        <!--<div id="preloader"></div>-->
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
        <!--               footer-->
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

<!--<div class="col-md-5 border-right">
                                <div class="p-3 py-5">
                                    <div class="d-flex justify-content-between align-items-center mb-3">
                                        <h4 class="text-right">Add new Children</h4>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-md-12"><label class="labels">Parent Name</label><input  readonly="readonly" type="text" class="form-control" placeholder="Full name" value=""></div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-md-12"><label class="labels">Children Name</label><input name="name" type="text" class="form-control" placeholder="enter user email" value=""></div>
                                        <div class="col-md-12"><label class="labels">Children Name</label><input name="age" type="number" class="form-control" placeholder="enter user email" value=""></div>
                                        <div class="col-md-12"><label class="labels">Gender</label><br>
                                            <input name="gender" type="radio" checked="checked" value="1"> Male
                                            <input name="gender" type="radio" value="0"> Female
                                        </div>
                                    </div>
                                    <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Save Profile</button></div>
                                </div>
                            </div>-->