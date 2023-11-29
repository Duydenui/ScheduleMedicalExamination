<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>contact us</title>

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
       /* Center the content vertically and horizontally */
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
.inner-page {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh; /* Adjust as needed to center vertically */
  text-align: center;
}

/* Style the "Successfully!" message */
.inner-page center {
  font-size: 24px;
  color: var(--black); /* Choose your desired text color */
  margin-bottom: 20px;
}
   </style>
</head>

<body>
<!--    header-->
    <jsp:include page="assets/module/header.jsp"></jsp:include>
<!--    sidebar-->
    <jsp:include page="assets/module/sidebar.jsp"></jsp:include>
    
  <main id="main">

    <section class="inner-page">
      <div class="container">
          <center>
              Successfully!
              <a class="inline-btn" href="home">Back to home</a>
          </center>
      </div>
    </section>

  </main>
    
<!--               footer-->
    <jsp:include page="assets/module/footer.jsp"></jsp:include>

       <script src="assets/vendor/purecounter/purecounter.js"></script>
   <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
   <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
   <script src="assets/vendor/php-email-form/validate.js"></script>
<script src="js/script.js"></script>

</body>

</html>