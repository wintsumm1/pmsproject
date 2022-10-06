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
    
	    <link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
		<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link rel="stylesheet" href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/css/styles.css">
        <link rel="icon" type="image/x-icon" href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/img/favicon.png" />
        <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
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
                                            <div class="page-header-icon"><i data-feather="user"></i></div>
                                            사원 정보 수정
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">
                                        <a class="btn btn-sm btn-light text-primary" href="${path}/memberlist.do">
                                            <i class="me-1" data-feather="arrow-left"></i>
                                            Back to Users List
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <form id = "frm1">
                    <div class="container-xl px-4 mt-4">
                        <div class="row">
<div class="col-xl-4">
					<!-- Profile picture card-->
					<div class="card mb-3 mb-xl-0">
						<div class="card-header">Profile Picture</div>
						<div class="card-body text-center">
							<!-- Profile picture image-->

							<input id="img1" name ="memberimg" type="radio" value="${path}/asset/images/profile-1.png" />
							  <label for="img1">
							  <img class="img-account-profile rounded-circle mb-2" src="${path}/asset/images/profile-1.png" alt="" />
							  </label>
							  
							  <input type="radio" name ="memberimg" value="${path}/asset/images/profile-2.png" />
							  <label for="img1">
							  <img class="img-account-profile rounded-circle mb-3" src="${path}/asset/images/profile-2.png" alt="" />
							  </label><br>
							  
							  <input type="radio" name ="memberimg" value="${path}/asset/images/profile-3.png"  />
							  <label for="img1">
							  <img class="img-account-profile rounded-circle mb-4" src="${path}/asset/images/profile-3.png" alt="" />
							  </label> 
							  
							  <input type="radio" name ="memberimg" value="${path}/asset/images/profile-4.png" />
							  <label for="img1">
							  <img class="img-account-profile rounded-circle mb-5" src="${path}/asset/images/profile-4.png" alt="" />
							  </label><br>
							  
							  <input type="radio" name ="memberimg" value="${path}/asset/images/profile-5.png" /> 
							  <label for="img1">
							  <img class="img-account-profile rounded-circle mb-6" src="${path}/asset/images/profile-5.png" alt="" />
							  </label>
							  
							  <input type="radio" name ="memberimg" value="${path}/asset/images/profile-6.png" />
							  <label for="img1">
							  <img class="img-account-profile rounded-circle mb-7" src="${path}/asset/images/profile-6.png" alt="" />
							  </label><br>
						</div>
					</div>

				</div>
                            <div class="col-xl-8">
                                <!-- Account details card-->
                                <div class="card mb-4">
                                    <div class="card-header">${member.name }님 정보 수정</div>
                                    <div class="card-body">

                                            <!-- Form Row-->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (사원 번호)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">사원 번호</label>
                                                    <input class="form-control" name="no" type="text"value="${member.no }" style="background-color: white" readonly />
                                                </div>
                                                <!-- Form Group (이름)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">이름</label>
                                                    <input class="form-control" name="name" type="text" placeholder="이름을 입력하세요" value="${member.name }" />
                                                </div>
                                            </div>
                                            <!-- Form Group (id(이메일 주소)-->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (회사명)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">아이디(이메일) </label>
                                                    <input class="form-control" name = "id" type="text"value="${member.id }" />
                                                </div>
                                                <!-- Form Group (연락처)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">연락처</label>
                                                    <input class="form-control" name="tel" type="text" placeholder="연락처를 입력하세요" value="${member.tel }" />
                                                </div>
                                            </div>
                                            <!-- Form Group (부서명)-->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (회사명)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">회사명 </label>
                                                    <input class="form-control" name="companyName" type="text"value="${member.companyName }" style="background-color: white" readonly />
													<input class="form-control" name="comno" type="hidden"value="${member.comno }" style="background-color: white" readonly />
                                                </div>
                                                <!-- Form Group (부서명)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">부서명</label>
	                                                <select class="form-select" aria-label="Default select example" name="dept">
	                                                	<option value = "${member.dept }">${member.dept }</option>
	                                                	<c:forEach var = "dl" items = "${dlist }">
	                                                    <option value="${dl.dept }">${dl.dept }</option>
	                                              		</c:forEach>
	                                                </select>
                                                </div>
                                            </div>
                                            <!--  직책과 회사 전화번호 -->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (회사 전화번호)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">회사 전화번호 </label>
                                                    <input class="form-control" type="text"value="${member.companyTel }" style="background-color: white" readonly />
                                                </div>
                                                <!-- Form Group (직책)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">직책</label>
	                                                <select class="form-select" aria-label="Default select example" name="mrg">
	                                                    <option value="${member.mrg }">${member.mrg }</option>
	                                                    <option value="부장">부장</option>
	                                                    <option value="차장">차장</option>
	                                                    <option value="과장">과장</option>
	                                                    <option value="대리">대리</option>
	                                                    <option value="사원">사원</option>
	                                                </select>
                                                </div>
                                            </div>
                                            <!-- Form Group (권한)-->
                                            <div class="mb-3">
                                                <label class="small mb-1">권한</label>
                                                <select class="form-select" aria-label="Default select example" name="auth">
                                                    <option value="${member.auth }">${member.auth }</option>
                                                    <option value="admin">admin</option>
                                                    <option value="PM">PM</option>
                                                    <option value="user">user</option>
                                                </select>
                                            </div>
                                            <!-- Submit button-->
                                            <button class="btn btn-primary" onclick="updateMember()" type="button">수정 완료</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </form>
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
        </div>
<script type="text/javascript">

	function updateMember(){
		if(confirm("수정하시겠습니까?")){
			var nameVal = $("[name=name]").val();
			if(nameVal == ""){
				alert("이름을 입력하세요");
				$("[name=name]").focus();
				return; // 프로세스를 중단 처리
			}
			var idVal = $("[name=id]").val();
			if(idVal == ""){
				alert("이메일을 입력하세요");
				$("[name=id]").focus();
				return; // 프로세스를 중단 처리
			}else{
				if(!email_check(idVal)){
					alert("이메일 형식에 맞게 입력해주세요");
					return false;
				}
			}
			function email_check(idVal) {
				var reg = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
				return reg.test(idVal);
			}
			
			var telVal = $("[name=tel]").val();
			if(telVal == ""){
				alert("개인 전화번호를 입력하세요");
				$("[name=tel]").focus();
				return; // 프로세스를 중단 처리
			}
			var companyNameVal = $("[name=companyName]").val();
			if(companyNameVal == ""){
				alert("회사명을 입력하세요");
				$("[name=companyName]").focus();
				return; // 프로세스를 중단 처리
			}
			var deptVal = $("[name=dept]").val();
			if(deptVal == ""){
				alert("부서명을 입력하세요");
				$("[name=dept]").focus();
				return; // 프로세스를 중단 처리
			}
			var mrgVal = $("[name=mrg]").val();
			if(mrgVal == ""){
				alert("직책을 입력하세요");
				$("[name=mrg]").focus();
				return; // 프로세스를 중단 처리
			}
			var authVal = $("[name=auth]").val();
			if(authVal == ""){
				alert("권한을 입력하세요");
				$("[name=auth]").focus();
				return; // 프로세스를 중단 처리
			}
			if($("input[name=memberimg]:radio:checked").length<1){
				alert("이미지를 선택하세요")
				return;
			}
			$("#frm1").attr("action","${path}/updateMember.do");
			$("#frm1").submit();
		}
	}
	var proc="${proc}"
		if(proc=="upt"){
			if(confirm("수정성공\n조회리스트 화면으로 이동하시겠습니까?")){
				location.href="${path}/memberlist.do";
			}
		}
		if(proc=="del"){
				alert("삭제성공! 조회리스트로 이동!");
				location.href="${path}/boardlist.do";
		}
</script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${path }/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
    </body>
</html>
