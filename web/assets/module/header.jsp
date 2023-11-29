<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <!-- ======= Header ======= -->
<header class="header">
    <section class="flex">
        <a href="home" class="logo">Children Care</a>
        <form action="searchBlog" method="post" class="search-form">
            <input type="text" name="search_box" required placeholder="search on web..." maxlength="100">
            <button type="submit" class="fas fa-search"></button>
        </form>
<!--        <a class="me-3 m-auto" href="reservation-detail">
            <i style="font-size: 30px;color:grey;" class="fas fa-shopping-cart"></i>
            <span id="cart-number" class="cart-number">
                <c:choose>
                    <c:when test="${sessionScope.carts.size() != null}">
                        <c:out value="${sessionScope.carts.size()}" />
                    </c:when>
                    <c:otherwise>0</c:otherwise>
                </c:choose>
                <span class="visually-hidden" style="display: none;">Cart item</span>
            </span>
        </a>-->
        <div class="icons">
            <div id="menu-btn" class="fas fa-bars"></div>
            <div id="search-btn" class="fas fa-search"></div>
            <div id="user-btn" class="fas fa-user"></div>
            <div id="toggle-btn" class="fas fa-sun"></div>
        </div>
        <div class="profile">
    <c:if test="${sessionScope.account != null || sessionScope.admin != null}">
        <c:choose>
            <c:when test="${sessionScope.account != null}">
                <a href="profile.jsp" class="">
                    <img src="./resouce/image/${sessionScope.account.user_image}" class="image" alt="">
                    <h3 class="name">${sessionScope.account.user_name}</h3>
                    <p class="role">${sessionScope.account.user_role}</p>
                </a>
            </c:when>
            <c:when test="${sessionScope.admin != null}">
                <a href="profile.jsp" class="">
                    <img src="./resouce/image/${sessionScope.admin.user_image}" class="image" alt="">
                    <h3 class="name">${sessionScope.admin.user_name}</h3>
                    <p class="role">${sessionScope.admin.user_role}</p>
                </a>
            </c:when>
        </c:choose>
        <a href="logout" class="option-btn">Logout</a>
    </c:if>
    <c:if test="${sessionScope.account == null && sessionScope.admin == null}">
        <div class="flex-btn">
            <a href="login.jsp" class="option-btn">Login</a>
            <a href="register.jsp" class="option-btn">Register</a>
        </div>
    </c:if>
</div>


    </section>
</header>

