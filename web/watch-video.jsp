
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>watch</title>

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

<section class="watch-video">

   <div class="video-container">
      <div class="video">
         <video src="images/vid-1.mp4" controls poster="images/post-1-1.png" id="video"></video>
      </div>
      <h3 class="title">complete HTML tutorial (part 01)</h3>
      <div class="info">
         <p class="date"><i class="fas fa-calendar"></i><span>22-10-2022</span></p>
         <p class="date"><i class="fas fa-heart"></i><span>44 likes</span></p>
      </div>
      <div class="tutor">
         <img src="images/pic-2.jpg" alt="">
         <div>
            <h3>john deo</h3>
            <span>developer</span>
         </div>
      </div>
      <form action="" method="post" class="flex">
         <a href="post.html" class="inline-btn">view post</a>
         <button><i class="far fa-heart"></i><span>like</span></button>
      </form>
      <p class="description">
         Lorem ipsum dolor, sit amet consectetur adipisicing elit. Itaque labore ratione, hic exercitationem mollitia obcaecati culpa dolor placeat provident porro.
         Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aliquid iure autem non fugit sint. A, sequi rerum architecto dolor fugiat illo, iure velit nihil laboriosam cupiditate voluptatum facere cumque nemo!
      </p>
   </div>

</section>

<section class="comments">

   <h1 class="heading">5 comments</h1>

   <form action="" class="add-comment">
      <h3>add comments</h3>
      <textarea name="comment_box" placeholder="enter your comment" required maxlength="1000" cols="30" rows="10"></textarea>
      <input type="submit" value="add comment" class="inline-btn" name="add_comment">
   </form>

   <h1 class="heading">user comments</h1>

   <div class="box-container">

      <div class="box">
         <div class="user">
            <img src="images/pic-1.jpg" alt="">
            <div>
               <h3>shaikh anas</h3>
               <span>22-10-2022</span>
            </div>
         </div>
         <div class="comment-box">this is a comment form shaikh anas</div>
         <form action="" class="flex-btn">
            <input type="submit" value="edit comment" name="edit_comment" class="inline-option-btn">
            <input type="submit" value="delete comment" name="delete_comment" class="inline-delete-btn">
         </form>
      </div>

      <div class="box">
         <div class="user">
            <img src="images/pic-2.jpg" alt="">
            <div>
               <h3>john deo</h3>
               <span>22-10-2022</span>
            </div>
         </div>
         <div class="comment-box">awesome tutorial!
            keep going!</div>
      </div>

      <div class="box">
         <div class="user">
            <img src="images/pic-3.jpg" alt="">
            <div>
               <h3>john deo</h3>
               <span>22-10-2022</span>
            </div>
         </div>
         <div class="comment-box">amazing way of teaching!
            thank you so much!
         </div>
      </div>

      <div class="box">
         <div class="user">
            <img src="images/pic-4.jpg" alt="">
            <div>
               <h3>john deo</h3>
               <span>22-10-2022</span>
            </div>
         </div>
         <div class="comment-box">loved it, thanks for the tutorial!</div>
      </div>

      <div class="box">
         <div class="user">
            <img src="images/pic-5.jpg" alt="">
            <div>
               <h3>john deo</h3>
               <span>22-10-2022</span>
            </div>
         </div>
         <div class="comment-box">this is what I have been looking for! thank you so much!</div>
      </div>

      <div class="box">
         <div class="user">
            <img src="images/pic-2.jpg" alt="">
            <div>
               <h3>john deo</h3>
               <span>22-10-2022</span>
            </div>
         </div>
         <div class="comment-box">thanks for the tutorial!

            how to download source code file?
         </div>
      </div>

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
