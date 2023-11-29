
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

        <link rel="stylesheet" href="css/homestyle.css">
        <!--<link href="css/bootstraps.css" rel="stylesheet">-->
        <link href="assets/img/child-care-icon.png" rel="icon" type="image/png">
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
            /* Style for the form container */
            .container {
                background-color: var(--white);
                border-radius: 8px;
                margin-top: 5px;
                margin-bottom: 5px;
                padding: 20px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            /* Styles for labels and form inputs */
            .labels {
                font-weight: bold;
                margin-bottom: 5px;
                font-size: 1.5rem;
                color: var(--black);
            }

            .form-control {
                width: 100%;
                padding: 10px;
                margin-bottom: 15px;
                border: var(--border);
                border-radius: 4px;
                background-color: #eee;
                color: #2c3e50;
            }

            /* Styles for the radio buttons */
            input[type="radio"] {
                margin-right: 5px;
            }

            /* Button style */
            .profile-button {
                background-color: #8e44ad;
                color: #fff;
                padding: 10px 20px;
                border: 1px solid rgba(0, 0, 0, 0.2);
                border-radius: 4px;
                cursor: pointer;
            }

            .profile-button:hover {
                background-color: #2c3e50;
                color: #fff;
            }

            /* Styles for the date input */
            #age {
                width: 100%;
                padding: 10px;
                margin-bottom: 15px;
                border: 1px solid #ccc;
                border-radius: 4px;
                background-color: #eee;
                color: #2c3e50;
            }

            /* Styles for the alert message */
            .alert {
                color: #e74c3c;
                font-size: 1rem;
                margin-top: 5px;
            }

            /* Styles for the success message */
            .success {
                color: #27ae60;
                font-size: 1rem;
                margin-top: 5px;
            }

            .text-right {
                font-size: 4rem;
                color: var(--black);
                text-align: center;
            }

            .label {
                color: var(--black);
                font-size: 2rem;
            }
        </style>

    </head>

    <body>
        <!-- header-->
        <jsp:include page="assets/module/header.jsp"></jsp:include>
            <!-- sidebar-->
        <jsp:include page="assets/module/sidebar.jsp"></jsp:include>

            <main id="main">

                <!-- ======= Breadcrumbs Section ======= -->
                <section class="breadcrumbs">
                    <div class="container">
                        <div class="container rounded bg-white mt-5 mb-5">
                            <form action="addnewchildren" method="get">
                                <div class="row">
                                    <div class="col-md-3 border-right">
                                    </div>
                                    <div class="col-md-5 border-right">
                                        <div class="p-3 py-5">
                                            <div class="d-flex justify-content-between align-items-center mb-3">
                                                <h4 class="text-right">Add new Children</h4>
                                            </div>
                                            <div class="row mt-2">
                                            <c:if test="${sessionScope.account.user_name != null}">
                                                <div class="col-md-12"><label class="labels">Parent Name</label><input readonly="readonly" type="text" class="form-control" placeholder="${sessionScope.account.user_name}" value=""></div>
                                                </c:if>

                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-md-12"><label class="labels">Children Name</label><input required="" name="name" type="text" class="form-control" placeholder="enter children name" value=""></div>
                                            <div class="col-md-12"><label class="labels">Birth Of Date</label>
                                                <input required="" onchange="checkdate()" name="age" id="age" type="date" class="form-control" placeholder="enter children age" value=""></div>
                                            <script>
                                                function checkdate() {
                                                    var defauldate = '2018-02-22';
                                                    var GivenDate = document.getElementById('age').value;
                                                    var CurrentDate = new Date();
                                                    GivenDate = new Date(GivenDate);
                                                    if (GivenDate > CurrentDate) {
                                                        document.getElementById('age').value = defauldate
                                                        alert('Given date is greater than the current date.');
                                                    }
                                                }

                                            </script>

                                            <div class="label"><label class="labels">Gender</label><br>
                                                <input name="gender" type="radio" checked="checked" value="1"> Male
                                                <input name="gender" type="radio" value="0"> Female
                                            </div>
                                        </div>
                                        <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Save Profile</button></div>
                                    </div>
                                </div>
                                <div class="col-md-4 mt-5">

                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                </div>
                </div>

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

