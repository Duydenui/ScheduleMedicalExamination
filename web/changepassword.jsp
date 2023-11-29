<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@page contentType="text/html" pageEncoding="UTF-8" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
         <meta charset="UTF-8">
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <title>Child Care System</title>

         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
         <link rel="stylesheet" href="css/homestyle.css">
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

            /* Style for form labels */
            .form-container label.form-label {
               font-weight: bold;
               font-size: 2rem;
               color: var(--black);
            }

            /* Style for text input fields */
            .form-container input[type="text"],
            .form-container input[type="password"] {
               width: 100%;
               padding: 10px;
               margin-bottom: 10px;
               border: var(--border);
               border-radius: 4px;
               font-size: 2rem;
            }

            /* Style for the "eye" icon (show/hide password) */
            .form-container .fa-solid {
               color: var(--black);
               font-size: 2rem;
            }
            
            h5.text-danger {
                color: var(--red);
                font-size: 2rem;
            }
         </style>
      </head>

      <body>
         <!-- Header -->
         <jsp:include page="assets/module/header.jsp"></jsp:include>
         <!-- Sidebar -->
         <jsp:include page="assets/module/sidebar.jsp"></jsp:include>

         <main id="main">


            <section class="form-container">
               <form name="changpassword" action="changpassword" method="post" onsubmit="required()">

                  <h3>Change the password</h3>


                  <c:if test="${requestScope.c!=null}">
                     <h5 class="text-danger">${requestScope.c}</h5>
                  </c:if>

                  <div>
                     <label class="form-label" for="form1Example13">User email</label>
                     <input name="username" type="text" id="form1Example13" class="form-control form-control-lg" />
                  </div>

                  <!-- Password input -->
                  <div>
                     <i class="fa-solid fa-eye" id="togglePasswordo" style="cursor: pointer;"></i>
                     <label class="form-label" for="form1Example23">Old Password</label>
                     <input name="oldpassword" type="password" id="oldpassword" class="form-control form-control-lg" />
                  </div>

                  <div>
                     <i class="fa-solid fa-eye" id="togglePasswordn" style="cursor: pointer;"></i>
                     <label id="strength" class="form-label" for="form1Example23">New Password</label>
                     <input name="newpassword" type="password" class="form-control form-control-lg"
                        autocomplete="current-password" id="newpassword" size="15" maxlength="100"
                        onkeyup="return passwordChanged();" />
                  </div>


                  <div>
                     <i class="fa-solid fa-eye" id="togglePasswordrp" style="cursor: pointer;"></i>
                     <label class="form-label" for="form1Example23">Repeat new Password</label>
                     <input name="repeatpassword" type="password" id="repeatpassword"
                        class="form-control form-control-lg" />
                  </div>

                  <button type="submit" class="inline-btn" style="margin-top: 20px">Confirm</button>
               </form>

            </section>

            <!-- ======= Footer ======= -->
            <jsp:include page="assets/module/footer.jsp"></jsp:include>

            <script src="assets/vendor/purecounter/purecounter.js"></script>
            <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
            <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
            <script src="assets/vendor/php-email-form/validate.js"></script>
            <script src="js/script.js"></script>

            <script>
               function required() {
                  var empt = document.forms["changpassword"]["username"].value;
                  var empt2 = document.forms["changpassword"]["oldpassword"].value;
                  var empt3 = document.forms["changpassword"]["newpassword"].value;
                  var empt4 = document.forms["changpassword"]["repeatpassword"].value;

                  if (empt == "") {
                     alert("User full name is empty! Please input user full name");
                     return false;
                  } else if (empt2 == "") {
                     alert("New password is empty! Please input a password");
                     return false;
                  } else if (empt3 == "") {
                     alert("Repeat password is empty! Please inputn repeat password");
                     return false;
                  } else if (empt4 == "") {
                     alert("Repeat password is empty! Please inputn repeat password");
                     return false;
                  } else {
                     //   alert('Code has accepted : you can try another');
                     return true;
                  }
               }




               function passwordChanged() {
                  var strength = document.getElementById('strength');
                  var strongRegex = new RegExp("^(?=.{14,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
                  var mediumRegex = new RegExp("^(?=.{10,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
                  var enoughRegex = new RegExp("(?=.{8,}).*", "g");
                  var pwd = document.getElementById("newpassword");
                  if (pwd.value.length == 0) {
                     strength.innerHTML = 'Password';
                  } else if (false == enoughRegex.test(pwd.value)) {
                     strength.innerHTML = 'More Characters';
                  } else if (strongRegex.test(pwd.value)) {
                     strength.innerHTML = '<span style="color:green">Strong!</span>';
                  } else if (mediumRegex.test(pwd.value)) {
                     strength.innerHTML = '<span style="color:orange">Medium!</span>';
                  } else {
                     strength.innerHTML = '<span style="color:red">Weak!</span>';
                  }
               }




               const togglePasswordo = document.querySelector('#togglePasswordo');
               const oldpassword = document.querySelector('#oldpassword');

               togglePasswordo.addEventListener('click', function (e) {
                  // toggle the type attribute
                  const type = oldpassword.getAttribute('type') === 'password' ? 'text' : 'password';
                  oldpassword.setAttribute('type', type);
                  // toggle the eye slash icon
                  this.classList.toggle('fa-eye-slash');
               });




               const togglePasswordn = document.querySelector('#togglePasswordn');
               const newpassword = document.querySelector('#newpassword');

               togglePasswordn.addEventListener('click', function (e) {
                  // toggle the type attribute
                  const type = newpassword.getAttribute('type') === 'password' ? 'text' : 'password';
                  newpassword.setAttribute('type', type);
                  // toggle the eye slash icon
                  this.classList.toggle('fa-eye-slash');
               });







               const togglePasswordrp = document.querySelector('#togglePasswordrp');
               const repeatpassword = document.querySelector('#repeatpassword');

               togglePasswordrp.addEventListener('click', function (e) {
                  // toggle the type attribute
                  const type = repeatpassword.getAttribute('type') === 'password' ? 'text' : 'password';
                  repeatpassword.setAttribute('type', type);
                  // toggle the eye slash icon
                  this.classList.toggle('fa-eye-slash');
               });
            </script>
      </body>

      </html>