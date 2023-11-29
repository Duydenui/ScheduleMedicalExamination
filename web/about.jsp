<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
   <!DOCTYPE html>
   <html lang="en">

   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>about us</title>

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
   <style>
      /* Testimonials Section Styles */
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
      
.feedback-card {
    background-color: var(--white);
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    overflow: hidden;
    margin: 20px;
    padding: 10px;
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
}

.feedback-card img {
    width: 80px;
    height: 80px;
    border-radius: 50%;
    object-fit: cover;
    margin-bottom: 10px;
}

.feedback-card h3 {
    font-size: 18px;
    margin: 10px 0;
    color: var(--black);
}

.star-rating {
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 10px 0;
}

.star-rating .fa-star {
    color: var(--orange);
    font-size: 16px;
    margin: 0 2px;
}

.feedback-card p {
    font-size: 14px;
    color: var(--black);
    margin-top: 10px;
}

.quote-icons {
    display: flex;
    justify-content: center;
    align-items: center;
    color: var(--orange);
    font-size: 20px;
    margin-top: 10px;
}

.quote-icons .bx {
    margin: 0 5px;
}

   </style>

   <body>
      <!--    header-->
      <jsp:include page="assets/module/header.jsp"></jsp:include>
      <!--    sidebar-->
      <jsp:include page="assets/module/sidebar.jsp"></jsp:include>

      <section class="about">

         <div class="row">

            <div class="image">
               <img src="images/about-img.svg" alt="">
            </div>

            <div class="content">
               <h3>why choose us?</h3>
               <p>Choose Children Care System with confidence. We are dedicated to helping you achieve your goals,
                  providing top-notch
                  solutions, and ensuring your satisfaction every step of the way. Join our growing list of satisfied
                  clients and
                  experience the difference of choosing excellence.</p>
               <a href="service.jsp" class="inline-btn">our services</a>
            </div>

         </div>

         <div class="box-container">

            <div class="box">
               <i class="fas fa-graduation-cap"></i>
               <div>
                  <h3>+10k</h3>
                  <p>online services</p>
               </div>
            </div>

            <div class="box">
               <i class="fas fa-user-graduate"></i>
               <div>
                  <h3>+40k</h3>
                  <p>brilliant childrens</p>
               </div>
            </div>

            <div class="box">
               <i class="fas fa-chalkboard-user"></i>
               <div>
                  <h3>+2k</h3>
                  <p>expert staffs</p>
               </div>
            </div>

            <div class="box">
               <i class="fas fa-briefcase"></i>
               <div>
                  <h3>100%</h3>
                  <p>effective</p>
               </div>
            </div>

         </div>

      </section>
<section class="courses">
    <h1 class="heading">Feedback About Children's Care</h1>
    <div class="box-container">
        <c:forEach items="${listFeedback}" var="i">
            <div class="post-box">
                <div class="blog-item">
                    <div class="thumb">
                        <img class="blog-img" src="./resouce/image/${i.feedback_image}" alt="">
                    </div>
                    <div class="title">
                        <h3>${i.name}</h3>
                        <div class="star-rating">
                            <c:forEach begin="1" end="${i.rateStar}">
                                <span class="fa fa-star"></span>
                            </c:forEach>
                            <c:forEach begin="1" end="${5-i.rateStar}">
                                <span class="fa fa-star"></span>
                            </c:forEach>
                        </div>
                        <div class="quote-icons">
                            <i class="bx bxs-quote-alt-left"></i>
                            <p style="color: var(--black)">
                                ${i.content}
                            </p>
                            <i class="bx bxs-quote-alt-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</section>




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