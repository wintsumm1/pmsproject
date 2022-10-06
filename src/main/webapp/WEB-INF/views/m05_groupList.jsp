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

<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
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
<script src="${path}/a02_com_fun/calDuration.js"></script>
</head>
<%@include file="side_bar.jsp"%>
<div id="layoutSidenav_content">
	<main>
		<header
			class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
			<div class="container-fluid px-4">
				<div class="page-header-content">
					<div class="row align-items-center justify-content-between pt-3">
						<div class="col-auto mb-3">
							<h1 class="page-header-title">
								<div class="page-header-icon">
									<i data-feather="users"></i>
								</div>
								부서 관리
							</h1>
						</div>
						<div class="col-12 col-xl-auto mb-3">
							<a class="btn btn-sm btn-light text-primary"
								href="${path }/memberlist.do"> <i class="me-1"
								data-feather="user"></i> 사원 리스트로 이동
							</a>
							<button class="btn btn-sm btn-light text-primary" type="button"
								data-bs-toggle="modal" data-bs-target="#createGroupModal">
								<i class="me-1" data-feather="plus"></i> 부서 생성
							</button>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- Main page content-->
		<div class="container-fluid px-4">
			<div class="card">
				<div class="card-body">
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th>부서 번호</th>
								<th>부서명</th>
								<th>부서 사원 수</th>
								<th>회사명</th>
								<th>수정 및 삭제</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>부서 번호</th>
								<th>부서명</th>
								<th>부서 사원 수</th>
								<th>회사명</th>
								<th>수정 및 삭제</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="gl" items="${grouplist }" varStatus="sts">
								<tr id="memtr">
									<td id="deptnoDe">${gl.deptno }</td>
									<td id="deptDe">${gl.dept }</td>
									<td>${gl.deptCount }</td>
									<td id="companyDe">${gl.companyName }</td>
									<td>
										<button
											class="btn btn-datatable btn-icon btn-transparent-dark me-2"
											type="button" onclick="detailDept(${sts.index })"
											data-bs-toggle="modal" data-bs-target="#editGroupModal">
											<i data-feather="edit"></i>
										</button> <a class="btn btn-datatable btn-icon btn-transparent-dark"
										onclick="deleteDept(${gl.deptno })"><i
											data-feather="trash-2"></i></a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			var companyname = "${login.companyName}"
				for(no=0; no<$("#datatablesSimple tr #companyDe").length; no++){ 
					if($("#datatablesSimple tr #companyDe").eq(no).text() != companyname){
						$("#datatablesSimple #memtr").eq(no).css("display","none");
						
					}
				}
		</script>
		<!-- Create group modal-->
		<div class="modal fade" id="createGroupModal" tabindex="-1"
			role="dialog" aria-labelledby="createGroupModalLabel"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="createGroupModalLabel">부서 생성</h5>
						<button class="btn-close" type="button" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form id="frm01" enctype="multipart/form-data" class="form"
							method="post" action="${path}/createDept.do">
							<div class="mb-0">
								<label class="mb-1 small text-muted" for="formGroupName">부서명</label>
								<input class="form-control" id="dept" type="text" name="dept"
									placeholder="부서명을 입력하세요" /> <input class="form-control"
									id="companyName" type="hidden" name="companyName"
									value="${login.companyName }" />
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button class="btn btn-danger-soft text-danger" type="button"
							data-bs-dismiss="modal">취소</button>
						<button class="btn btn-primary-soft text-primary" type="button"
							onclick="createGroup()">부서 생성</button>
					</div>
					<script type="text/javascript">
                            		var isInsert = "${isInsert}"
                            			if (isInsert == "Y") {
                            				alert("등록성공했습니다!!")
                            				location.href = "${path}/groupList.do"
                            			}
                                	function createGroup(){
            	                		if("${login.auth}"== 'admin'|| "${login.auth}"=='PM'){
            	                   			console.log($("#dept").val())
            	                			var companyName = "${login.companyName}"
            	                    		for(no=0; no<$("#datatablesSimple tr #deptDe").length; no++){ 
            	                    			if($("#datatablesSimple tr #deptDe").eq(no).text() == $("#dept").val()&&
            	                    						$("#datatablesSimple tr #companyDe").eq(no).text() == companyName){
            	                    						alert("같은 부서명이 있습니다")
            	                    						return;
            	                    				}
            	                    		}
	                                		if (confirm("등록하시겠습니까?")) {
	                                			document.querySelector("#frm01").submit();
	                                		}
            	                		}else{
            	                			alert("admin과 PM만 등록할 수 있습니다.")
            	                		}
                                		
                                	}
                                </script>
				</div>
			</div>
		</div>
		<!-- Edit group modal-->
		<form id="frm02" enctype="multipart/form-data">
			<div class="modal fade" id="editGroupModal" tabindex="-1"
				role="dialog" aria-labelledby="editGroupModalLabel"
				aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="editGroupModalLabel">부서명 변경</h5>
							<button class="btn-close" type="button" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">

							<div class="mb-0">
								<label class="mb-1 small text-muted" for="formGroupName">부서명</label>
								<input class="form-control" id="deptModal" name="dept"
									type="text" placeholder="부서명을 입력하세요" value="" /> <input
									id="deptnoModal" name="deptno" type="text" value="" /> <input
									name="companyName" type="hidden" value="${login.companyName }" />
							</div>
						</div>
						<div class="modal-footer">
							<button class="btn btn-primary-soft text-primary" type="button"
								onclick="updateDept()">변경완료</button>
							<button class="btn btn-danger-soft text-danger" type="button"
								data-bs-dismiss="modal">취소</button>
						</div>
					</div>
				</div>
			</div>
		</form>

		<script type="text/javascript">
						calDuration(9)
	                	function detailDept(deptno) {
	                		$("[id=deptModal]").val($("[id=deptDe]").eq(deptno).text())
	                		$("[id=deptnoModal]").val($("[id=deptnoDe]").eq(deptno).text())
	                	}
	                	function updateDept(deptno){
	                		if("${login.auth}"== 'admin'|| "${login.auth}"=='PM'){

		                		if(confirm("수정하시겠습니까?")){
		                			$("#frm02").attr("action","${path}/updateDept.do");
		                			$("#frm02").submit();
		                		}
		                	}else{
	                			alert("admin과 PM만 수정할 수 있습니다.")
	                		}
	                	}
	                	function deleteDept(deptno){
	                		console.log(deptno)
	                		if("${login.auth}"== 'admin'|| "${login.auth}"=='PM'){
	                			if(confirm("삭제하시겠습니까?")){ 
	                				location.href="${path}/deleteDept.do?deptno="+deptno;
	                				}
	                		}else{
	                			alert("admin과 PM만 삭제할 수 있습니다.")
	                		}

	                	}
	                	var proc="${proc}"
	                		if(proc=="upt"){
	                			if(confirm("수정성공\n조회리스트 화면으로 이동하시겠습니까?")){
	                				location.href="${path}/groupList.do";
	                			}
	                		}
	                		if(proc=="del"){
	                				alert("삭제성공! 조회리스트로 이동!");
	                				location.href="${path}/groupList.do";
	                		}

                    </script>
	</main>
	<footer class="footer-admin mt-auto footer-light">
		<div class="container-xl px-4">
			<div class="row">
				<div class="col-md-6 small">Copyright &copy; ISAAC PMS 2022</div>
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
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
	crossorigin="anonymous"></script>
<script
	src="${path }/a01_com_lib/sb-admin-pro_no-source/dist/js/datatables/datatables-simple-demo.js"></script>
</body>
</html>
