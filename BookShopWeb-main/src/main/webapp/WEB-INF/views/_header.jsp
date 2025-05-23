<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Header Section -->
<header class="section-header">
  <section class="header-main border-bottom bg-dark text-white">
    <div class="container">
      <div class="row align-items-center">
        <!-- Logo -->
        <div class="col-lg-3 py-3">
          <a class="text-white" href="${pageContext.request.contextPath}/">
            <h3> Shop Sách Nai Vàng</h3>
          </a>
        </div> <!-- col.// -->
        
        <!-- Search Form -->
        <div class="col-lg-4 col-xl-5 ${empty sessionScope.currentUser ? 'mb-3 mb-lg-0' : ''}">
          <form action="${pageContext.request.contextPath}/search" method="post" class="search">
            <div class="input-group w-100">
              <input type="text"
                     class="form-control"
                     placeholder="Nhập từ khóa cần tìm ..."
                     name="q"
                     value="${requestScope.query}">
              <button class="btn btn-warning" type="submit">
                <i class="bi bi-search"></i>
              </button>
            </div>
          </form>
        </div> <!-- col.// -->
        
        <!-- Account and Cart -->
        <div class="col-lg-5 col-xl-4">
          <c:if test="${not empty sessionScope.currentUser}">
            <ul class="nav col-12 col-lg-auto my-2 my-lg-0 justify-content-center justify-content-lg-end text-small">
              <li>
                <a href="${pageContext.request.contextPath}/user" class="nav-link text-white">
                  <i class="bi bi-person d-block text-center fs-3"></i>
                  Tài khoản
                </a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/order" class="nav-link text-white">
                  <i class="bi bi-list-check d-block text-center fs-3"></i>
                  Đơn hàng
                </a>
              </li>
              <li>
                <a href="${pageContext.request.contextPath}/cart" class="nav-link text-white position-relative">
                  <span id="total-cart-items-quantity" class="position-absolute top-0 end-0 mt-2 badge rounded-pill bg-warning">
                    ...
                  </span>
                  <i class="bi bi-cart d-block text-center fs-3 position-relative"></i>
                  GIỎ HÀNG
                </a>
              </li>
            </ul>
          </c:if>
        </div> <!-- col.// -->
      </div> <!-- row.// -->
    </div> <!-- container.// -->
  </section> <!-- header-main.// -->
</header> <!-- section-header.// -->

<!-- Navbar Section -->
<nav class="navbar navbar-main navbar-expand-lg navbar-dark bg-dark text-white border-bottom">
  <div class="container">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button"
             data-bs-toggle="dropdown" aria-expanded="false">
            <strong><i class="bi bi-list"></i> Danh mục sản phẩm</strong>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="category?id=1">Sách giáo khoa</a></li>
            <li><a class="dropdown-item" href="category?id=2">Sách khoa học</a></li>
            <li><a class="dropdown-item" href="category?id=3">Truyện tranh</a></li>
            <li><a class="dropdown-item" href="category?id=4">Tiểu thuyết</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#category-section">Tất cả danh mục</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white" href="${pageContext.request.contextPath}/#new-products">Sản phẩm mới nhất</a>
        </li>
      </ul>
      <c:choose>
        <c:when test="${not empty sessionScope.currentUser}">
          <span>Xin chào <strong>${sessionScope.currentUser.fullname}</strong>!</span>
          <a class="btn btn-light ms-2" href="${pageContext.request.contextPath}/signout" role="button">
            Đăng xuất
          </a>
        </c:when>
        <c:otherwise>
          <a class="btn btn-light me-2" href="${pageContext.request.contextPath}/signup" role="button">
            Đăng ký
          </a>
          <a class="btn btn-primary" href="${pageContext.request.contextPath}/signin" role="button">
            Đăng nhập
          </a>
        </c:otherwise>
      </c:choose>
    </div>
  </div> <!-- container.// -->
</nav> <!-- navbar-main.// -->
