
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>

   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

   <link rel="stylesheet" href="css/home.css">
<!--<link href="css/bootstraps.css" rel="stylesheet">-->
   <link href="assets/img/child-care-icon.png" rel="icon" type="images/png">
   <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
   <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
   <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
   <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
   <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
   <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
</head>

<body>
<!--    header-->
    <jsp:include page="assets/module/header.jsp"></jsp:include>
<!--    sidebar-->
    <jsp:include page="assets/module/sidebar.jsp"></jsp:include>
    

    <section class="form-container">
        <form action="forgetpass" method="post">
            <h3>Forgot Password</h3>
            <p>Enter your email address to reset your password:</p>
            <input type="email" name="email" placeholder="Your email" required maxlength="50" class="box">
            <input type="submit" value="Reset Password" name="submit" class="btn">
        </form>
    </section>

<!--               footer-->
    <jsp:include page="assets/module/footer.jsp"></jsp:include>

    <script src="js/script.js"></script>
   <script src="assets/vendor/purecounter/purecounter.js"></script>
   <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
   <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
   <script src="assets/vendor/php-email-form/validate.js"></script>

</body>

</html>
