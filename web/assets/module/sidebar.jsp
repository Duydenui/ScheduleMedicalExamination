<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="side-bar">
    <div id="close-btn">
        <i class="fas fa-times"></i>
    </div>

    <c:choose>
        <c:when test="${sessionScope.account != null}">
            <div class="profile">
                <img src="./resouce/image/${sessionScope.account.user_image}" class="image" alt="">
                <h3 class="name">${sessionScope.account.user_name}</h3>
                <p class="role">${sessionScope.account.user_role}</p>
                <a href="user_profile" class="btn">view profile</a>
            </div>
        </c:when>
        <c:when test="${sessionScope.admin != null}">
            <div class="profile">
                <img src="./resouce/image/${sessionScope.admin.user_image}" class="image" alt="">
                <h3 class="name">${sessionScope.admin.user_name}</h3>
                <p class="role">${sessionScope.admin.user_role}</p>
                <a href="profile.jsp" class="btn">view profile</a>
            </div>
        </c:when>
    </c:choose>



    <nav class="navbar">
        <ul>
            <li><a href="home"><i class="fas fa-home"></i><span>home</span></a></li>

            <li><a href="aboutcontrol"><i class="fas fa-question"></i><span>about</span></a></li>

            <li><a href="servicelistpaging"><i class="fas fa-chalkboard-user"></i><span>services</span></a></li>

            <li><a href="bloglist"><i class="fa-solid fa-blog"></i><span>blogs</span></a></li>

            <li><a href="staff.jsp"><i class="fa-solid fa-clipboard-user"></i><span>Staffs</span></a></li>

            <li><a href="feedback"><i class="fas fa-headset"></i><span>Feedback</span></a></li>

            <c:if test="${sessionScope.account.user_role == 1}">
                <li><a href="./Admin/AdminDashBoard"><i class="fa-solid fa-person"></i><span>Admin</span></a></li>
                        </c:if>

            <c:if test="${sessionScope.account.user_role == 5}">
                <li class="dropdown"><a href="#"><i class="fa-solid fa-bars-progress"></i><span>Manager</span></a>
                    <ul>
                        <!--                  <li><a href="medicalexamination">Medical examination</a></li>-->
                        <li><a href="FeedbackManagerServlet">Feedback List</a></li>
                        <li><a href="ReservationListController">Reservation List</a></li>
                        <li><a href="schedule">Schedule doctor</a></li>
                        <li><a href="listslidermanager">Slider List Manager</a></li>
                        <li><a href="servicelistmanager">Service List Manager</a></li>
                        <li><a href="customerList">Customer List Manager</a></li>
                        <li><a href="PostListController">Post List</a></li>
                    </ul>
                </li>
            </c:if>
            <c:if test="${sessionScope.account.user_id != null || sessionScope.admin.user_id != null}">
                <li class="dropdown"><a href="#"><i class="fa-solid fa-user"></i><span>User Manager</span></a>
                    <ul>
                        <li><a href="myreservation">My Reservation</a></li>
                            <c:if test="${sessionScope.account.user_role == 2}">
                            <li><a href="MyCustomerList">Customer List</a></li>
                            <li><a href="DoctorMedicalexammination">Doctor Medical Examination</a></li>
                            </c:if>
                        <li><a href="UserMedicalexammination">User Medical examination</a></li>
                        <li><a href="changepassword.jsp">Change Password</a></li>
                    </ul>
                </li>
            </c:if>
        </ul>
    </nav>

</div>