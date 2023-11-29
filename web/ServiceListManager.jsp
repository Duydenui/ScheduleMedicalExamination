
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
        <script src="js/jquery.dataTables.js"></script>         
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

            /* Style for the alert box */
            .alert {
                text-align: center;
                margin-bottom: 20px;
                padding: 10px 20px;
                background-color: var(--main-color);
                color: #fff;
                border: none;
            }

            /* Style for the row */
            .row {
                display: flex;
                flex-wrap: wrap;
            }

            /* Style for the sidebar column */
            .col-md-4 {
                flex: 0 0 33.333333%;
                max-width: 33.333333%;
                padding: 0 10px;
            }

            /* Style for the list group */
            .list-group {
                list-style: none;
                padding: 0;
            }

            .list-group-item {
                display: flex;
                align-items: center;
                padding: 10px;
                border-bottom: 1px solid var(--light-color);
                transition: background-color 0.3s;
                background-color: var(--white);
            }

            .list-group-item:last-child {
                border-bottom: none;
            }

            .list-group-item a {
                text-decoration: none;
                color: var(--main-color);
                margin-left: 10px;
                font-weight: bold;
                font-size: 2.5rem;
            }

            .list-group-item a:hover {
                text-decoration: underline;
            }

            .list-group-item i {
                font-size: 1.2rem;
                color: var(--main-color);
                margin-right: 10px;
            }

            /* Style for the active item */
            .list-group-item.active {
                background-color: var(--black);
            }


            /* Style for the main content column */
            .col-md-8 {
                flex: 0 0 66.666667%;
                max-width: 66.666667%;
                padding: 0 10px;
            }

            /* Style for the search form */
            .search-form {
                margin-top: 20px;
                text-align: center;
            }

            .fa {
                color: var(--black);
                font-size: 3rem;
                margin: 1rem;
            }

            .input-group {
                display: flex;
                align-items: center;
            }

            .form-control {
                flex-grow: 1;
                margin-right: 10px;
                border-radius: 5px;
                border: var(--border);
                padding: 10px;
            }

            /* Style for the table */
            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 20px;
            }

            th, td {
                padding: 10px;
                text-align: left;
                color: var(--black);
                font-size: 2rem;
            }

            th {
                background-color: var(--light-bg);
                color: var(--black);
                font-weight: bold;
            }

            tr:nth-child(even) {
                background-color: var(--light-bg);
            }

            /* Style for the status switch */
            .form-check-input {
                cursor: pointer;
            }

            /* Style for action icons */
            .table-actions {
                display: flex;
                justify-content: space-between;
            }

            .table-actions a {
                margin: 0 5px;
                color: var(--main-color);
                text-decoration: none;
                font-size: 18px;
                transition: color 0.3s;
            }

            .table-actions a:hover {
                color: var(--orange);
            }

            /* Pagination styles */
            .pagination {
                display: flex;
                justify-content: center;
                list-style: none;
                padding: 0;
                margin: 20px 0;
            }

            .page-item {
                margin: 0 5px;
            }

            .page-link {
                display: inline-block;
                padding: 10px 15px;
                text-decoration: none;
                background-color: var(--main-color);
                color: #fff;
                border: 1px solid var(--main-color);
                border-radius: 4px;
                transition: background-color 0.3s, color 0.3s;
            }

            .page-link:hover {
                background-color: var(--white);
                color: var(--main-color);
            }

            .page-item.active .page-link {
                background-color: var(--white);
                color: var(--main-color);
                border: 1px solid var(--main-color);
                pointer-events: none;
            }

            .dataTables_info {
                display: none;
            }

            .previous, .next {
                display: none;
            }

            .paginate_button {
                display: none;
            }

            .dataTables_length {
                display: none;
            }

            #slidertable_filter {
                font-size: 2rem;
                color: var(--black);
            }
            
            .details {
                color: #fff;
            }
            
            .card-header {
                font-size: 2rem;
                color: var(--black);
            }
        </style>
    </head>

    <body>

        <!--    header-->
        <jsp:include page="assets/module/header.jsp"></jsp:include>
            <!--    sidebar-->
        <jsp:include page="assets/module/sidebar.jsp"></jsp:include>


        <main  id="main">            
            <div class="container-fluid">
                <div class="alert alert-primary" role="alert">
                    <h1 style="text-align: center">Manager service list</h1>
                </div>
                <div>
                <button type="button" class="inline-btn"><a href="addnewservicemanager" type="button" class="details">ADD NEW</a></button>
            </div>
                <div class="row">
                    <div class="col-lg-3">
                        <!-- Post content-->
                        <div class="col-md-4">
                            <div class="card-header">Search</div>
                            <div class="card-body">
                                <form action="serchservicemanager">
                                    <div class="input-group">
                                        <input class="form-control" type="text" name="keyword" placeholder="Enter search term..." aria-describedby="button-search" />
                                        <button class="btn btn-primary" type="submit">Go!</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!--- --------->
                        <div class="col-md-4">
                            <div class="card-header" style="font: bold">Category services manager</div> 
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-check">
                                            <c:forEach items="${listcatery}" var="LC">
                                                <a href="categoryservicemanager?category_id=${LC.category_id}"><button style="width: 230px; margin-top: 10px; font-weight: bold;" type="button" class="btn btn-info">${LC.category_name}</button></a>      
                                                </c:forEach>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Categories widget-->
                        <div class="col-md-4">
                            <div class="card-header" style="font: bold">Sorf services</div> 
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-check">
                                            <a href="servicelistmanager"><button style="width: 230px; margin-top: 10px; font-weight: bold;" type="button" class="btn btn-info">List service manager by ID</button></a>
                                            <a href="sortservicemanager"><button style="width: 230px; margin-top: 10px; font-weight: bold;" type="button" class="btn btn-info">Sort by price</button></a>
                                            <a href="sortservicemanagerdiscountprice"><button style="width: 230px; margin-top: 10px; font-weight: bold;" type="button" class="btn btn-info">Sort by discount price</button></a>
                                            <a href="sortservicemanagertitle"><button style="width: 230px; margin-top: 10px; font-weight: bold;" type="button" class="btn btn-info">Sort by title</button></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Side widgets-->
                    <div class="col-md-8">
                        <!-- Search widget-->
                        <table id="slidertable" class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">#ID</th>
                                    <th scope="col">Thumbnail</th>
                                    <th scope="col">Title</th>
                                    <th scope="col">Category</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Sale price</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Edit</th>
                                    <th scope="col">Details</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${listser}" var="LS">
                                    <tr>
                                        <th scope="row">${LS.service_id}</th>
                                        <td><img style="height: 100px; width: 100px" id="main-img" class="imagebig img-fluid rounded" src="./resouce/image/service/${LS.image_link}" alt="..." /></td>
                                        <td>${LS.service_title}</td>
                                        <td>${LS.category_name}</td>
                                        <td>${LS.service_price}$</td>
                                        <td>${LS.service_discount}$</td>
                                        <td>
                                            <c:if test="${LS.service_status == true}">
                                                <div class="form-check form-switch">
                                                    <input class="form-check-input" onclick="changeStatus(this, ${LS.service_id}, 1)" type="checkbox" role="switch" id="flexSwitchCheckChecked" checked />
                                                    <label class="form-check-label" for="flexSwitchCheckChecked">Visible</label>
                                                </div>
                                            </c:if>
                                            <c:if test="${LS.service_status == false}">
                                                <div class="form-check form-switch">
                                                    <input class="form-check-input" onclick="changeStatus(this, ${LS.service_id}, 0)" type="checkbox" role="switch" id="flexSwitchCheckChecked" />
                                                    <label class="form-check-label" for="flexSwitchCheckChecked">Hidden</label>
                                                </div>
                                            </c:if>
                                        </td>
                                        <td><a href="editservicedetailmanager?service_id=${LS.service_id}">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                                                <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                                <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                                </svg>
                                            </a></td>
                                        <td>
                                            <a href="showservicedetailmanager?service_id=${LS.service_id}">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                                                <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                                                <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                                                </svg>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </tbody>

                        </table>


                        <c:choose>
                            <c:when test="${listser==null || listser.size()==0}">
                                <div class="alert alert-danger" role="alert">
                                    <h1>This service does not exist!</h1>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <!--                                    phan trang-->
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination d-flex justify-content-center">
                                        <c:if test="${page > 1}">
                                            <li class="page-item"><a class="page-link" href="servicelistmanager?page=${page-1}">Previous</a></li>
                                            </c:if>
                                            <c:forEach begin="1" end="${totalPage}" var="i">
                                            <li class="page-item ${i==page?"active":""}"><a class="page-link" href="servicelistmanager?page=${i}">${i}</a></li> 
                                            </c:forEach>
                                            <c:if test="${page < totalPage}">
                                            <li class="page-item"><a class="page-link" href="servicelistmanager?page=${page+1}">Next</a></li>
                                            </c:if>
                                    </ul>
                                </nav>

                            </c:otherwise>
                        </c:choose>
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                                                            $('#slidertable').DataTable();
                                                        });
        </script>
        <script>
                                                        function changeStatus(btn, id, status) {
                                                            
                                                            $.ajax({
                                                                url: '/project_swp391/servicelistmanager',
                                                                type: 'POST',
                                                                data: {
                                                                    id: id,
                                                                    status: status
                                                                },
                                                                success: function (data) {

                                                                }
                                                            }
                                                            );
                                                        };
        </script>


    </body>

</html>


