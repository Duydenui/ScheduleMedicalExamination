
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>register</title>

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

    <form action="register" method="post" enctype="multipart/form-data">
      <h3>Register Now</h3>
      <p>Enter Username<span>*</span></p>
      <input type="text" name="name" placeholder="enter your name" required maxlength="50" class="box">
      <p>Choose Gender</p>
      <select name="gender" class="box" value="">
         <option value="male">Male</option>
         <option value="female">Female</option>
         <option value="other">Other</option>
      </select>
      <p>Enter Email <span>*</span></p>
      <input type="email" name="email" placeholder="enter your email" required maxlength="50" class="box">
      <p>Enter Phone</p>
      <input type="text" name="phone" placeholder="Phone Number" maxlength="50" class="box">
      
      <p>Enter Address</p>
      <input type="text" name="address" placeholder="Enter your address" maxlength="50" class="box">
      <p>Your Password <span>*</span></p>
      <input type="password" name="pass" placeholder="enter your password" required maxlength="20" class="box">
      <p>Confirm Password <span>*</span></p>
      <input type="password" name="c_pass" placeholder="confirm your password" required maxlength="20" class="box">
      <p>Select Avt</p>
      <input type="file" accept="image/*" required class="box">
      <input type="submit" value="register new" name="submit" class="btn">
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