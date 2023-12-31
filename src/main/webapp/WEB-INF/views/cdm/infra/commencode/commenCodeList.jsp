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

  <%@ include file="../../include/csslink.jsp"%>
</head>

<body>

  <!-- ======= Header ======= -->
  <%@ include file="../../include/header.jsp"%>
 
  <!-- ======= Sidebar ======= -->
  <%@ include file="../../include/sidebar.jsp"%>
  <!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>코드 관리</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="/index">Home</a></li>
          <li class="breadcrumb-item">사이트 관리</li>
          <li class="breadcrumb-item active">코드관리</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

  <section>
    <div class="card">
      <div class="card-body">
        <div class="card-search">
        <form  class="input-group input-group-sm mb-3 w-100" name="formList">
          <div class="input-group input-group-sm mb-3 w-25 ">
            <span class="input-group-text" id="inputGroup-sizing-sm">Seq</span>
            <input type="text" class="form-control" id="shCommenCDseq" name="shCommenCDseq" >
          </div>
          <div class="input-group input-group-sm mb-3 w-25 ">
            <span class="input-group-text" id="inputGroup-sizing-sm">GroupSeq</span>
            <input type="text" class="form-control" id="shGroupSeq" name="shGroupSeq" >
          </div>
	          <div class="input-group input-group-sm mb-3 w-25">
	            <span class="input-group-text" id="inputGroup-sizing-sm">Name</span>
	            <input type="text" class="form-control" id="shCommenCDname" name="shCommenCDname" >
	          </div>
          <div class="input-group input-group-sm mb-3 w-25">
            <span class="input-group-text" id="inputGroup-sizing-sm">Name(EN)</span>
            <input type="text" class="form-control"id="shCommenCDnameEN" name="shCommenCDnameEN" >
          </div>
            <div class="input-group input-group-sm mb-3 w-25">
              <span class="input-group-text" id="inputGroup-sizing-sm">생성일</span>
              <input type="date" class="form-control"id="shCommenCDregDT" name="shCommenCDregDT">
            </div>
            <div class="btn-box d-grid gap-2 d-md-flex justify-content-md-end">
              <button class="btn btn-secondary" id="shbtn"  type="button"><i class="bi bi-search"></i></button>
              <button class="btn btn-success" type="button"><i class="bi bi-arrow-counterclockwise"></i></button>
            </div>
             </form>            
         </div>
       </div>
      </div>
        
        <!-- Table with stripped rows -->
        <table class="table table-striped ">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Seq</th>
              <th scope="col">CodeGroup</th>
              <th scope="col">Name</th>
              <!-- <th scope="col">delNY</th> -->
              <th scope="col">Name(EN)</th>
              <th scope="col">생성일(연-월-일 시:분:초)</th>
              <th scope="col">수정일(연-월-일 시:분:초)</th>
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
						<td><c:out value="${list.commenCDseq }"></c:out></td>
						<td><a href="/commenCodeForm?commenCDseq=<c:out value="${list.commenCDseq}"></c:out>"><c:out value="${list.commen_Group_seq }"></c:out></a></td>
						<td><a href="/commenCodeForm?commenCDseq=<c:out value="${list.commenCDseq}"></c:out>"><c:out value="${list.commenCDName }"></c:out></a></td>
						<%-- <td><c:out value="${list.commenCDdelNY}"></c:out></td> --%>
						<td><a href="/commenCodeForm?commenCDseq=<c:out value="${list.commenCDseq}"></c:out>"><c:out value="${list.commenCDNameEN }"></c:out></a></td>
						<td><a href="/commenCodeForm?commenCDseq=<c:out value="${list.commenCDseq}"></c:out>"><fmt:formatDate value="${list.commenCDregDT}" pattern="yyyy-MM-dd HH:mm:ss" /></a></td>
						<td><a href="/commenCodeForm?commenCDseq=<c:out value="${list.commenCDseq}"></c:out>"><fmt:formatDate value="${list.commenCDmodDT}" pattern="yyyy-MM-dd HH:mm:ss" /></a></td>
					</tr>
					</c:forEach>
				</c:otherwise>
		</c:choose>	
          </tbody>
        </table>
 		
 		<jsp:include page="../../include/pagination.jsp">
        <jsp:param value="${paging.page}" name="page"/>
        <jsp:param value="${paging.beginPage}" name="begin"/>
        <jsp:param value="${paging.endPage}" name="end"/>
        <jsp:param value="${paging.prev}" name="prev"/>
        <jsp:param value="${paging.next}" name="next"/>
		</jsp:include>
 		
 		
        <!-- End Table with stripped rows -->
          <div class="btn-box d-grid gap-2 d-md-flex justify-content-md-end">
              <button class="btn btn-secondary" id="btnAdd" type="button" onclick="location.href='commenCodeForm'">추가</button>
           </div>
  </section>
  </main>
  <!-- End #main -->

  <!-- ======= Footer ======= -->
  <%@ include file="../../include/footer.jsp"%>
  <!-- End Footer -->
  <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="../../include/jslink.jsp"%>
  <script type="text/javascript">
 	 $("#shbtn").on("click", function(){
	
 		// 자기 자신을 다시 한 번 호출해준다.
			$("form[name=formList]").attr("method", "post");
			$("form[name=formList]").attr("action", "/commenCodeList").submit();
 		 
 		 
  	}
  );
  </script>
  

</body>

</html>