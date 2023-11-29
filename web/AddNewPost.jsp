<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        </style>
    </head>

    <body>
        <!-- header-->
        <jsp:include page="assets/module/header.jsp"></jsp:include>
            <!-- sidebar-->
        <jsp:include page="assets/module/sidebar.jsp"></jsp:include>

            <section class="">
                <div class="container">
                    <div class="front">
                        <div class="heading">Create Blog Post</div>
                        <form action="addpost" method="post">
                            <!-- Hidden input field to store the blog ID -->
                            <input type="hidden" name="blogId">

                            <label for="userId" class="labels">User Id:</label>
                            <input type="number" id="userId" name="userId" class="form-control" required>                          

                            <label for="title" class="labels">Blog Title:</label>
                            <input type="text" id="title" name="title" class="form-control" required>

                            <label for="category" class="labels">Category:</label>
                            <select id="category" name="category" class="form-select" required>
                                <option value="" disabled selected>Select Category</option>
                                <option value="1">Eye</option>
                                <option value="2">Mouth</option>
                                <option value="3">Foot</option>
                                <option value="4">Noose</option>
                                <option value="5">Lung</option>
                                <option value="6">Body</option> 
                            </select>

                            <label for="bi" class="labels">Brief:</label>
                            <textarea id="bi" name="bi" rows="4" class="form-control" required></textarea>

                            <label for="detail" class="labels">Detail:</label>
                            <textarea id="detail" name="detail" rows="8" class="form-control" required></textarea>

                            <label for="blogImage" class="labels">Upload Image:</label>
                            <input accept="image/*" hidden="hidden" name="blogImage" type="file" class="form-control" value="">
                            
                            <label for="status" class="labels">Status:</label>
                            <select id="status" name="status" class="form-select" required>
                                <option value="" disabled selected>Select Status</option>
                                <option value="1">Active</option>
                                <option value="0">InActive</option>
                            </select>

                            <button type="submit" class="profile-button">Save</button>
                        </form>

                    </div>
                </div>
            </section>

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
