
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

            .h2 {
                font-family: 'Kaushan Script', cursive;
                font-size: 3.5rem;
                font-weight: bold;
                color: #400485;
                font-style: italic
            }

            .h4 {
                font-family: 'Poppins', sans-serif;
                color: var(--orange);
            }

            .input-field {
                border-radius: 5px;
                display: flex;
                align-items: center;
                cursor: pointer;
                border: var(--border);
                color: var(--black);
            }

            .input-field:hover {
                color: #7b4ca0;
                border: 1px solid #7b4ca0
            }
            
            .form-group {
                color: var(--black);
                font-size: 2rem;
            }

            input {
                border: var(--border);
                outline: none;
                box-shadow: none;
                width: 100%;
                font-size: 1.5rem;
                font-family: 'Poppins', sans-serif;
                background-color: var(--light-bg);
                padding: 1rem;
                color: var(--black);
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
                background-color: var(--main-color);
                color: #fff
            }

            .btn.btn-block:hover {
                background-color: #fff;
                color: #000;
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
         <!--    header-->
         <jsp:include page="assets/module/header.jsp"></jsp:include>
         <!--    sidebar-->
         <jsp:include page="assets/module/sidebar.jsp"></jsp:include>


        <main  id="main">

            <div class="btn-group" role="group" aria-label="Basic mixed styles example">
                <a href="listslidermanager" type="button" class="inline-btn" style="margin: 1rem">Back</a>
            </div>
            <div class="container-fluid">
                 <div class="alert alert-primary" role="alert">
                    <h1 style="text-align: center; color: var(--black); font-weight: bold; font-size: 3rem;">Manager Edit Slider</h1>
                </div>
                <div class="row">

                    <div class="wrapper">
                        <div class="h4 text-center">${mess}</div>
                        <form action ="editsliderdetailmanager" method="POST" class="pt-3">
                            <div class="form-group">
                                    <div>Slider ID</div>
                                    <div class="input-field"><input type="text" name="sid" value="${serdetail.slider_id}" placeholder="${sessionScope.sidd}" readonly=""> </div>
                            </div>
                            <div class="form-group">
                                <div>Slider title</div>
                                <div class="input-field"><input type="text" minlength="10" maxlength="200" name="title" required value="${serdetail.slider_title}" placeholder="${sessionScope.title}"> </div>
                            </div>
                                                     
                            <div class="form-group">
                                  <div>Slider image link</div>
                                  <img hidden style="height: 100px; width: 100px" id="main-img" class="imagebig img-fluid rounded" src="./resouce/image/service/${serdetail.image_link}" alt="..." />
                                  <div class="input-field"><input type="file" name="image" required value="${serdetail.image_link}">${sessionScope.image}</div>
                            </div>
                               <div class="form-group">
                                <div>Slider notes:</div>
                                <div class="input-field"><textarea style="width: 1000px;" minlength="10" maxlength="500" type="text" name="notes" required placeholder="${sessionScope.notes}">${serdetail.notes}</textarea> </div>
                            </div>
                            <button type="submit" class="btn btn-block text-center my-3">Edit slider</button>
                        </form>
                    </div>
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


