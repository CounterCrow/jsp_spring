<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<form name="form" method="post" action="/com.mycompany.app.commenGroup.CommenGroupController">
<input type="text" id="seq" name = "seq"  value="<c:out value="${ item.seq}"/>">
<input type="text" id="commenGroupName" name = "commenGroupName"  value="<c:out value="${ item.commenGroupName}"/>">
<button class="btn btn-secondary" id="shbtn"  type="button"><i class="bi bi-search"></i></button>
<button class="btn btn-secondary" id="btnSave"  type="button">save</button>
<button class="btn btn-secondary" id="btnUpdate"  type="button">update</button>
<button class="btn btn-secondary" id="btnDelete"  type="button">delete</button>
<button class="btn btn-secondary" id="btnUpdele"  type="button">Updele</button>
</form>

<script type="text/javascript">

$("#btnUpdate").on("click", function(){
	
		// 자기 자신을 다시 한 번 호출해준다.
		/* $("form[name=formList]").attr("method", "post"); */
		$("form[name=form]").attr("action", "/commenGroupUpdate").submit();
		 
		 
//		 alert("sdsada");
	}
);
$("#btnDelete").on("click", function(){
	
	$("form[name=form]").attr("action", "/commenGroupDelete").submit();
	 
	 
//	 alert("sdsada");
}
);
$("#btnDelete").on("click", function(){
	
	$("form[name=form]").attr("action", "/commenGroupDelete").submit();
	 
	 
//	 alert("sdsada");
}
);
$("#btnSave").on("click", function(){
	
	$("form[name=form]").attr("action", "/commenGroupSave").submit();
	 
	 
//	 alert("sdsada");
}
);
$("#btnUpdele").on("click", function(){
	
	$("form[name=form]").attr("action", "/commenGroupUpdele").submit();
	 
	 
//	 alert("sdsada");
}
);

</script>         

 <link href="/resources/admin/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 <link href="/resources/admin/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
 <script src="/resources/admin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 <script src="/resources/admin/assets/js/main.js"></script>