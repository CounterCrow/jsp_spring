<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>사용자관리</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="/resources/admin/admin/assets/img/favicon.png" rel="icon">
  <link href="/resources/admin/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/resources/admin/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/resources/admin/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/resources/admin/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/resources/admin/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="/resources/admin/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="/resources/admin/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/resources/admin/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/resources/admin/assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="admin" class="logo d-flex align-items-center">
        <span class="d-none d-lg-block">Admin</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div>
    <!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->
        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="/resources/admin/assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">로그인한 사람 이름</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>Kevin Anderson</h6>
              <span>Web Designer</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-gear"></i>
                <span>Account Settings</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>Need Help?</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="portfolioLogin">
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
        <a class="nav-link " href="admin">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li>
      <!-- End Dashboard Nav -->
      <!-- 사이드바 -->
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>Member</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="/member.html">
              <i class="bi bi-circle"></i><span>사용자관리</span>
            </a>
          </li>
        </ul>
      </li>
      <!-- End Management Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>Product</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="product">
              <i class="bi bi-circle"></i><span>제품 관리</span>
            </a>
          </li>
        </ul>
      </li>
      <!-- End Forms Nav -->
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav2" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>사이트 관리</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav2" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="#">
              <i class="bi bi-circle"></i><span>트레픽 관리</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="bi bi-circle"></i><span>데이터 관리</span>
            </a>
          </li>
        </ul>
      </li>
      <!-- End Forms Nav -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#">
          <i class="bi bi-gear"></i>
          <span>설정</span>
        </a>
      </li><!-- End Blank Page Nav -->

    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>사용자관리</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item">Member</li>
          <li class="breadcrumb-item active">사용자관리</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

  <section>
    <div class="card">
      <div class="card-body">
        <div class="card-search">
          <fieldset disabled>
          <div class="input-group input-group-sm mb-3 w-25 inputseq">
            <span class="input-group-text" id="inputGroup-sizing-sm">Seq</span>
            <input type="text" class="form-control" placeholder="#">
          </div>
        </fieldset>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">이름</span>
            <input type="text" class="form-control">
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">ID</span>
            <input type="text" class="form-control">
          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">Email</span>
            <input type="text" class="form-control">
          </div>
        </div>
          <div class="card-search">
            <div class="input-group input-group-sm mb-3 w-25">
              <span class="input-group-text" id="inputGroup-sizing-sm">Phone</span>
              <input type="text" class="form-control">
            </div>
            <div class="input-group input-group-sm mb-3 w-25">
              <span class="input-group-text" id="inputGroup-sizing-sm">StarDT</span>
              <input type="date" class="form-control">
            </div>
            <div class="btn-box d-grid gap-2 d-md-flex justify-content-md-end">
              <button class="btn btn-secondary" type="button"><i class="bi bi-search"></i></button>
              <button class="btn btn-success" type="button"><i class="bi bi-arrow-counterclockwise"></i></button>
            </div>
        </div>
       </div>
      </div>
        
        <!-- Table with stripped rows -->
        <table class="datatable table-striped ">
          <thead>
            <tr>
              <th scope="col" class="doNotScript">
                <input type="checkbox" name="checked" id="allCheck" value="">
              </th>
              <th scope="col">#</th>
              <th scope="col">ID</th>
              <th scope="col">Name</th>
              <th scope="col">Email</th>
              <th scope="col">Phone</th>
              <th scope="col">regDate</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="col" class="doNotScript">
                <input type="checkbox" name="checked" id="Check" value="">
              </th>
              <th scope="row">1</th>
              <td>admin01</td>
              <td>홍길동</td>
              <td>5555@naver.com</td>
              <td>010-5555-1221</td>
              <td>2016-05-25</td>
            </tr>
            <tr>
              <th scope="col" class="doNotScript">
                <input type="checkbox" name="checked" id="Check" value="">
              </th>
              <th scope="row">2</th>
              <td>user01</td>
              <td>홍길동</td>
              <td>4444@naver.com</td>
              <td>010-4444-1221</td>
              <td>2014-12-05</td>
            </tr>
            <tr>
              <th scope="col" class="doNotScript">
                <input type="checkbox" name="checked" id="Check" value="">
              </th>
              <th scope="row">3</th>
              <td>user02</td>
              <td>다길동</td>
              <td>3333@naver.com</td>
              <td>010-3333-1221</td>
              <td>2011-08-12</td>
            </tr>
            <tr>
              <th scope="col" class="doNotScript">
                <input type="checkbox" name="checked" id="Check" value="">
              </th>
              <th scope="row">4</th>
              <td>user03</td>
              <td>나길동</td>
              <td>1111@naver.com</td>
              <td>010-2222-1221</td>
              <td>2012-06-11</td>
            </tr>
            <tr>
              <th scope="col" class="doNotScript">
                <input type="checkbox" name="checked" id="Check" value="">
              </th>
              <th scope="row">5</th>
              <td>user04</td>
              <td>강길동</td>
              <td>2222@naver.com</td>
              <td>010-1111-1221</td>
              <td>2011-04-19</td>
            </tr>
          </tbody>
        </table>
        <!-- End Table with stripped rows -->
  </section>

  </main><!-- End #main -->
<!-- 체크박스 스크립트 -->
<script>
 
 	// checkbox 적용되는 datatables 효과 제거
  
   window.addEventListener('DOMContentLoaded', function() {
      const firstThElement = document.querySelector('th:first-child');
      const aElement = firstThElement.querySelector('a');
  
      firstThElement.removeAttribute('data-sortable');
      firstThElement.removeAttribute('aria-sort');
      firstThElement.classList.remove('datatable-ascending');
      firstThElement.removeAttribute('style');
  
      if (aElement) {
        aElement.removeAttribute('href');
        aElement.classList.remove('datatable-sorter');
      }
      document.getElementById("allCheck").addEventListener('change', function(){
		for (var i = 0; i < document.getElementsByName("checked").length; i++) {
			document.getElementsByName("checked")[i].checked = this.checked;
		}
	});	
    });
    document.getElementById("allCheck").addEventListener('change', function(){
		for (var i = 0; i < document.getElementsByName("checked").length; i++) {
			document.getElementsByName("checked")[i].checked = this.checked;
		}
	});	
</script>

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>Crow_Market</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="/resources/admin/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="/resources/admin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/resources/admin/assets/vendor/chart.js/chart.umd.js"></script>
  <script src="/resources/admin/assets/vendor/echarts/echarts.min.js"></script>
  <script src="/resources/admin/assets/vendor/quill/quill.min.js"></script>
  <script src="/resources/admin/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="/resources/admin/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="/resources/admin/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="/resources/admin/assets/js/main.js"></script>
  <!-- 체크박스쿼리 -->
  

</body>

</html>