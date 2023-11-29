
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

.form-label {
    font-size: 1.7rem;
    color: var(--light-color);
    padding-top: 1rem;
}

.form-container form label span {
    color: var(--red);
}

.far {
    font-size: 1.7rem;
    color: var(--light-color);
    padding-top: 1rem;
}

.text-danger {
    color: var(--red);
    font-size: 1.7rem;
}
   </style>
</head>
<body>
<!--    header-->
    <jsp:include page="assets/module/header.jsp"></jsp:include>
<!--    sidebar-->
    <jsp:include page="assets/module/sidebar.jsp"></jsp:include>

<section class="form-container">

    <form class="login-form" action="login" method="post">
      <h3>Login Now</h3>
      <h4 class="text-danger">${error}</h4>
      <p>Your Email <span>*</span></p>
      <input type="email" name="email" placeholder="enter your email" required maxlength="50" class="box">
      <div>
      <i class="far fa-eye" id="togglePassword" style="cursor: pointer;"></i>      
      <label class="form-label" for="password">Password<span>*</span></label>
      <input type="password" id="password" name="pass" placeholder="enter your password" required maxlength="20" class="box">
      </div>
      <a href="forgotpass.jsp" class="forgot_pass">Forgot password?</a>
      <input type="submit" value="login" name="submit" class="btn">
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
   <script>
        const togglePassword = document.querySelector('#togglePassword');
        const password = document.querySelector('#password');
        togglePassword.addEventListener('click', function (e) {
        const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
        password.setAttribute('type', type);
        this.classList.toggle('fa-eye-slash');
    });
   </script>
</body>
</html>
