<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>코드 관리</title>
  <meta content="" name="description">
  <meta content="" name="---------">

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
  <%@ include file="../../include/header.jsp"%>
 
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
        <ul id="components-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
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
        <ul id="forms-nav2" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
          <li>
            <a href="#">
              <i class="bi bi-circle "></i><span>코드그룹관리</span>
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
          <li class="breadcrumb-item">사이트 관리</li>
          <li class="breadcrumb-item active">코드그룹관리</li>
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
            <input type="text" class="form-control" placeholder="#" value = "">
          </div>
        </fieldset>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">이름</span>
            <input type="text" class="form-control" name="shName">
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
              <button class="btn btn-secondary" id="shbtn"  type="button"><i class="bi bi-search"></i></button>
              <button class="btn btn-success" type="button"><i class="bi bi-arrow-counterclockwise"></i></button>
            </div>
         </div>
       </div>
      </div>
        
        <!-- Table with stripped rows -->
        <table class="datatable table-striped ">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Seq</th>
              <th scope="col">Name</th>
              <!-- <th scope="col">delNY</th> -->
              </tr>
          </thead>
          <tbody>
            <c:choose>
				<c:when test="${fn:length(list) eq 0}">
					<tr>
						<td class="text-center" colspan="9">There is no data!</td>
					</tr>	
				</c:when>
				<c:otherwise>
					<c:forEach items="${list}" var="list" varStatus="status">
					<tr>
						<td><c:out value="${status.index + 1}"></c:out></td>
						<td><c:out value="${list.seq }"></c:out></td>
						<td><a href="/commenGroupForm?seq=<c:out value="${list.seq}"></c:out>"><c:out value="${list.commenGroupName }"></c:out></a></td>
						<%-- <td><c:out value="${list.delNY}"></c:out></td> --%>
					</tr>
					</c:forEach>
				</c:otherwise>
		</c:choose>	
          </tbody>
        </table>
        <!-- End Table with stripped rows -->
  </section>
 <button class="btn btn-secondary" id="btnAdd" type="button" onclick="location.href='commenGroupCreate'">추가</button>
  </main><!-- End #main -->
<!-- 체크박스 스크립트 -->
<!-- <script>
 
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
 -->
  <!-- ======= Footer ======= -->
  <%@ include file="../../include/footer.jsp"%>
  <!-- End Footer -->

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
  <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
  <script type="text/javascript">
 	 $("#shbtn").on("click", function(){
	
 		// 자기 자신을 다시 한 번 호출해준다.
			$("form[name=formList]").attr("method", "post");
			$("form[name=formList]").attr("action", "/commenGroupList").submit();
 		 
 		 
// 		 alert("sdsada");
  	}
  );
 	$("#btnSave").on("click", function(){
 		
 		$("form[name=form]").attr("action", "/commenGroupSave").submit();
 		 
 	}
 );
  </script>
  

</body>

</html>
