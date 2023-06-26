<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form>
<input type="text" id="seq" name = "item"  value="<c:out value="${ item.seq}"/>">
<input type="text" id="commenGroupName" name = "item"  value="<c:out value="${ item.commenGroupName}"/>">
<button class="btn btn-secondary" id="shbtn"  type="button"><i class="bi bi-search"></i></button>
</form>

         

 <link href="/resources/admin/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 <link href="/resources/admin/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
 <script src="/resources/admin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 <script src="/resources/admin/assets/js/main.js"></script>
  <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>