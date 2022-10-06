<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>   

<!DOCTYPE html>
<html lang="en">
    <head>
    	<!--  jquery -->
		<script src="${path}/a00_com/jquery.min.js"></script>
		<script src="${path}/a00_com/popper.min.js"></script>
		<script src="${path}/a00_com/bootstrap.min.js"></script>
		<script src="${path}/a00_com/jquery-ui.js"></script>
    
		<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>회의록 - ISAAC PMS</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link rel="stylesheet" href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/css/styles.css">
        <link rel="icon" type="image/x-icon" href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/img/favicon.png" />
        <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${path }/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
    <script type="text/javascript">
   $(document).ready(function(){
      <%-- 
      
      --%>   
   });
</script>
    </head>
    <body class="nav-fixed">


    <%@include file="side_bar.jsp" %>

            <div id="layoutSidenav_content">
                <main>
                    <header class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
                        <div class="container-xl px-4">
                            <div class="page-header-content">
                                <div class="row align-items-center justify-content-between pt-3">
                                    <div class="col-auto mb-3">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"> <i data-feather="user"></i></div>
                                            회의록 상세
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">
                                        <a class="btn btn-sm btn-light text-primary" href="${path}/minutesList.do">
                                            <i class="me-1" data-feather="arrow-left"></i>
                                            리스트로 돌아가기
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4 mt-4">
                        <div class="row">
                            <div class="col-xl-10">
                                <!-- Account details card-->
                                <div class="card mb-4">
                                    <div class="card-header">${minutes.title}</div>
                                    <div class="card-body">
                                        <form id = "frm1">
                                        <input type = "hidden" class="form-control" value="${minutes.title}"/>
                                            <!-- Form Row-->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group -->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">글 번호</label>
                                                    <input class="form-control" id="minutesno" name="minutesno" type="text" value="${minutes.minutesno}" readonly>
                                                </div>
                                                <!-- Form Group (조회수)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">조회수</label>
                                                    <input class="form-control" type="text" value="${minutes.readcnt}" readonly/>
                                                </div>
                                            </div>
                                            <!-- Form Group -->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (작성일)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">작성일 </label>
                                                    <input class="form-control" type="text" placeholder="Enter your first name" value="${minutes.regdte}" readonly/>
                                                </div>
                                                <!-- Form Group (수정일)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">수정일</label>
                                                    <input class="form-control" type="text" placeholder="Enter your last name" value="${minutes.uptdte}" readonly>
                                                </div>
                                            </div>
                                            <!-- Form Group (회의명)-->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (회의명)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">회의명 </label>
                                                    <input class="form-control" type="text" name="title" placeholder="Enter your organization name" value="${minutes.title}" >
                                                </div>
                                                <!-- Form Group (작성자)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">작성자</label>
                                                    <input class="form-control" type="text" id="minutesDt" value="${minutes.writer}" readonly/>
                                                </div>
                                            </div>
                                            <div class="row gx-3 mb-3">
	                                            <div class="col-md-6">
	                                                <label class="small mb-1">회의 참석자</label>
	                                                <input class="form-control" type="text" placeholder="Enter your last name" value="${minutes.minutesMember}" readonly>
	                                            </div>                                           
	                                        </div>                                           
                                            <!--  회의내용 -->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (회의내용)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">회의내용</label>
 													<textarea name="contents" rows="10" class="form-control" 
 													id="kt-editor" placeholder="내용 입력하세요">${minutes.contents}</textarea>
                                                </div>
                                            </div>
                                            <!-- Submit button-->
								            <!-- UPDATE DELETE GO MAIN button-->
								            <button class="btn btn-primary" onclick="updateProc()" type="button">수정</button>
								            <button class="btn btn-primary" onclick="deleteProc()" type="button">삭제</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="footer-admin mt-auto footer-light">
                    <div class="container-xl px-4">
                        <div class="row">
                            <div class="col-md-6 small">Copyright &copy; Your Website 2021</div>
                            <div class="col-md-6 text-md-end small">
                                <a href="#!">Privacy Policy</a>
                                &middot;
                                <a href="#!">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        
<script type="text/javascript">
var proc = "${proc}"
var minutesno = "${minutes.minutesno}"
	if(proc=="upt"){
		if(confirm("수정되었습니다. \n리스트 페이지로 이동하시겠습니까?")){
			location.href="${path}/minutesList.do";
		}else{
			history.go(-1);
		} 
	}else if(proc=="del"){
		alert("삭제되었습니다. \n조회 리스트화면으로 이동합니다.")
		location.href="${path}/minutesList.do";
	}	 	
function updateProc(){
 	if("${login.name}" == $("#minutesDt").val() ) { // 권한 체크
 		$("#frm1").attr("action","${path}/updateMinutes.do").submit();
 	return;
	}else {
		alert("작성자만 수정가능합니다.")
	}
} 

function deleteProc(){
  	if("${login.name}" == $("#minutesDt").val()){ // 권한 체크
		$("#frm1").attr("action","${path}/deleteMinutes.do").submit();
  	return;
	}else {
		alert("작성자만 삭제가능합니다.")	
	}		
} 
 
</script>
    </body>
</html>
