<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Admin Control Panel</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.gstatic.com" rel="preconnect">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
        <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">


    </head>

    <body>

        <header id="header" class="header fixed-top d-flex align-items-center">

            <div class="d-flex align-items-center justify-content-between">
                <a href="dashboard" class="logo d-flex align-items-center">
                    <img src="assets/img/logo.png" alt="">
                    <span class="d-none d-lg-block">Admin</span>
                </a>
                <i class="bi bi-list toggle-sidebar-btn"></i>
            </div><!-- End Logo -->

            <div class="search-bar">
                <form class="search-form d-flex align-items-center" method="POST" action="#">
                    <input type="text" name="query" placeholder="Search" title="Enter search keyword">
                    <button type="submit" title="Search"><i class="bi bi-search"></i></button>
                </form>
            </div><!-- End Search Bar -->

            <nav class="header-nav ms-auto">
                <ul class="d-flex align-items-center">


                    <li class="nav-item dropdown pe-3">

                        <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                            <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
                            <span class="d-none d-md-block dropdown-toggle ps-2">BlackZ</span>
                        </a><!-- End Profile Iamge Icon -->

                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                            <li class="dropdown-header">
                                <h6>Admin Name</h6>
                                <span>Administrator</span>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <i class="bi bi-person"></i>
                                    <span>My Profile</span>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <i class="bi bi-gear"></i>
                                    <span>Account Settings</span>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <i class="bi bi-question-circle"></i>
                                    <span>Need Help?</span>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="/logout">
                                    <i class="bi bi-box-arrow-right"></i>
                                    <span>Sign Out</span>
                                </a>
                            </li>

                        </ul><!-- End Profile Dropdown Items -->
                    </li><!-- End Profile Nav -->

                </ul>
            </nav><!-- End Icons Navigation -->

        </header><!-- End Header -->

        <!-- ======= Sidebar ======= -->
        <aside id="sidebar" class="sidebar">

            <ul class="sidebar-nav" id="sidebar-nav">

                <li class="nav-item">
                    <a class="nav-link collapsed" href="dashboard">
                        <i class="bi bi-grid"></i>
                        <span>Dashboard</span>
                    </a>
                </li><!-- End Dashboard Nav -->

                <li class="nav-heading">QUẢN LÝ TÀI KHOẢN</li>

                <li class="nav-item">
                    <a class="nav-link collapsed" href="user-manager?type=1">
                        <i class="bi bi-person-gear"></i>
                        <span>Quản trị viên</span>
                    </a>
                </li><!-- End Profile Page Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="user-manager?type=2">
                        <i class="bi bi-person"></i>
                        <span>Sinh viên</span>
                    </a>
                </li><!-- End Profile Page Nav -->

                <li class="nav-heading">QUẢN LÝ TOÀ NHÀ</li>
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#">
                        <i class="bi bi-building"></i>
                        <span>Toà nhà A</span>
                    </a>
                </li><!-- End Profile Page Nav -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#">
                        <i class="bi bi-building"></i>
                        <span>Toà nhà B</span>
                    </a>
                </li><!-- End Profile Page Nav -->
                <li class="nav-heading">QUẢN LÝ PHÒNG</li>
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#">
                        <i class="bi bi-inboxes"></i>
                        <span>Phòng</span>
                    </a>
                </li><!-- End Profile Page Nav -->
                <li class="nav-heading">QUẢN LÝ HOÁ ĐƠN</li>
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#">
                        <i class="bi bi-receipt"></i>
                        <span>Hoá đơn</span>
                    </a>
                </li><!-- End Profile Page Nav -->

            </ul>

        </aside><!-- End Sidebar-->

        <main id="main" class="main">

            <div class="pagetitle">
                <h1>Quản lý tài khoản</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="">Admin</a></li>
                        <li class="breadcrumb-item active">Quản lý tài khoản</li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->

            <section class="section profile">
                <div class="row">
                    <div class="col-xl-4">

                        <div class="card">
                            <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                                <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
                                <h2> ${user.name} </h2>
                            </div>
                        </div>

                    </div>

                    <div class="col-xl-8">

                        <div class="card">
                            <div class="card-body pt-3">
                                <!-- Bordered Tabs -->
                                <ul class="nav nav-tabs nav-tabs-bordered">

                                    <li class="nav-item">
                                        <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">Tổng quan</button>
                                    </li>

                                    <li class="nav-item">
                                        <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Sừa hồ sơ</button>
                                    </li>

                                    <li class="nav-item">
                                        <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-settings">Thay đổi quyền</button>
                                    </li>

                                    <li class="nav-item">
                                        <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">Đổi mật khẩu</button>
                                    </li>

                                </ul>
                                <div class="tab-content pt-2">

                                    <div class="tab-pane fade show active profile-overview" id="profile-overview">
                                        <h5 class="card-title">Thông tin cá nhân</h5>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label ">Họ và tên</div>
                                            <div class="col-lg-9 col-md-8">${user.name}</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label ">Ngày sinh</div>
                                            <div class="col-lg-9 col-md-8">${user.dob}</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label ">Địa chỉ</div>
                                            <div class="col-lg-9 col-md-8">${user.address}</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label ">Số CCCD</div>
                                            <div class="col-lg-9 col-md-8">${user.numberCCCD}</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label ">Trường học</div>
                                            <div class="col-lg-9 col-md-8">${user.nameUniversity}</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label ">Số điện thoại</div>
                                            <div class="col-lg-9 col-md-8">${user.phoneNumber}</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label ">Giới tính</div>
                                            <div class="col-lg-9 col-md-8">${user.gender}</div>
                                        </div>

                                        <div class="row">
                                            <div class="col-lg-3 col-md-4 label ">Email</div>
                                            <div class="col-lg-9 col-md-8">${user.gmail}</div>
                                        </div>



                                    </div>

                                    <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                                        <!-- Profile Edit Form -->
                                        <form method="POST" action="user" >
                                            <div class="row mb-3">
                                                <label for="profileImage" class="col-md-4 col-lg-3 col-form-label">Ảnh đại diện</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <img src="assets/img/profile-img.jpg" alt="Profile">
                                                    <div class="pt-2">
                                                        <a href="#" class="btn btn-primary btn-sm" title="Upload new profile image"><i class="bi bi-upload"></i></a>
                                                        <a href="#" class="btn btn-danger btn-sm" title="Remove my profile image"><i class="bi bi-trash"></i></a>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Họ và tên</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <input name="name" type="text" class="form-control" id="name" value="${user.name}">
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Ngày sinh</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <input name="dob" type="text" class="form-control" id="dob" value="${user.dob}">
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Địa chỉ</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <input name="address" type="text" class="form-control" id="address" value="${user.address}">
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Số CCCD</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <input name="cccd" type="text" class="form-control" id="cccd" value="${user.numberCCCD}">
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Trường học</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <input name="university" type="text" class="form-control" id="university" value="${user.nameUniversity}">
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Số điện thoại</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <input name="phone" type="text" class="form-control" id="phone" value="${user.phoneNumber}">
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="gender" class="col-md-4 col-lg-3 col-form-label">Giới tính</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <select name="gender" class="form-select" id="gender">
                                                        <option value="Nam" ${user.gender == 'Nam' ? 'selected' : ''}>Nam</option>
                                                        <option value="Nữ" ${user.gender == 'Nữ' ? 'selected' : ''}>Nữ</option>
                                                        <option value="Không rõ" ${user.gender == 'Không rõ' ? 'selected' : ''}>Không rõ</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Email</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <input name="email" type="text" class="form-control" id="email" value="${user.gmail}">
                                                </div>
                                            </div>




                                            <div class="text-center">
                                                <button type="submit" class="btn btn-primary" value="update">Cập nhật</button>
                                            </div>
                                        </form><!-- End Profile Edit Form -->

                                    </div>

                                    <div class="tab-pane fade pt-3" id="profile-settings">

                                        <!-- Settings Form -->
                                        <form>

                                            <div class="row mb-3">
                                                <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Vai trò</label>
                                                <div class="col-md-8 col-lg-9">
                                                    <div class="row mb-3">

                                                        <div class="col-md-8 col-lg-9">
                                                            <select name="roleId" class="form-select" id="roleId">
                                                                <option value="1" ${account.idRole == 1 ? 'selected' : ''}>Admin</option>
                                                                <option value="2" ${account.idRole == 2 ? 'selected' : ''}>Manager</option>
                                                                <option value="3" ${account.idRole == 3 ? 'selected' : ''}>Renter</option>
                                                            </select>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="text-center">
                                                <button type="submit" class="btn btn-primary">Thay đổi</button>
                                            </div>
                                        </form><!-- End settings Form -->

                                    </div>

                                    <div class="tab-pane fade pt-3" id="profile-change-password">
                                        <!-- Change Password Form -->
                                        <form>



                                            <div class="row mb-3">
                                                <label for="newPassword" class="col-md-4 col-lg-3 col-form-label">Mật khẩu hiện tại</label>
                                                <div class="col-md-6 col-lg-7">
                                                    <input name="newpassword" type="password" class="form-control" id="newPassword" value="${account.password}" disabled>
                                                </div>
                                                <div class="col-md-2 col-lg-2">
                                                    <button type="button" onclick="togglePasswordVisibility('newPassword')" class="btn btn-secondary">Hiện</button>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">Thay đổi mật khẩu</label>
                                                <div class="col-md-6 col-lg-7">
                                                    <input name="renewpassword" type="password" class="form-control" id="renewPassword">
                                                </div>
                                            </div>

                                            <div class="text-center">
                                                <button type="submit" class="btn btn-primary">Đổi mật khẩu</button>
                                            </div>
                                        </form><!-- End Change Password Form -->

                                    </div>

                                </div><!-- End Bordered Tabs -->

                            </div>
                        </div>

                    </div>
                </div>
            </section>

        </main><!-- End #main -->


        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/chart.js/chart.umd.js"></script>
        <script src="assets/vendor/echarts/echarts.min.js"></script>
        <script src="assets/vendor/quill/quill.min.js"></script>
        <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
        <script src="assets/vendor/tinymce/tinymce.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
        <script>
                                                        function togglePasswordVisibility(inputId) {
                                                            var input = document.getElementById(inputId);
                                                            if (input.type === "password") {
                                                                input.type = "text";
                                                                document.querySelector("button[type='button']").textContent = "Ẩn";
                                                            } else {
                                                                input.type = "password";
                                                                document.querySelector("button[type='button']").textContent = "Hiện";
                                                            }
                                                        }
        </script>
    </body>

</html>