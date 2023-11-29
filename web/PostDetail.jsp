<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
        <script src="js/jquery.dataTables.js"></script>         
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

                        <div class="container rounded bg-white mt-5 mb-5">
                            <div class="front">
                                <form action="post-details?id=${requestScope.blog.blog_id}" method="post">
                                <div class="row">
                                    <div class="col-md-4 border-right">
                                        <div class="d-flex flex-column align-items-center text-center p-3 py-5"><div class="col-md-12">
                                                <label class="labels">
                                                    <label class="labels">IMAGE</label>
                                                    <br/>
                                                    <img class="o rounded-circle mt-5"  width="200px" height="200px" src="./resouce/image/${blog.blog_image}">
                                                    <input hidden="hidden" name="image" type="file" class="form-control" value="${blog.blog_image}">
                                                </label>
                                            </div></div>
                                    </div>
                                    <div class="col-md-7 border-right">
                                        <div class="p-3 py-5">
                                            <div class="d-flex justify-content-between align-items-center mb-3">
                                                <h4 class="text-right">Post Details</h4>
                                            </div>
                                            <div class="row mt-2">
                                                <div class="col-md-12"><label class="labels">Blog Title:</label><input required  name="title" type="text" class="form-control" placeholder="name" value="${requestScope.blog.title}"></div>
                                            </div>
                                            <div class="row mt-3">
                                                <div class="col-md-12"><label class="labels">Date:</label><input readonly  name="date" type="date" class="form-control" placeholder="enter phone number" value="${blog.blog_created_date}"></div>
                                                <div class="col-md-12"><label class="labels ">Category:</label>
                                                    <select name="category" required class="m-3">
                                                        <c:forEach items="${cateList}" var="c">
                                                            <c:if test="${cc == c.category_id}">
                                                                <option selected value="${c.category_id}">${c.category_name}</option>

                                                            </c:if>
                                                            <c:if test="${cc != c.category_id}">
                                                                <option value="${c.category_id}">${c.category_name}</option>

                                                            </c:if>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                                <div class="col-md-12">
                                                    <label class="labels">Bief</label>
                                                    <br/>
                                                    <textarea required class="mt-3 mb-3" id="w3review" name="bi" rows="7" cols="80">${blog.bi}</textarea>
                                                    <br>
                                                </div>

                                                <div class="col-md-12">
                                                    <label class="labels">Detail</label>
                                                    <br/>
                                                    <textarea required class="mt-3 mb-3" id="w3review" name="detail" rows="14" cols="80">${blog.detail}</textarea>
                                                    <br>
                                                </div>

                                                <div class="col-md-12"><label class="labels">Status</label>
                                                    <select name="status" class="form-select" id="inputGroupSelect01">
                                                        <c:choose>
                                                            <c:when test="${blog.view_able == true}">
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
                                <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Save Profile</button></div>
                            </form>
                        </div>
                    </div>
                    <div class="row">
                        <div class="history">
                            History Change
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

