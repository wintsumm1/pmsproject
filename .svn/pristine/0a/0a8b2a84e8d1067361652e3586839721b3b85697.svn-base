<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>   

<!DOCTYPE html>
<html>
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
	   // 
	   /*
	   
		let ranValue1 = ['1','2','3','4','5','6','7','8','9','0'];
		let ranValue2 = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
		let ranValue3 = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
		let ranValue4 = ['!','@','#','$','%','^','&','*','(',')'];
		
		var pass = "";
		
		for(i=0 ; i<2; i++) {
			let ranPick1 = Math.floor(Math.random() * ranValue1.length);
			let ranPick2 = Math.floor(Math.random() * ranValue2.length);
			let ranPick3 = Math.floor(Math.random() * ranValue3.length);
			let ranPick4 = Math.floor(Math.random() * ranValue4.length);
			pass = pass + ranValue1[ranPick1] + ranValue2[ranPick2] + ranValue3[ranPick3] + ranValue4[ranPick4];
		}
		$('input[name=pass]').attr('value',pass);
		*/
		// 아이디 중복 검사
			   $("#checkId").click(function () {
				   $.ajax({
					   type: "post",
					   url: "${path}/idcheck.do",
					   data : "id="+$("[name=id]").val(),
					   dataType: "json",
					   success: function (result) {
						   var msg = result.ckID
						   alert(msg)
						   if(msg=="사용 가능한 아이디 입니다."){
							   $('input[name=msg]').attr('value',"Y");
						   }else{
							   $('input[name=msg]').attr('value',"N");
						   }
			            },
			            error: function (err) {
			            	alert("실패")
			                console.log(err)
			            }
				   })
			   })
		
		   
		});
</script>

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
                                            사원 등록
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">
                                        <a class="btn btn-sm btn-light text-primary" href="${path}/memberlist.do">
                                            <i class="me-1" data-feather="arrow-left"></i>
                                            사원 리스트 페이지로 이동
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
                                    <div class="card-header">신입 사원 등록</div>
                                    <div class="card-body">

                                            <!-- Form Row-->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (이름)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">이름</label>
                                                    <input class="form-control" name="name" placeholder="이름을 입력하세요"type="text" value=""/>
                                                    <%-- 
                                                    <input type="hidden" name="pass" id="pass" value="">
                                                    --%>
                                                </div>
                                                <!-- Form Group (이메일)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">이메일</label>
                                                    <input class="form-control" name="id" type="text" placeholder="이메일을 입력하세요" value="" />
                                           		    <button class="btn btn-primary" id="checkId" type="button">아이디 중복 확인</button>
                                                </div>
                                            </div>
                                            <!-- Form Group (id(이메일 주소)-->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (개인 연락처)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">개인 연락처</label>
                                                    <input class="form-control" type="text" name ="tel" placeholder="연락처를 입력하세요"value=""/>
                                                </div>
                                                <!-- Form Group (회사명)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">회사명</label>
                                                    <input class="form-control" name="companyName" type="text" placeholder="회사명을 입력하세요" value="${login.companyName }" style="background-color: white" readonly />
                                                    <%-- 
                                                    <input class="form-control" name="comno" type="hidden" value="${login.comno }" style="background-color: white" readonly />
                                                    --%>
                                                </div>
                                            </div>
                                            <!-- Form Group (부서명)-->
                                            <div class="row gx-3 mb-3">
                                                <!-- Form Group (부서명)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">부서명</label>
	                                                <select class="form-select" aria-label="Default select example" name="dept">
	                                                	<c:forEach var = "dl" items = "${dlist }">
	                                                    <option value="${dl.dept }">${dl.dept }</option>
	                                              		</c:forEach>
	                                                </select>
                                                </div>
                                                <!-- Form Group (직책)-->
                                                <div class="col-md-6">
                                                    <label class="small mb-1">직책</label>
	                                                <select class="form-select" aria-label="Default select example" name="mrg">
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
                                                    <option value="admin">admin</option>
                                                    <option value="PM">PM</option>
                                                    <option value="user">user</option>
                                                </select>
                                            </div>
                                            <%-- 
											<div>
											<input class="form-control" name="receiver" id="inputEmailAddress" type="hidden" value="${login.id }"/>
											</div>
											--%>
                                            <!-- Submit button-->
                                            <button class="btn btn-primary" id="checkId2" onclick="insertMember()" type="button">등록 완료</button>
                                            <%--
                                            <a type="button" id="checkEmail" class="btn btn-primary" href="${path}/mailForm1.do">이메일 전송</a>
                                             --%>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</form>
                </main>
<script type="text/javascript">
	var isInsert = "${isInsert}"
		if(isInsert=="Y"){
			if(!confirm("등록성공했습니다\n게속 등록하시겠습니까?")){
				//취소 입력시 조회화면 이동..
				location.href="${path}/memberlist.do"
			}
		}
	function insertMember() {
		var msgVal = $("[name=msg]").val();
			
		
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
		if(confirm("등록하시겠습니까?")){
			$.ajax({
				type: "post",
				url: "${path}/memberSender3.do",
				data :  $('#frm1').serialize(),
				dataType: "json",
				success: function (result) {
			       	var msg = result.ckID
			       	alert(msg)
					<%--
					$("#frm1").attr("action","${path}/updateMember.do");
					$("#frm1").submit();
					--%>
				},
				error: function (err) {
					console.log(err)
					alert("실패")
				}
			})
		}
	}
</script>
                <footer class="footer-admin mt-auto footer-light">
                    <div class="container-xl px-4">
                        <div class="row">
                            <div class="col-md-6 small">Copyright &copy; ISAAC PMS 2022</div>
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

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${path }/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
    </body>
</html>
