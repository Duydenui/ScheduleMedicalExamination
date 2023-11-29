
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

        <link rel="stylesheet" href="css/homestyle.css">
        <!--<link href="css/bootstraps.css" rel="stylesheet">-->
        <link href="assets/img/child-care-icon.png" rel="icon" type="images/png">
        <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <style>@import url('https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Poppins&display=swap');
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
            .wrapper {
                max-width: 1000px;
                border-radius: 10px;
                margin: 50px auto;
                padding: 30px 40px;
                background-color: var(--white);
            }

            .alert {
                font-size: 3.5rem;
                font-weight: bold;
                color: var(--black);
            }
            /* Styles for Post Content */
            article {
                margin: 20px;
                padding: 20px;
                background-color: var(--white);
                border: var(--border);
                border-radius: 5px;
                box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            }

            /* Styles for Post Title */
            h3 {
                font-size: 24px;
                font-weight: bold;
                margin-bottom: 10px;
                color: var(--main-color);
            }

            /* Styles for Slider Images */
            .img-fluid {
                max-width: 100%;
                height: auto;
                border: 1px solid var(--border);
                border-radius: 5px;
            }

            /* Styles for Slider Status */
            h2 {
                font-size: 20px;
                font-weight: bold;
                margin-bottom: 5px;
            }

            /* Styles for Active Status */
            .c-if.true::before {
                content: "Active";
                color: green;
            }

            /* Styles for Inactive Status */
            .c-if.false::before {
                content: "Inactive";
                color: red;
            }

            /* Styles for Slider Notes */
            p {
                font-size: 16px;
                line-height: 1.5;
                color: var(--black);
            }

        </style>

    </head>

    <body>
        <!--    header-->
        <jsp:include page="assets/module/header.jsp"></jsp:include>
            <!--    sidebar-->
        <jsp:include page="assets/module/sidebar.jsp"></jsp:include>

            <main  id="main">
                <div class="btn-group" role="group" aria-label="Basic mixed styles example">
                    <a href="listslidermanager" type="button" class="inline-btn" style="margin: 1rem;">BACK</a>
                </div>


                <div class="container mt-5">
                    <div style="text-align: center" role="alert">
                        <h2 class="alert">Slide detail manager</h2>
                    </div>
                    <div style="margin-top: 100px;">
                        <div>
                            <!-- Post content-->
                            <article>
                                <!-- Post header-->
                                <header>
                                    <!-- Post title-->
                                    <!-- Post meta content-->

                                </header>
                                <!-- Preview image figure-->
                                <!-- Post content-->
                                <table class="table table-bordered">

                                    <tbody>
                                        <tr>
                                            <td>
                                                <h3 class="fw-bolder mb-1">Slider title:</h3>
                                                <p>${serdetail.slider_title}</p>
                                        </td> 
                                    </tr>
                                    <tr>
                                        <td>
                                            <h3 class="fw-bolder mb-1">Slider images:</h3>
                                            <figure class="mb-4"><img style="height: 500px; width: 800px" class="img-fluid rounded" src="./resouce/image/service/${serdetail.image_link}" alt="..." /></figure>
                                        </td> 
                                    </tr>
                                    <tr>
                                        <td>
                                            <h3 class="fw-bolder mb-1">Slider status:</h3>
                                            <c:if test="${serdetail.slider_status == true}">
                                                <p>Active</p>
                                            </c:if>
                                            <c:if test="${serdetail.slider_status == false}">
                                                <p>InActive</p>
                                            </c:if>      
                                        </td> 
                                    </tr>
                                    <tr>
                                        <td>
                                            <h3 class="fw-bolder mb-1">Slider notes: </h3>
                                            <p>${serdetail.notes}</p>
                                        </td> 
                                    </tr>
                                </tbody>
                            </table>

                        </article>
                        <!-- Comments section-->

                    </div>
                    <!-- Side widgets-->

                </div>
            </div>


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


