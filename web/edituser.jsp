
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
            .form-control:focus {
                box-shadow: none;
                border-color: #BA68C8
            }

            .profile-button {
                background: rgb(99, 39, 120);
                box-shadow: none;
                border: none
            }

            .profile-button:hover {
                background: #682773
            }

            .profile-button:focus {
                background: #682773;
                box-shadow: none
            }

            .profile-button:active {
                background: #682773;
                box-shadow: none
            }

            .back:hover {
                color: #682773;
                cursor: pointer
            }

            .labels {
                font-size: 11px
            }

            .add-experience:hover {
                background: #BA68C8;
                color: #fff;
                cursor: pointer;
                border: solid 1px #BA68C8
            }
            img{
                border: 4px solid #ff5064;
                border-radius: 50%;
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
                        <button onclick="window.location.href='/Child-care-system/AddNewChildren.jsp'" class="btn btn-success">Add new children</button>
                        <form action="user_profile" method="post">
                            <div class="row">
                                <div class="col-md-4 border-right">
                                    <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                                        <div class="col-md-12">
                                            <label class="labels">
                                                <img class="o rounded-circle mt-5" width="200px" height="200px" src="./resouce/image/${user.user_image}">
                                                <input hidden="hidden" name="image" accept="image/*" type="file" class="form-control" value="${user.user_image}">
                                            </label>
                                        </div>

                                        <span class="font-weight-bold">${user.user_name}</span><span class="text-black-50">${user.user_email}</span><span> </span></div>
                                </div>
                                <div class="col-md-7 border-right">
                                    <div class="p-3 py-5">
                                        <div class="d-flex justify-content-between align-items-center mb-3">
                                            <h4 class="text-right">Profile Settings</h4>
                                        </div>
                                        <div class="row mt-2">
                                            <div class="col-md-12"><label class="labels">Name</label>
                                                <input name="name" type="text" required="" class="form-control" placeholder="name" value="${user.user_name}">
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-md-12">
                                                <label class="labels">Mobile Number</label>
                                                <input name="phone" type="text" class="form-control" placeholder="enter phone number" value="${user.user_phone}">
                                            </div>
                                            <c:if test="${errPhone != null}">
                                                <div style="color: red">${errPhone}</div>
                                            </c:if>
                                            <div class="col-md-12"><label class="labels">Address</label>
                                                <input required="" name="address" type="text" class="form-control" placeholder="enter address" value="${user.user_address}">
                                            </div>
                                            <div class="col-md-12"><label class="labels">Email</label><input readonly="readonly" name="email" type="text" class="form-control" placeholder="enter email" value="${user.user_email}"></div>
                                            <div class="col-md-12"><label class="labels">Gender</label><br>
                                                <input name="gender" type="radio" ${user.user_gender == true ?"checked":""} value="1"> Male
                                                <input name="gender" type="radio" ${user.user_gender == false ?"checked":""} value="0"> Female
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                            <div class="mt-5 text-center"><button style="margin: 20px" class="btn btn-primary profile-button" type="submit">Save Profile</button>
                                            
                                            </div>
                            
                        </form>
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