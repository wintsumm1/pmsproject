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
<%-- bootstrap --%>
<link rel="stylesheet"
	href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/css/styles.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<style>
td {
	text-align: center;
}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script
	src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api"
	type="text/javascript"></script>
<script type="text/javascript">
   $(document).ready(function(){
      <%-- 
       var insertMsg="${insertMsg}";
      if(insertMsg!=""){
    	  alert(insertMsg);
      }
      --%>   
  		
  		$("#sumbitBtn").click(function () {
  			if ($("#checkTerms").is(":checked") == true) {
  				alert("메일발송 성공")
  				$("form").submit()
  			} else {
  				alert("이용약관에 동의해 주세요")
  			}
  		})
      $("#checkTerms").click(checkedChange);
	   function checkedChange() {
	       if($(this).prop("checked")){
	           $("label[for="+this.id+"]").text("동의되었습니다.");
	           $("label[for="+this.id+"]").css("color","blue");
	       }else{
	           $("label[for="+this.id+"]").text("동의 해주시기 바랍니다.");
	           $("label[for="+this.id+"]").css("color","red");
	       }
	   }

	  
   });
</script>
<%-- 
<script type="text/javascript">
function goMain(){
	
	location.href="";
}
 function goInsert(){	
		location.href="${path}/Insert.do"
	}

function canLog(){
	var id = document.querySelector("#id")
	if(id != null && id.value!=null){
		if(id.value==""){
			alert("아이디를 입력해주세요")
			id.focus();
			return
		}else{
			if(id.value.length<4 || id.value.length>21){
				alert("id는 5~20자만 입력가능합니다")
				id.focus()
				return
			}
		}
	}
	
	var pw = document.querySelector("#pass")
	if(pw.value!=null){//비밀번호 유효성검사
		if(pw.value==""){
			alert("비밀번호를 입력해주세요")
			pw.focus()
			return
		}else{
			if(pw.value.length<4 || pw.value.length>21){
				alert("비밀번호는 5~20자리여야합니다")
				pw.value=""
				pw.focus()
				return
			}
		}
	}
	
	$("form").submit()

	
}



</script>
--%>
</head>
<body class="bg-primary">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container-xl px-4">
					<div class="row justify-content-center">
						<div class="col-xl-8 col-lg-9">
							<!-- Social registration form-->
							<div class="card my-5">
								<div class="card-body p-5 text-center">
									<div class="h3 fw-light mb-3">Create an Account</div>
									<div class="small text-muted mb-2">Sign in using...</div>
									<!-- Social registration links-->
								</div>
								<hr class="my-0" />
								<div class="card-body p-5">
									<div class="text-center small text-muted mb-4">...or
										enter your information below.</div>
									<!-- Login form-->
									<form id="login" method="post" action="${path}/mailSender.do">
										<!-- Form Row-->
										<div class="row gx-3">
											<div class="col-md-6">
												<div class="mb-3">
													<label class="text-gray-600 small" for="firstNameExample">
													</label> <input id="receiver"
														class="form-control form-control-solid" type="hidden"
														placeholder="" aria-label="ID" name="receiver"
														value="jm970113@gmail.com" readonly
														aria-describedby="firstNameExample"
														placeholder="수신자 메일 주소를 입력하세요" />
												</div>
											</div>
											<%-- 
												<div class="mb-3" name="sender">
													<label class="text-gray-600 small" for="lastNameExample">
														발신자(E-mail)</label> <input id="sender"
														class="form-control form-control-solid" type="text"
														placeholder=""
														aria-describedby="lastNameExample" value=""/>
												</div>
												--%>
												<div class="mb-3">
													<label class="text-gray-600 small" for="firstNameExample">제목
													</label> <input id="title" class="form-control form-control-solid"
														type="text" placeholder="" aria-label="ID"
														name="title" aria-describedby="firstNameExample" value="" />
												</div>

											<!-- Form Group (email address)-->
											<%-- 
										<div class="mb-3"> 한줄 제목
											<label class="text-gray-600 small" for="emailExample">제목
												</label> <input id="title" class="form-control form-control-solid"
												type="text" placeholder="" aria-label="Email Address"
												aria-describedby="emailExample" name="title" placeholder="제목을 입력하세요" />
										</div>
										<!-- Form Row--> 패스워드
										<div class="row gx-3">
											<div class="col-md-6">
												<!-- Form Group (choose password)-->
												<div class="mb-3">
													<label class="text-gray-600 small" for="passwordExample">이름</label>
													<input id="pass" class="form-control form-control-solid"
														type="password" placeholder="" aria-label="Password"
														aria-describedby="passwordExample" name="pass" value=""
														/>
												</div>
											</div>
											--%>
											<%-- 
											<div class="col-md-6">
												<div class="mb-3">
													<label class="text-gray-600 small" for="firstNameExample">전화번호
													(-까지 입력해주세요)
													</label> <input class="form-control form-control-solid" type="tel"
														placeholder="" aria-label="ID" id=tel name="tel"
														aria-describedby="firstNameExample"/>
												</div>
											</div>

											<div class="col-md-6">
												<!-- Form Group (first name)-->
												<div class="mb-3">
													<label class="text-gray-600 small" for="firstNameExample">부서
													</label> <input class="form-control form-control-solid" type="text"
														placeholder="" aria-label="ID" id=tel name="tel"
														aria-describedby="firstNameExample" value="" />
												</div>
											</div>

											<div class="col-md-6">
												<!-- Form Group (first name)-->
												<div class="mb-3">
													<label class="text-gray-600 small" for="firstNameExample">빈곳
													</label> <input class="form-control form-control-solid" type="text"
														placeholder="" aria-label="ID" id=tel name="tel"
														aria-describedby="firstNameExample" value="" />
												</div>
											</div>
											--%>
											
											<div class="mb-3">
												<label class="text-gray-600 small" for="emailExample">추가내용
												</label>
											<textarea align="left" name="content" rows="10" class="form-control">
이름:
이메일: 
전화번호(-까지 입력해주세요):
부서명:
직책:</textarea>
											</div>
							</div>
							<!-- Form Group (form submission)-->
							<div class="d-flex align-items-center justify-content-between">
								<div class="form-check">
									<input class="form-check-input" id="checkTerms" type="checkbox"
										value="" name="checkTerms" /> <label class="form-check-label"
										for="checkTerms"> 이용약관 &amp; 개인정보취급방침 </label>
								</div>
									<div>
								<button id="sumbitBtn" type="button" class="btn btn-primary">메일발송</button>
							</div>	
							</div>
							</form>
						</div>
						<hr class="my-0" />
						<div class="card-body px-5 py-4">
							<div class="small text-center">
								Have an account? <a href="${path}/login.do">Sign in!</a>
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>
	</main>
	</div>
	<div id="layoutAuthentication_footer">
		<footer class="footer-admin mt-auto footer-dark">
			<div class="container-xl px-4">
				<div class="row">
					<div class="col-md-6 small">Copyright &copy; Your Website
						2021</div>
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
	<script src="js/scripts.js"></script>
</body>
</html>