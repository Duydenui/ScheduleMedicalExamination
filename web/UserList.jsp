
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Child Care System</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

        <link rel="stylesheet" href="css/homestyle1.css">
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
            /* Container styles */
            .container {
                display: flex;
                justify-content: space-between;
                margin: 0.5rem;
            }

            h5 {
                color: var(--black);
            }

            /* Style the container */
            .filter-content {
                text-align: left;
                padding: 15px;
            }

            /* Style the SEARCH section */
            .filter-content h5:first-of-type {
                font-size: 20px;
                margin-bottom: 10px;
            }

            .form-inline {
                width: 100%;
                display: flex;
                align-items: center;
            }

            .form-control {
                display: block;
                width: 100%;
                padding: 0.375rem 0.75rem;
                font-size: 2rem;
                font-weight: 400;
                line-height: 1.5;
                color: #212529;
                background-color: #fff;
                background-clip: padding-box;
                border: 1px solid #ced4da;
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
                border-radius: 0.25rem;
                transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
            }

            .btn.btn-secondary.btn-number {
                border: var(--border);
            }

            /* Style the FILTER section */
            .filter-content h5:nth-of-type(2) {
                font-size: 20px;
                margin-top: 15px;
                margin-bottom: 10px;
            }

            .form-check {
                margin-bottom: 10px;
                margin-top: 10px;
            }

            .form-check-label {
                color: var(--black);
                font-size: 2rem;
            }

            /* Style the ORDER BY section */
            .filter-content h5:last-of-type {
                font-size: 20px;
                margin-top: 15px;
                margin-bottom: 10px;
            }

            .custom-radio {
                display: flex;
                align-items: center;
                margin-bottom: 10px;
            }

            .custom-control-label {
                font-size: 18px;
                margin-left: 10px;
                color: var(--black);
            }


            /* Left column (filter and search) */
            .filter-content {
                width: 30%; /* Adjust the width as needed */
                padding: 20px; /* Add padding as needed */
                box-sizing: border-box;
                background: var(--white);
                border: var(--border);
            }

            /* Right column (user list) */
            .user-list {
                width: 70%; /* Adjust the width as needed */
                display: flex;
                flex-wrap: wrap;
                gap: 20px; /* Add a gap between user boxes */
                padding-left: 20px;
                padding-bottom: 20px;/* Add padding as needed */
                box-sizing: border-box;
                background-color: transparent; /* Adjust the background color as needed */
            }

            /* User box styles */
            .user-box {
                width: calc(50% - 10px); /* Two users per row with a gap in between */
                background-color: #fff; /* Adjust the background color as needed */
                border: 1px solid #ccc; /* Add a border as needed */
                padding: 10px; /* Add padding as needed */
                box-sizing: border-box;
            }

            .title {
                font-size: 1.5rem;
                color: var(--black);
            }

            .post-box p {
                font-size: 1.5rem;
                color: var(--black);
            }

            /* Ensure the two columns stack vertically on small screens */
            @media (max-width: 768px) {
                .container {
                    flex-direction: column;
                }
                .filter-content, .user-list {
                    width: 100%; /* Full width on small screens */
                }
                .user-box {
                    width: 100%; /* Full width on small screens */
                }
            }

            /* Pagination Styles */
            .pagination {
                display: flex;
                justify-content: center;
                list-style: none;
            }

            .page-item {
                margin: 0 5px;
            }

            .page-link {
                display: block;
                padding: 5px 10px;
                border: 1px solid var(--main-color);
                color: var(--main-color);
                text-align: center;
                text-decoration: none;
                cursor: pointer;
            }

            .page-link:hover {
                background-color: var(--main-color);
                color: white;
            }

            .page-item.active .page-link {
                background-color: var(--main-color);
                color: white;
                border: 1px solid var(--main-color);
            }

            .page-item.disabled .page-link {
                pointer-events: none;
                background-color: var(--light-color);
                color: var(--light-bg);
                border: 1px solid var(--light-color);
            }
            .back-to-top.active {
                visibility: visible;
                opacity: 1;
            }
            .back-to-top {
                position: fixed;
                visibility: hidden;
                opacity: 0;
                right: 110rem;
                bottom: 10rem;
                z-index: 996;
                background: var(--main-color);
                width: 40px;
                height: 40px;
                border-radius: 4px;
                transition: all 0.4s;
            }
            .back-to-top i {
                font-size: 28px;
                color: #fff;
                line-height: 0;
            }
            .post-box {
                position: relative;
                width: 100%;
                height: 100%;
                cursor: pointer;
                transform-style: preserve-3d;
                transform-origin: center right;
                transition: transform 0.5s;
            }

            .post-box.is-flipped {
                transform: translateX(-100%) rotateY(-180deg);
            }

            .card__face {
                position: absolute;
                width: 100%;
                height: 100%;
                color: black;
                backface-visibility: hidden;
            }

            .card__face--front {
                background: white;
            }

            .card__face--back {
                transform: rotateY(180deg);
            }
        </style>
    </head>

    <body>

        <!--    header-->
        <jsp:include page="assets/module/header.jsp"></jsp:include>
            <!--    sidebar-->
        <jsp:include page="assets/module/sidebar.jsp"></jsp:include>

            <div class="container">
                <div class="filter-content" style="text-align: left; height: 950px">
                    <div>
                        <h5>SEARCH</h5>
                        <nav style="display: block">
                            <form action="filteruser" class="form-inline">
                                <div style="display: flex;">
                                    <input oninput="searchByName(this)" value="${txtS}" required name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                                <div class="input-group-append">
                                    <button type="submit" style="border-radius: 0px" class="btn btn-secondary btn-number">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </nav>
                </div>
                <div style="margin-top:15px ">
                    <h5>FILTER
                    </h5>
                    <!--FILTER By Role-->
                    <div>
                        <div>
                            <input readonly="readonly" type="text" value="Role" class="form-control" aria-label="Text input with checkbox">
                        </div>
                        <c:set var="role_check" value="${role_check}" />
                        <c:set var="list_role" value="${list_role}"/>
                        <form action="filteruser" method="get">

                            <div class="form-check form-check-inline">
                                <c:forEach begin="0" end="${list_role.size()-1}" var="i">
                                    <div class="form-check form-check-inline">
                                        <input name="role" ${role_check[i]?"checked":""} onclick="this.form.submit()" value="${list_role.get(i).role_id}" class="form-check-input" type="checkbox" id="inlineCheckbox1_T${i}" value="1" />
                                        <label class="form-check-label" for="inlineCheckbox1_T${i}">${list_role.get(i).role_name}</label>
                                    </div>
                                </c:forEach> 
                            </div>
                        </form>

                    </div>
                    <!--FILTER By Status-->
                    <div class="input-group mb-3">
                        <div class="mb-2 col-md-12">
                            <input readonly="readonly" type="text"  value="Status" class="form-control" aria-label="Text input with checkbox">
                        </div>
                        <c:set var="check" value="${check}" />
                        <form action="filteruser" method="get">
                            <div class="form-check form-check-inline">
                                <input ${check[0]?"checked":""} name="status" ${status_check[i]?"checked":""} onclick="this.form.submit()" class="form-check-input" type="checkbox" id="inlineCheckbox1" value="1" />
                                <label class="form-check-label" for="inlineCheckbox1">Is activated</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input ${check[1]?"checked":""} name="status" ${status_check[i]?"checked":""} onclick="this.form.submit()" class="form-check-input" type="checkbox" id="inlineCheckbox2" value="0" />
                                <label class="form-check-label" for="inlineCheckbox2">Not activated</label>
                            </div>
                        </form>
                    </div>
                    <!--FILTER By Gender-->
                    <div class="input-group mb-3">
                        <div class="mb-2 col-md-12">
                            <input readonly="readonly" type="text"  value="Gender" class="form-control" aria-label="Text input with checkbox">
                        </div>
                        <form action="filteruser" method="get">
                            <div class="form-check form-check-inline">
                                <input ${check[2]?"checked":""} name="gender" onclick="this.form.submit()" class="form-check-input" type="checkbox" id="inlineCheckbox1Male" value="1" />
                                <label class="form-check-label" for="inlineCheckbox1Male">Male</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input ${check[3]?"checked":""} name="gender" onclick="this.form.submit()" class="form-check-input" type="checkbox" id="inlineCheckbox2Female" value="0" />
                                <label class="form-check-label" for="inlineCheckbox2Female">Female</label>
                            </div>
                        </form>
                    </div>
                </div>
                <div style="margin-top: 15px">
                    <h5>ORDER BY</h5>
                    <form action="filteruser" method="get"> 
                        <div class="custom-control custom-radio">
                            <input type="radio" ${sort=="id"?"checked":""} onclick="this.form.submit()" value="id" id="customRadioO1" name="sort" class="custom-control-input">
                            <label class="custom-control-label" for="customRadioO1">ID</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" ${sort=="name"?"checked":""} onclick="this.form.submit()" value="name" id="customRadioO2" name="sort" class="custom-control-input">
                            <label class="custom-control-label" for="customRadioO2">NAME</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" ${sort=="gender"?"checked":""} onclick="this.form.submit()" value="gender" id="customRadioO3" name="sort" class="custom-control-input">
                            <label class="custom-control-label" for="customRadioO3">GENDER</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" ${sort=="email"?"checked":""} onclick="this.form.submit()" value="email" id="customRadioO4" name="sort" class="custom-control-input">
                            <label class="custom-control-label" for="customRadioO4">EMAIL</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" ${sort=="mobile"?"checked":""} onclick="this.form.submit()" value="mobile" id="customRadioO5" name="sort" class="custom-control-input">
                            <label class="custom-control-label" for="customRadioO5">MOBILE</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" ${sort=="role"?"checked":""} onclick="this.form.submit()" value="role" id="customRadioO6" name="sort" class="custom-control-input">
                            <label class="custom-control-label" for="customRadioO6">ROLE</label>
                        </div>
                        <div class="custom-control custom-radio">
                            <input type="radio" ${sort=="status"?"checked":""} onclick="this.form.submit()" value="status" id="customRadioO7" name="sort" class="custom-control-input">
                            <label class="custom-control-label" for="customRadioO7">STATUS</label>
                        </div>
                    </form>
                </div>

            </div>
            <div class="user-list">
                <div>
                    <a href="addNewUser.jsp"><button type="button" class="btn btn-primary">ADD NEW</button></a>
                    <a href="userlist"><button type="button" class="btn btn-dark">CLEAR FILTER</button></a>
                </div>
                <div id="content" class="courses">
                    <div class="box-container">
                        <c:forEach items="${list_user}" var="u">
                            <div class="post-box">
                                <div card__face card__face--back>
                                    <img class="blog-img" src="./resouce/image/${u.user_image}">
                                </div>
                                <div class="blog-item">
                                    <h5 class="title">${u.user_id}
                                        <c:choose>
                                            <c:when test="${u.user_gender == true}">
                                                <img width="30px" src="./assets/img/male.jpg">
                                            </c:when>
                                            <c:otherwise>
                                                <img width="30px" src="./assets/img/female.jpg">
                                            </c:otherwise>
                                        </c:choose>
                                    </h5>
                                    <p class="card-text">${u.user_name}</p>
                                    <p class="card-text">${u.user_email}</p>
                                    <p class="card-text">${u.user_phone}</p>
                                    <c:forEach items="${list_role}" var="r">
                                        <c:if test="${r.role_id == u.user_role}">
                                            <p class="card-text">${r.role_name}</p>
                                        </c:if>
                                    </c:forEach>
                                    <c:choose>
                                        <c:when test="${u.user_status == true}">
                                            <p style="color: green" class="card-text">Is activated</p> 
                                        </c:when>
                                        <c:otherwise>
                                            <p style="color: red" class="card-text">Not activated</p> 
                                        </c:otherwise>
                                    </c:choose>      
                                    <c:set var="func1" value="view" />
                                    <c:set var="func2" value="edit" />
                                    <a href="user_detail?user_id=${u.user_id}&function=${func1}" class="btn btn-primary">View User</a>
                                    <a href="user_detail?user_id=${u.user_id}&function=${func2}" class="btn btn-success">Edit User</a>
                                </div>

                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <c:set var="home" value="home"/>
        <c:set var="filter" value="filter"/>
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
                <li class="page-item">
                    <a style="pointer-events: ${page == 1?"none":""}" class="page-link" href="userlist?page=${page - 1}" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        <span class="sr-only">Previous</span>
                    </a>
                </li>
                <c:if test="${path == home}">
                    <c:forEach begin="1" end="${maxPage}" var="i">
                        <li class="page-item ${i==page?"active":""}"><a class="page-link" href="userlist?page=${i}">${i}</a></li>
                        </c:forEach>
                    </c:if>
                    <c:if test="${path == filter}">
                        <c:forEach begin="1" end="${maxPage}" var="i">
                        <li class="page-item ${i==page?"active":""}"><a class="page-link" href="filteruser?page=${i}">${i}</a></li>
                        </c:forEach>
                    </c:if>

                <li class="page-item">
                    <a style="pointer-events: ${page == maxPage?"none":""}" class="page-link" href="userlist?page=${page + 1}" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        <span class="sr-only">Next</span>
                    </a>
                </li>
            </ul>
        </nav>

        <!--<div id="preloader"></div>-->
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
        <!--               footer-->
        <jsp:include page="assets/module/footer.jsp"></jsp:include>

        <script src="assets/vendor/purecounter/purecounter.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>
        <script src="js/script.js"></script>
        <script src="assets/js/main.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
                                            function searchByName(param) {
                                                var txtSearch = param.value;
                                                $.ajax({
                                                    url: "/Child-care-system/searchajax",
                                                    type: "get", //send it through get method
                                                    data: {
                                                        txt: txtSearch
                                                    },
                                                    success: function (data) {
                                                        var row = document.getElementById("content");
                                                        row.innerHTML = data;
                                                    },
                                                    error: function (xhr) {
                                                        //Do Something to handle error
                                                    }
                                                });
                                            }
                                            var cards = document.querySelectorAll('.card');

                                            [...cards].forEach((card) => {
                                                card.addEventListener('click', function () {
                                                    card.classList.toggle('is-flipped');
                                                });
                                            });
        </script>  
    </body>

</html>