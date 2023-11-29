
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
                font-family: 'Poppins', sans-serif
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
                <a href="servicelistmanager" type="button" class="inline-btn" style="margin: 1rem">Back</a>
            </div>
            <div class="container-fluid">
                <div class="alert alert-primary" role="alert">
                    <h1 style="text-align: center; color: var(--black); font-weight: bold; font-size: 3rem;">Manager edit service</h1>
                </div>
                <div class="row">

                    <div class="wrapper bg-white">
                        <!--                        <div class="h2 text-center">Welcome addnew service addmin</div>-->
                        <div class="h4 text-muted text-center pt-2">${mess}</div>
                        <form action="editservicedetailmanager" method="POST" class="pt-3">
                            <div class="form-group py-2">
                                <div>ID service</div>
                                <div class="input-field"><input type="text" name="sid" required value="${serdetail.service_id}" readonly placeholder="${sessionScope.sidd}"> </div>
                            </div>
                            <div class="form-group py-2">
                                <div>Service title</div>
                                <div class="input-field"><input type="text" name="title" minlength="1" maxlength="200" required value="${serdetail.service_title}" placeholder="${sessionScope.title}"> </div>
                            </div>
                            <div class="form-group py-1 pb-2">
                                <div>Service brief</div>
                                <div class="input-field"> <textarea style="width: 1000px;" type="text" name="brief" minlength="0" maxlength="500" placeholder="${sessionScope.brief}" required >${serdetail.service_bi}</textarea> </div>
                            </div>
                            <div class="form-group py-2">
                                <div>Service detail</div>
                                <div class="input-field"><textarea style="width: 1000px;" type="text" name="detail" minlength="0" maxlength="500" placeholder="${sessionScope.detail}" required >${serdetail.service_detail}</textarea> </div>
                            </div>
                            <div class="form-group py-2">
                                <div>Service price (unit: $)</div>
                                <div class="input-field"><input onchange="validPrice()" id="old" type="number" name="price" min="1" max="50000" required value="${serdetail.service_price}" placeholder="${sessionScope.prices}"> </div>
                            </div>
                            <div class="form-group py-2">
                                <span id="errPrice" style="color: red"></span>
                                <div>Service discount (unit: $)</div>
                                <div class="input-field"><input onchange="validPrice()" id="new" type="number" name="discount" min="0" max="50000" required value="${serdetail.service_discount}" placeholder="${sessionScope.discounts}"> </div>
                            </div>

                            <div class="form-group py-2">
                                <label class="form-label" style="font-weight: bold">Category name</label>
                                <div class="form-check">
                                    <input class="form-check-input" name="category" value="1" type="radio" checked>
                                    <label class="form-check-label" for="flexRadioDefault1">
                                        Eyes
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="category" value="2">
                                    <label class="form-check-label" for="flexRadioDefault2">
                                        Foot
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="category" value="3">
                                    <label class="form-check-label" for="flexRadioDefault1">
                                        Nose
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="category" value="4">
                                    <label class="form-check-label" for="flexRadioDefault2">
                                        Lung
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="category" value="5">
                                    <label class="form-check-label" for="flexRadioDefault2">
                                        Body
                                    </label>
                                </div>
                            </div>
                            <div class="form-group py-2">
                                <div>Service image link</div>
                                <div class="input-field"><input type="file" name="image" required value="${serdetail.image_link}">${sessionScope.image}</div>
                            </div>
                            <button id="update" type="submit" class="btn btn-block text-center my-3">Update service</button>
                        </form>
                    </div>
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
    <script>
                                    function validPrice() {
                                        var old = document.getElementById("old").value;
                                        var new_Price = document.getElementById("new").value;
                                        if (old * 100 < new_Price * 100) {
                                            document.getElementById("errPrice").innerHTML = "Enter discount price < origin price";
                                            document.getElementById("update").disabled = 1;
                                        } else {
                                            document.getElementById("errPrice").innerHTML = "";
                                            document.getElementById("update").disabled = 0;
                                        }
                                    }
    </script>
</body>

</html>



