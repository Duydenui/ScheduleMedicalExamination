
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Child Care System</title>
        <!-- Favicon-->
        <link href="assets/img/child-care-icon.png" rel="icon" type="images/png">
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles1.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="servicelistpaging">Service</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="home.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Category</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <c:forEach items="${listC}" var="o">
                                    <li><a class="dropdown-item" href="servicecategory?cid=${o.category_id}">${o.category_name}</a></li>
                                    </c:forEach>
                            </ul>
                        </li>
                        <form class="search-form" action="searchservice" method="post">
                            <input type="text" name="servicename" placeholder="Nhập từ khóa tìm kiếm">
                            <input type="submit" value="Tìm kiếm">
                        </form>
                    </ul>

                </div>
            </div>
        </nav>
        <!-- Product section-->
        <section class="py-3">
            <div class="container px-2 px-lg-3 my-3">
                <div class="row gx-2 gx-lg-3 align-items-center">

                    <div class="col-md-12 text-center">
                        <h1 class="display-6 fw-bolder text-center" style="font-size: 3rem;">${detail.service_title}</h1>
                        <img class="card-img-top mb-3 mb-md-0" src="./resouce/image/service/${detail.image.get(0).getImage_link()}" alt="Image" style="width: 700px; max-width: 100%; display: block; margin: 0 auto;" />
                    </div>


                    <div class="col-md-12">
                        <div class="fs-6 mb-3 text-center">
                            <span class="text-decoration-line-through">$${detail.service_price}</span>
                            <span class="text-danger">$${detail.service_discount}</span>
                        </div>
                        <p class="lead" style="font-size: 1.5rem;">${detail.service_detail}</p>
                    </div>

                </div>
            </div>
        </section>

        <!-- Footer-->
        <style>
            .search-form {
                display: flex;
                align-items: center;
            }

            .search-form input[type="text"] {
                flex-grow: 1;
            }
        </style>
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts1.js"></script>
    </body>
</html>