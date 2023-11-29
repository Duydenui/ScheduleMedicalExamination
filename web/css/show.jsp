<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/bootstraps.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="js/jquery.dataTables.js"></script>

    <link rel="icon" type="image/png" href="images/favicon.jpg">
    <script src="https://kit.fontawesome.com/f3196321fc.js" crossorigin="anonymous"></script>
    <title>KoonE</title>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2">
                <div class="sidebar">
                    <div class="logo-details">
                        <a style="text-decoration: none;" href="profile.jsp">
                            <i class="fa-brands fa-kickstarter-k"></i>
                            <span class="logo_name">KoonE</span>
                        </a>
                    </div>
                    <ul class="nav-links">
                        <li>
                            <a href="knowmore.html">
                                <i class="fa-solid fa-flag"></i>
                                <span class="link_name">Dashboard</span>
                            </a>
                            <ul class="sub-menu blank">
                                <li><a class="link_name" href="knowmore.html">Category</a></li>
                            </ul>
                        </li>
                        <li>
                            <div class="iocn-link">
                                <a href="show">
                                    <i class="fa-solid fa-book"></i>
                                    <span class="link_name">Category</span>
                                </a>
                                <i class="fa-solid fa-chevron-down"></i>
                            </div>
                            <ul class="sub-menu">
                                <li><a class="link_name" href="#">Category</a></li>
                                <li><a href="#">MAS291</a></li>
                                <li><a href="#">PRJ301</a></li>
                                <li><a href="#">JPD123</a></li>
                                <li><a href="#">IOT102</a></li>
                                <li><a href="#">SWE201c</a></li>
                            </ul>
                        </li>
                        <li>
                            <div class="iocn-link">
                                <a href="contact.html">
                                    <i class="fa-solid fa-signs-post"></i>
                                    <span class="link_name">Posts</span>
                                </a>
                                <i class="fa-solid fa-chevron-down"></i>
                            </div>
                            <ul class="sub-menu">
                                <li><a class="link_name" href="#">Posts</a></li>
                                <li><a href="#">Web Design</a></li>
                                <li><a href="login.html">Login Form</a></li>
                                <li><a href="contact.html">Contact</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa-solid fa-chart-simple"></i>
                                <span class="link_name">Analytics</span>
                            </a>
                            <ul class="sub-menu blank">
                                <li><a class="link_name" href="#">Analytics</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa-solid fa-chart-pie"></i>
                                <span class="link_name">Chart</span>
                            </a>
                            <ul class="sub-menu blank">
                                <li><a class="link_name" href="#">Chart</a></li>
                            </ul>
                        </li>
                        <li>
                            <div class="iocn-link">
                                <a href="#">
                                    <i class="fa-solid fa-plug"></i>
                                    <span class="link_name">Plugins</span>
                                </a>
                                <i class="fa-solid fa-chevron-down"></i>
                            </div>
                            <ul class="sub-menu">
                                <li><a class="link_name" href="#">Plugins</a></li>
                                <li><a href="#">UI Face</a></li>
                                <li><a href="#">Pigments</a></li>
                                <li><a href="#">Box Icons</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="helpsupport.html">
                                <i class="fa-solid fa-compass"></i>
                                <span class="link_name">Explore</span>
                            </a>
                            <ul class="sub-menu blank">
                                <li><a class="link_name" href="#">Explore</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa-solid fa-clock-rotate-left"></i>
                                <span class="link_name">History</span>
                            </a>
                            <ul class="sub-menu blank">
                                <li><a class="link_name" href="#">History</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="setting.jsp">
                                <i class="fa-solid fa-gear"></i>
                                <span class="link_name">Setting</span>
                            </a>
                            <ul class="sub-menu blank">
                                <li><a class="link_name" href="#">Setting</a></li>
                            </ul>
                        </li>
                        <li>
                            <div class="profile-details">
                                <div class="profile-content">
                                    <img src="images/avt.jpg" alt="profile">
                                </div>
                                <div class="name-job">
                                    <div class="profile-name"><c:out value="${sessionScope.username}" /></div>
                                    <div class="job">Student</div>
                                </div>
                                <a href="index.html"><i class="fa-solid fa-right-from-bracket"></i></a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-10">
                <h1>List Registration</h1>
                <div class="table_header">
                    <p>Register Details</p>
                    <div method="get" action="search">
                        <span class="new_regis">New Register Here</span>
                        <a class="add_new" href="create.jsp"><i class="fa-solid fa-user-plus"></i></a>
                    </div>
                </div>
                <div id="tableContainer">
                    <div class="table_section">
                        <table id="examples" class="display">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Username</th>
                                    <th>Email</th>
                                    <th>Course</th>
                                    <th>Action</th>                    
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${ListU}" var="c">
                                    <tr>
                                        <td>${c.id}</td>
                                        <td>${c.username}</td>
                                        <td>${c.email}</td>
                                        <td>${c.course}</td>
                                        <td>
                                            <a class="update" href="update?uid=${c.id}"><i class="fa-solid fa-pen-to-square"></i></a>
                                            <a class="delete" href="delete?uid=${c.id}"><i class="fa-solid fa-trash-can"></i></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="bootstrap.js"></script>
    <script>
                    let arrow = document.querySelectorAll(".fa-chevron-down");
            for (var i = 0; i < arrow.length; i++) {
                arrow[i].addEventListener("click", (e) => {
                    let arrowParent = e.target.parentElement.parentElement;
                    console.log(arrowParent);
                    arrowParent.classList.toggle("showMenu");
                });
            }
        $(document).ready(function() {
            $('#examples').DataTable();
        });
    </script>
</body>
</html>
