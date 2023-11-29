
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <link href="assets/img/child-care-icon.png" rel="icon" type="images/png">
        <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
        <style>
            /* Reset some default browser styles */
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

            /* Styles for the form container */
            .front {
                background-color: var(--white);
                border-radius: 8px;
                margin-top: 5px;
                margin-bottom: 5px;
                padding: 20px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            /* Styles for the profile image */
            .o {
                border-radius: 50%;
                width: 200px;
                height: 200px;
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
                background-color: var(--light-bg);
                color: var(--black);
            }

            /* Styles for the ratings stars */
            .ratings {
                color: #f0ac3f;
                font-size: 24px;
                margin-right: 5px;
            }

            .checked {
                color: #f0ac3f;
            }

            /* Styles for the textarea */
            #w3review {
                width: 100%;
                padding: 10px;
                margin-bottom: 15px;
                border: 1px solid #ccc;
                border-radius: 4px;
                background-color: var(--light-bg);
                color: var(--black);
                resize: none;
            }

            /* Styles for the status select */
            .form-select {
                width: 100%;
                padding: 10px;
                margin-bottom: 15px;
                border: 1px solid #ccc;
                border-radius: 4px;
                background-color: var(--light-bg);
                color: var(--black);
            }

            /* Button style */
            .profile-button {
                background-color: var(--main-color);
                color: #fff;
                padding: 10px 20px;
                border: var(--border);
                border-radius: 4px;
                cursor: pointer;
            }

            .profile-button:hover {
                background-color: var(--black);
                color: #000;
            }

            .text-right {
                font-size: 2rem;
                font-weight: bold;
                color: var(--black);
            }

            .history {
                color: var(--black);
                font-size: 2rem;
                font-weight: bold;
            }
        </style>
    </head>

    <body>
        <!--    header-->
        <jsp:include page="assets/module/header.jsp"></jsp:include>
            <!--    sidebar-->
        <jsp:include page="assets/module/sidebar.jsp"></jsp:include>

            <main id="main" style="padding: 80px 0 0 0">

                <!-- ======= Breadcrumbs Section ======= -->

                <section class="breadcrumbs">
                    <div class="container">

                        <div class="container">
                            <div class="front">
                                <form action="feedback-detail?feedback_id=${requestScope.feedback.feedback_id}" method="post">
                                <div class="row">
                                    <div>
                                        <div class="align-items-center text-center"><div>
                                                <label class="labels">
                                                    <img class="o" width="200px" height="200px" src="./resouce/image/${feedback.feedback_image}">
                                                    <input hidden="hidden" name="image" type="file" class="form-control" value="${feedback.feedback_image}">
                                                </label>
                                            </div></div>
                                    </div>
                                    <div>
                                        <div>
                                            <div class="justify-content-between align-items-center">
                                                <h4 class="text-right">Feedback Details</h4>
                                            </div>
                                            <div class="row">
                                                <div><label class="labels">Name</label><input readonly name="name" type="text" class="form-control" placeholder="name" value="${requestScope.name}"></div>
                                            </div>
                                            <div class="row">
                                                <div><label class="labels">Mobile Number</label><input readonly name="phone" type="text" class="form-control" placeholder="enter phone number" value="${feedback.mobile}"></div>
                                                <div><label class="labels">Email</label><input name="email" readonly type="text" class="form-control" placeholder="enter email" value="${feedback.email}"></div>
                                                <div>

                                                    <textarea readonly id="w3review" name="w3review" rows="10" cols="70">${feedback.content}</textarea>
                                                    <br>
                                                </div>
                                                <div class="d-flex flex-row">
                                                    <div class="ratings">
                                                        <c:forEach begin="1" end="${feedback.rateStar}">
                                                            <span class="fa fa-star checked"></span>
                                                        </c:forEach>
                                                        <c:forEach begin="1" end="${5-feedback.rateStar}">
                                                            <span class="fa fa-star"></span>
                                                        </c:forEach>
                                                    </div>
                                                    <br>
                                                </div>
                                                <div><label class="labels">Status</label>
                                                    <select name="status" class="form-select" id="inputGroupSelect01">
                                                        <c:choose>
                                                            <c:when test="${feedback.status == true}">
                                                                <option selected value="1">Is activated</option>
                                                                <option value="0">Not activated</option>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <option selected value="0">Not activated</option>
                                                                <option value="1">Is activated</option>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="text-center"><button class="btn btn-primary profile-button" type="submit">Save Profile</button></div>
                            </form>
                        </div>
                    </div>
                    <div class="row">
                        <div class="history">
                            History Change
                        </div>
                    </div>
                </div>

                </div>
                </div>
            </section><!-- End Breadcrumbs Section -->
        </main><!-- End #main -->

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