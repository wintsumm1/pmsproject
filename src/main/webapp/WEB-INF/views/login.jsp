<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
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
<script src="${path}/a00_com/jquery-ui.js"></script>
<script
	src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api"
	type="text/javascript"></script>
<script type="text/javascript">
   $(document).ready(function(){
	   $("#pass").keydown(function(key){
		    if (key.keyCode == 13) {
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
			if(pass.value!=null){//비밀번호 유효성검사
				if(pass.value==""){
					alert("비밀번호를 입력해주세요")
					pass.focus()
					return
				}else{
					if(pass.value.length<4 || pass.value.length>21){
						alert("비밀번호는 5~20자리여야합니다")
						pass.value=""
							pass.focus()
						return
					}
				}
			}
			
			loginAjax()
					   
		   	} 
		})
		
		
		$("#canlog").click(function(){
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
			if(pass.value!=null){//비밀번호 유효성검사
				if(pass.value==""){
					alert("비밀번호를 입력해주세요")
					pass.focus()
					return
				}else{
					if(pass.value.length<4 || pass.value.length>21){
						alert("비밀번호는 5~20자리여야합니다")
						pass.value=""
							pass.focus()
						return
					}
				}
			}
		   
			loginAjax()
		})
		
		
		function loginAjax() {
		   $.ajax({
			   type: "post",
			   url: "${path}/login88.do", 
		       data: {
		    	    id:$("#id").val(),
     				pass:$("#pass").val()
		       },
			   dataType: "json",
			   success: function (result) {
				   var msg = result.msg
				   alert(msg)
				   
				   if(result.proc == "1") {
					   location.href="${path}/main.do";
				   } else if(result.proc == "0") {
					   location.href="${path}/login.do";
				   }
	            },
	            error: function (err) {
	            	alert("로그인 하셔")
	                console.log(err)
	            }
			   
		   })
	   }
		
   });
</script>
<script type="text/javascript">

</script>

<script type="text/javascript">
	$("").click(function(){
	    $("#no-id-alert-danger").hide();
	    $("#id-alert-success").hide();
		$("#id-alert-danger").hide();
	    $("#idCheck").click(function(){
		    $.ajax({
		        type: 'GET',
		        data: {
		            "userid": $("#id").val()},
		        url : "login.do",
		        success : function(data) {
			        console.log(data);
			        var userid = $("#id").val();
		            if(!userid || userid.length<7 || userid.length>14 ){
		            	$("#no-id-alert-danger").show();
		            	$("#id-alert-success").hide();
		            	$("#id-alert-danger").hide();
		            }else if(data=='0') {
			            $("#no-id-alert-danger").hide();
		            	$("#id-alert-success").show();
						$("#id-alert-danger").hide();
		            } else if (data=="1") {
		            	$("#no-id-alert-danger").hide();
		            	$("#id-alert-success").hide();
						$("#id-alert-danger").show();
		            } 
		        }
		    })
		})
	});
</script>

<script type="text/javascript">
/*
function canLog(){
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

	for(var i=0; i<id.value.length; i++){
		var ch = id.value.charAt(i);
		if((ch<'a' || ch>'z')){
			alert("아이디는 영문 소문자로만 입력 가능합니다")
			id.focus();
			return
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
	  
	 // $("form").submit() 
}
*/
</script>

</head>
<body class="bg-primary">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container-xl px-4">
					<div class="row justify-content-center">
						<div class="col-xl-5 col-lg-6 col-md-8 col-sm-11">
							<!-- Social login form-->
							<div class="card my-5">
								<div class="card-body p-5 text-center">
									<div class="h3 fw-light mb-3">Sign In</div>
									<h2></h2>
									<!-- Social login links-->
								</div>
								<hr class="my-0" />
								<div class="card-body p-5">
									<!-- Login form-->
									<form action="${path}/login88.do" id="login_form" method="post">
										<!-- Form Group (email address)-->
										<div class="mb-3">
											<label class="text-gray-600 small" for="emailExample">USER
												ID</label> 
												<input id="id" class="form-control form-control-solid"
												type="text" name="id" required="required" aria-label="User ID"
												 value="${member.id }"/>
										</div>
										<!-- Form Group (password)-->
										<div class="mb-3">
											<label class="text-gray-600 small" for="passwordExample">Password</label>
											<input id="pass" class="form-control form-control-solid"
												onkeyup="enterkey()" name="pass" type="password" aria-label="Password"
												aria-describedby="passwordExample" value="${member.pass }" />
										</div>
										<!-- Form Group (forgot password link)-->
										<div class="mb-3">
											<a class="small" href="${path}/mailForm1.do">Forgot your
												password? </a>
										</div>
										<!-- Form Group (login box)-->
										<div
											class="d-flex align-items-center justify-content-between mb-0">
											<div class="form-check">
											</div>
											<a type="button" id = "canlog" name ="canlog" class="btn btn-primary">Login</a>
										</div>
										<br>
										<%-- 
										<div class="d-flex align-items-center justify-content-between mb-0">
											<a class="" href=""> <img
												src="${path}/a00_com/images/google.png" alt="" width="200"
												height="50" /></a> <a class="" href=""><img
												src="${path}/a00_com/images/kakao.png" alt="" width="200"
												height="50" /></a>
										</div>
										--%>
									</form>
								</div>
								<hr class="my-0" />
								<div class="card-body px-5 py-4">
									<div class="small text-center">
										New user? <a href="${path}/mailForm.do">Send Email!</a>
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
						<div class="col-md-6 small">Copyright &copy; ISAAC PMS
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
	<script type="text/javascript">
	</script>
</body>
</html>