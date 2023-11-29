
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
        <link href="assets/img/child-care-icon.png" rel="icon" type="image/png">
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
            
            .wrapper {
                max-width: 1000px;
                border-radius: 10px;
                margin: 50px auto;
                padding: 30px 40px;
                box-shadow: 20px 20px 80px rgb(206, 206, 206)
            }

            .h2 {
                font-family: 'Kaushan Script', cursive;
                font-size: 3.5rem;
                font-weight: bold;
                color: #400485;
                font-style: italic
            }

            .h4 {
                font-family: 'Poppins', sans-serif
            }

            .input-field {
                border-radius: 5px;
                padding: 5px;
                display: flex;
                align-items: center;
                cursor: pointer;
                border: 1px solid #400485;
                color: #400485
            }

            .input-field:hover {
                color: #7b4ca0;
                border: 1px solid #7b4ca0
            }

            input {
                border: none;
                outline: none;
                box-shadow: none;
                width: 100%;
                padding: 0px 2px;
                font-family: 'Poppins', sans-serif
            }

            .fa-eye-slash.btn {
                border: none;
                outline: none;
                box-shadow: none
            }

            a {
                text-decoration: none;
                color: #400485;
                font-weight: 700
            }

            a:hover {
                text-decoration: none;
                color: #7b4ca0
            }

            .option {
                position: relative;
                padding-left: 30px;
                cursor: pointer
            }

            .option label.text-muted {
                display: block;
                cursor: pointer
            }

            .option input {
                display: none
            }

            .checkmark {
                position: absolute;
                top: 3px;
                left: 0;
                height: 20px;
                width: 20px;
                background-color: #fff;
                border: 1px solid #ddd;
                border-radius: 50%;
                cursor: pointer
            }

            .option input:checked~.checkmark:after {
                display: block
            }

            .option .checkmark:after {
                content: "";
                width: 13px;
                height: 13px;
                display: block;
                background: #400485;
                position: absolute;
                top: 48%;
                left: 53%;
                border-radius: 50%;
                transform: translate(-50%, -50%) scale(0);
                transition: 300ms ease-in-out 0s
            }

            .option input[type="radio"]:checked~.checkmark {
                background: #fff;
                transition: 300ms ease-in-out 0s;
                border: 1px solid #400485
            }

            .option input[type="radio"]:checked~.checkmark:after {
                transform: translate(-50%, -50%) scale(1)
            }

            .btn.btn-block {
                border-radius: 20px;
                background-color: #400485;
                color: #fff
            }

            .btn.btn-block:hover {
                background-color: #55268be0
            }

            @media(max-width: 575px) {
                .wrapper {
                    margin: 10px
                }
            }

            @media(max-width:424px) {
                .wrapper {
                    padding: 30px 10px;
                    margin: 5px
                }

                .option {
                    position: relative;
                    padding-left: 22px
                }

                .option label.text-muted {
                    font-size: 0.95rem
                }

                .checkmark {
                    position: absolute;
                    top: 2px
                }

                .option .checkmark:after {
                    top: 50%
                }

                #forgot {
                    font-size: 0.95rem
                }
            }</style>
    </head>

    <body>

        <!-- header-->
        <jsp:include page="assets/module/header.jsp"></jsp:include>
            <!-- sidebar-->
        <jsp:include page="assets/module/sidebar.jsp"></jsp:include>


        <main  id="main">
            <div class="container">
                 <div class="front">
                    <div class="heading">Manager add new service list</div>                
                        <div class="h4 text-muted text-center pt-2" style="color: green;">${mess}</div>
                        <form class="pt-3" method="post" action="addnewservicemanager" >
                            <div class="form-group py-2">
                                <div class="labels">Service title</div>
                                <div class="input-field"><input type="text" minlength="0" maxlength="200" name="title" placeholder="${sessionScope.title}" required> </div>
                            </div>
                            <div class="form-group py-1 pb-2">
                                <div class="labels">Service brief</div>
                                <div class="input-field"> <textarea type="text" name="brief" style="width: 1000px;" minlength="0" maxlength="500" required class="">${sessionScope.brief}</textarea> </div>
                            </div>
                            <div class="form-group py-2">
                                  <div class="labels">Service detail</div>
                                  <div class="input-field"><textarea type="text" name="detail" style="width: 1000px;" minlength="0" maxlength="500" required class="">${sessionScope.detail}</textarea></div>
                            </div>
                            <div class="form-group py-2">
                                  <div class="labels">Service price (unit: $)</div>
                                  <div class="input-field"><input type="number" min="1" max="5000" name="price" required class="" placeholder="${sessionScope.prices}"> </div>
                            </div>
                            <div class="form-group py-2">
                                  <div class="labels">Service discount (unit: $)</div>
                                  <div class="input-field"><input type="number" min="0" max="5000" name="discount" required class="" placeholder="${sessionScope.discounts}"> </div>
                            </div>
                                   <div class="form-group py-2">
                                  <label class="labels" style="font-weight: bold" for="form2Example2">Category name</label>
                                    <div class="form-check">
                                        <input class="form-check-input" name="category" value="1" type="radio" name="flexRadioDefault">
                                        <label class="labels" for="flexRadioDefault1">
                                            Eyes
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="category" value="2" checked>
                                        <label class="labels" for="flexRadioDefault2">
                                            Foot
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="category" value="3">
                                        <label class="labels" for="flexRadioDefault1">
                                            Nose
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="category" value="4">
                                        <label class="labels" for="flexRadioDefault2">
                                           Lung
                                        </label>
                                    </div>
                                  <div class="form-check">
                                        <input class="form-check-input" type="radio" name="category" value="5">
                                        <label class="labels" for="flexRadioDefault2">
                                           Body
                                        </label>
                                    </div>
                            </div>
                            <div class="form-group py-2">
                                  <div class="labels">Service image link</div>
                                  <div class="input-field"><input type="file" name="image" required>${sessionScope.image}</div>
                            </div>
                     
                            <button type="submit" class="profile-button">Add new</button>
                        </form>
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



