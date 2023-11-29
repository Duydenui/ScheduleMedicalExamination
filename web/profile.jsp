
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
            /* Styles for Profile Settings Form */
            .labels {
                font-weight: bold;
                color: var(--black);
                font-size: 2rem;
                margin: 1.5rem;
            }

            .row {
                margin-bottom: 20px;
            }

            /* Styles for User Image */
            .o {
                object-fit: cover;
                border: 2px solid var(--main-color);
            }

            /* Styles for User Name */
            .user_name {
                font-size: 2.5rem;
                font-weight: bold;
                margin-top: 10px;
                color: var(--black);
            }

            /* Styles for User Email */
            .user_email {
                font-size: 16px;
                color: var(--light-color);
            }

            /* Styles for Profile Settings Heading */
            .text-right {
                font-size: 3.5rem;
                font-weight: bold;
                color: var(--black);
                text-align: center;
                margin-bottom: 2rem;
            }

            /* Styles for Input Fields */
            .form-control {
                border: var(--border);
                border-radius: 5px;
                float: right;
                width: 35rem;
                height: 3rem;
                padding: 1rem;
            }

            /* Styles for Error Message */
            div[style="color: red"] {
                color: red;
            }

            /* Styles for Gender Radio Buttons */
            input[type="radio"] {
                margin-left: 2.5rem;
                color: var(--black);
            }

            .content-left {
                margin-right: 4rem;
                margin-top: 2rem;
            }

            .content-right {
                margin-left: 3rem;
            }

            /* Style for Gender Radio Buttons */
            .gender-radio {
                display: flex;
                align-items: center;
            }

            .gender-radio input[type="radio"] {
                margin-right: 10px;
                /* Adjust margin as needed for spacing */
            }

            .gender-radio label {
                font-weight: normal;
                font-size: 2rem;
                color: var(--black);
            }

            /* Style for Checked Radio Button */
            .gender-radio input[type="radio"]:checked + label::before {
                content: "\2713"; /* Checkmark Unicode character */
                display: inline-block;
                width: 20px; /* Adjust size as needed */
                height: 20px; /* Adjust size as needed */
                text-align: center;
                line-height: 20px; /* Should match height for vertical alignment */
                background-color: var(--main-color); /* Color for checked radio button */
                color: white; /* Text color for checked radio button */
                border-radius: 50%; /* Make it round */
            }

            /* Style for Unchecked Radio Button */
            .gender-radio input[type="radio"] + label::before {
                content: "";
                display: inline-block;
                width: 20px; /* Adjust size as needed */
                height: 20px; /* Adjust size as needed */
                border: 2px solid var(--main-color); /* Border color for unchecked radio button */
                border-radius: 50%; /* Make it round */
                margin-right: 5px; /* Adjust spacing between radio button and label */
            }

            .input-label {
                margin-bottom: 2rem;
            }

            /* Styles for Mobile View (Small Screens) */
            @media (max-width: 767px) {
                .border-right {
                    border-right: none;
                }
                .o {
                    margin: 0 auto;
                }
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
                            <button onclick="window.location.href = '/Child-care-system/AddNewChildren.jsp'" class="inline-btn">Add new children</button>
                            <form action="user_profile" method="post">
                                <div class="row" style="display:flex;">
                                    <div class="content-left">
                                        <div>
                                            <label class="labels">
                                                <img class="o rounded-circle mt-5" width="200px" height="200px" src="./resouce/image/${user.user_image}">
                                            <input hidden="hidden" name="image" accept="image/*" type="file" class="form-control" value="${user.user_image}">
                                        </label>
                                    </div>

                                    <span class="user_name">${user.user_name}</span>
                                    <br>
                                    <span class="user_email">${user.user_email}</span><span> </span>
                                </div>
                                <div class="border-right">
                                    <div class="content-right">
                                        <div>
                                            <h4 class="text-right">Profile Settings</h4>
                                        </div>
                                        <div class="input-label">
                                            <div><label class="labels">Name</label>
                                                <input name="name" type="text" required="" class="form-control" placeholder="name" value="${user.user_name}">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-label">
                                                <label class="labels">Mobile Number</label>
                                                <input name="phone" type="text" class="form-control" placeholder="enter phone number" value="${user.user_phone}">
                                            </div>
                                            <c:if test="${errPhone != null}">
                                                <div style="color: red">${errPhone}</div>
                                            </c:if>
                                            <div class="input-label"><label class="labels">Address</label>
                                                <input required="" name="address" type="text" class="form-control" placeholder="enter address" value="${user.user_address}">
                                            </div>
                                            <div class="input-label"><label class="labels">Email</label><input readonly="readonly" name="email" type="text" class="form-control" placeholder="enter email" value="${user.user_email}"></div>
                                            <div class="input-label"><label class="labels">Gender</label><br>
                                                <div class="gender-radio">
                                                    <input name="gender" type="radio" ${user.user_gender == true ? "checked" : ""} value="1" id="male">
                                                    <label for="male">Male</label>

                                                    <input name="gender" type="radio" ${user.user_gender == false ? "checked" : ""} value="0" id="female">
                                                    <label for="female">Female</label>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mt-5 text-center"><button style="margin: 20px" class="inline-btn" type="submit">Save Profile</button>

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