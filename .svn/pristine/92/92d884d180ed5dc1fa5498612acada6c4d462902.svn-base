<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<style>
td {
	text-align: center;
}
</style>
<%-- bootstrap --%>
<link rel="stylesheet"
	href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/css/styles.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script
	src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"
	crossorigin="anonymous"></script>
<script
	src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/demo/chart-area-demo.js"></script>
<script
	src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/demo/chart-pie-demo.js"></script>
<script
	src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
	crossorigin="anonymous"></script>
<script
	src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/datatables/datatables-simple-demo.js"></script>
<%-- jquery --%>
<script type="text/javascript" src="${path}/a00_com/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<script type="text/javascript" src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
   $(document).ready(function(){
      <%-- 
      
      --%>
      for (var i = 0; i < 6; i++) {
	      if ( "${login.memberimg}" == $("[name=memberimg]").eq(i).val() ) {
	    	  $("[name=memberimg]").eq(i).attr("checked", true)
	      } else {
	    	  $("[name=memberimg]").eq(i).attr("checked", false)
	      }
      }
   });
</script>

<script type="text/javascript">
function passConfirm() {
		var password = document.querySelector('#pass');					//비밀번호 
		var passwordConfirm = document.querySelector('#passwordConfirm');	//비밀번호 확인 값
		var confrimMsg = document.querySelector('#confirmMsg');				//확인 메세지
		var correctColor = "#00ff00";	
		var wrongColor ="#ff0000";	
		
		if($("input[name=memberimg]:radio:checked").length<1){
			alert("이미지를 선택하세요")
			return;
		}else{
		if(password.value == "" || passwordConfirm.value==""){
			alert("비밀번호를 입력해주세요.")
		} else {
			if(password.value == passwordConfirm.value){
				alert("수정완료")
				$("#frm1").attr("action","${path}/updateaccount.do");
				$("#frm1").submit();
				
			} else {
				alert("비밀번호 불일치")
			}
		}
	}
	}
	
	
</script>
</head>
<%@include file="side_bar.jsp"%>
<div id="layoutSidenav_content">
	<body>
		<div class="container-xl px-4 mt-4">
			<hr class="mt-0 mb-4" />
			<form id="frm1">
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
						<div class="card-header">Show Info</div>
						<div class="card-body">
							
								<!-- Form Group (username)-->
								<div class="mb-3">
									<label class="small mb-1" for="id">UserID</label> <input
										class="form-control" id="id" name="id" type="text" value="${login.id }" readonly />
								</div>
								<!-- Form Row-->
								<div class="row gx-3 mb-3">
									<!-- Form Group (first name)-->
									<div class="col-md-6">
										<label class="small mb-1" for="no">No</label> <input
											class="form-control" id="no" type="text" value="${login.no }"readonly />
									</div>
									<!-- Form Group (last name)-->
									<div class="col-md-6">
										<label class="small mb-1" for="name">Name</label> <input
											class="form-control" id="name" type="text"
											value="${login.name }" readonly/>
									</div>
								</div>
								<!-- Form Row        -->
								<div class="row gx-3 mb-3">
									<!-- Form Group (organization name)-->
									<div class="col-md-6">
										<label class="small mb-1" for="dept">Dept</label> <input
											class="form-control" id="dept" type="text"
											value="${login.dept }" readonly/>
									</div>
									<!-- Form Group (location)-->
									<div class="col-md-6">
										<label class="small mb-1" for="companyName">CompanyName</label>
										<input class="form-control" id="companyName" type="text"
											value="${login.companyName }" readonly/>
									</div>
								</div>
								<!-- Form Row-->
								<div class="row gx-3 mb-3">
									<!-- Form Group (phone number)-->
									<div class="col-md-6">
										<label class="small mb-1" for="tel">Phone number</label> <input
											class="form-control" id="tel" type="tel"
											value="${login.tel }" readonly/>
									</div>
									<!-- Form Group (birthday)-->
									<div class="col-md-6">
										<label class="small mb-1" for="companyTel">CompanyTel</label>
										<input class="form-control" id="companyTel" type="tel"
											value="${login.companyTel }" readonly />
									</div>
								</div>
								<div class="row gx-3 mb-3">
									<div class="col-md-6">
										<label class="small mb-1" for="memberPw1">Password</label> <input
											type="password" id="pass" name="pass" class="form-control"
											placeholder="새 비밀번호" value="${login.pass }" />
									</div>
									<div class="col-md-6">
										<label class="small mb-1" for="memberPw2">PasswordConfirm</label>
										<input type="password" id="passwordConfirm" class="form-control"
											placeholder="새 비밀번호 확인" value="${login.pass }" />
									</div>
								</div>
								<!-- Save changes button-->
								<button class="btn btn-primary"
									type="button" onclick="passConfirm()" >Info changes</button>
						</div>
					</div>
				</div>
			</div>
			</form>
		</div>

	</body>
</div>
</html>