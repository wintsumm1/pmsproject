<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />

<!DOCTYPE html>
<html>
<head>
<!--  jquery -->
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>

<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>회의록 - ISAAC PMS</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/css/styles.css">
<link rel="icon" type="image/x-icon"
	href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/img/favicon.png" />
<script data-search-pseudo-elements defer
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js"
	crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function() {
<%-- 
      
      --%>
	});
</script>
</head>

<%@include file="side_bar.jsp"%>

<div id="layoutSidenav_content">
	<main>
		<header
			class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
			<div class="container-xl px-4">
				<div class="page-header-content">
					<div class="row align-items-center justify-content-between pt-3">
						<div class="col-auto mb-3">
							<h1 class="page-header-title">
								<div class="page-header-icon">
									<i data-feather="user"></i>
								</div>
								NEW MINUTES
							</h1>
						</div>
						<div class="col-12 col-xl-auto mb-3">
							<a class="btn btn-sm btn-light text-primary"
								href="${path}/minutesList.do"> <i class="me-1"
								data-feather="arrow-left"></i> 회의록 리스트 페이지로 이동
							</a>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- Main page content-->
		<div class="container-xl px-4 mt-4">
			<div class="row">
				<div class="col-xl-14" style="width:50%;">
					<!-- Account details card-->
					<div class="card mb-4">
						<div class="card-header">새 회의록 등록</div>
						<div class="card-body">
							<form id="frm1" action="${path}/minutesInsert.do">
								<!-- Form Row-->
								<div class="row gx-3 mb-3">
									<!-- Form Group (회의명)-->
									<div class="col-md-6">
										<label class="small mb-1">회의명</label> <input
											class="form-control" id="inputFirstName" name="title"
											type="text" value="${param.title}"
											placeholder="회의명을 입력하세요">
									</div>
									<!-- Form Group (작성자)-->
									<div class="col-md-6">
										<label class="small mb-1">작성자</label> <input
											class="form-control" id="inputLastName" name="writer"
											type="text" value="${login.name}" readonly>
									</div>
								</div>
								<div class="row gx-3 mb-3">
									<label class="small mb-1">회의 참석자</label>
										 	<div class="col-md-6">
										 		<input type="text" id="testt" class="form-control" align="center" style="cursor:pointer;" onClick="multiSelect('OPEN')" value="여기를 눌러 참석자 선택" readonly/>
											</div>
											<div class="col-md-6">
												<input type="button" class="btn btn-primary" value="확인" onClick="multiSelect('CLOSE')">
											</div>
								</div>			
								<div class="col-md-6" id="Div" style="background-color:white; height:150px; width:46%; border:solid; position:absolute; visibility:hidden; font-size:20px; overflow:auto; z-index: 3000;">
									<ul>
										<c:forEach var="md" items="${member}" varStatus="loop">
											<li style="list-style: none"><input name="minutesMember" type="checkbox" value="${md.name}"/> ${md.name}</li>
                                        </c:forEach>
                                    </ul>	
								</div>
											
											
								<!-- Form Group (회의 내용)-->
								<div class="mb-3">
									<label class="small mb-1" for="inputEmailAddress">회의 내용</label>
									<textarea name="contents" rows="10" class="form-control"
										placeholder="회의 내용을 입력하세요">${param.contents}</textarea>
								</div>
								<input type="hidden" id="no" name="no" value="${login.no}">
								<!-- Form Group (권한)-->
								<!-- Submit button-->
								<button class="btn btn-primary" id="insertProc"
									type="button">회의록 작성</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<script type="text/javascript">
	
	
	
	var isInsert = "${isInsert}"
		if (isInsert == "Y") {
			if (confirm("등록되었습니다.\n리스트로 이동합니다.")) {
				location.href="${path}/minutesList.do";
			}
		}

		$("#insertProc").click(function () {
			if (confirm("등록하시겠습니까?")) {
				var titleVal = $("[name=title]").val();
				if (titleVal == "") {
					alert("회의명을 입력하세요");
					$("[name=title]").focus();
					return; // 프로세스를 중단 처리
				}
				var writerVal = $("[name=writer]").val();
				if (writerVal == "") {
					alert("작성자를 입력하세요");
					$("[name=writer]").focus();
					return; // 프로세스를 중단 처리
				}
				var contentsVal = $("[name=contents]").val();
				if (contentsVal == "") {
					alert("회의내용을 입력하세요");
					$("[name=contents]").focus();
					return; // 프로세스를 중단 처리
				}
				
				if (!$("input:checked[name='minutesMember']").is(":checked")){ 
					alert("참석자를 선택해주세요");
					return;
				}
				
				document.querySelector("#frm1").submit();
			}
		})
		
	</script>
	<script>
      function multiSelect(value){
          if(value=="OPEN") {
             Div.style.visibility="visible";
          }else {
             Div.style.visibility="hidden";
             var chArray = new Array(); // 배열 선언
             
             $('input:checkbox[name=minutesMember]:checked').each(function(index,item) {  // 체크된 체크박스의 value 값을 가지고 온다
                chArray.push($(item).val());
             });
             
             if(chArray.length>0) {
                $('#testt').val(chArray)
             }else if(chArray.length==0){
            	$('#testt').val("여기를 눌러 참석자 선택")
             }
          }         
      }		
	</script>
	<footer class="footer-admin mt-auto footer-light">
		<div class="container-xl px-4">
			<div class="row">
				<div class="col-md-6 small">Copyright &copy; Your Website 2021</div>
				<div class="col-md-6 text-md-end small">
					<a href="#!">Privacy Policy</a> &middot; <a href="#!">Terms
						&amp; Conditions</a>
				</div>
			</div>
		</div>
	</footer>
</div>
</div>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script
	src="${path }/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
</body>
</html>
