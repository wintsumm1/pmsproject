<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>   

<!DOCTYPE html>
    <head>
    	<!--  jquery -->
		<script src="${path}/a00_com/jquery.min.js"></script>
		<script src="${path}/a00_com/popper.min.js"></script>
		<script src="${path}/a00_com/bootstrap.min.js"></script>
		<script src="${path}/a00_com/jquery-ui.js"></script>
    
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
        <script src="${path}/a02_com_fun/calDuration.js"></script>
    </head>

    <%@include file="side_bar.jsp" %>
            <div id="layoutSidenav_content">
                <main>
                    <header class="page-header page-header-compact page-header-light border-bottom bg-white mb-4">
                        <div class="container-fluid px-4">
                            <div class="page-header-content">
                                <div class="row align-items-center justify-content-between pt-3">
                                    <div class="col-auto mb-3">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="user"></i></div>
                                            사원 정보 리스트
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">
                                        <a class="btn btn-sm btn-light text-primary" href="${path}/groupList.do">
                                            <i class="me-1" data-feather="users"></i>
                                            부서 리스트로 이동
                                        </a>
                                        <a class="btn btn-sm btn-light text-primary" onclick="goInsert()">
                                            <i class="me-1" data-feather="user-plus"></i>
                                           사원정보 추가
                                        </a>
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
                                            <th>사원번호</th>
                                            <th>이름</th>
                                            <th>아이디(이메일)</th>
                                            <th>권한</th>
                                            <th>회사명</th>
                                            <th>부서명</th>
                                            <th>직책</th>
                                            <th>전화번호</th>
                                            <th>수정 및 삭제</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>사원번호</th>
                                            <th>이름</th>
                                            <th>아이디(이메일)</th>
                                            <th>권한</th>
                                            <th>회사명</th>
                                            <th>부서명</th>
                                            <th>직책</th>
                                            <th>전화번호</th>
                                            <th>수정 및 삭제</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>

                                    <c:forEach var="ml" items="${mlist }">
                                        <tr id="memtr">
                                        	<td>${ml.no }</td>
                                            <td>
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar me-2"><img class="avatar-img img-fluid" src="${ml.memberimg }"/></div>
                                                    ${ml.name }
                                                </div>
                                            </td>
                                            <td>${ml.id }</td>
                                            <td>${ml.auth }</td>
                                            <td id="companytd">${ml.companyName }</td>
                                            <td>
                                                <span class="badge bg-green-soft text-green">${ml.dept }</span>
                                            </td>
                                            <td>${ml.mrg }</td>
                                            <td>${ml.tel }</td>
                                            <td>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark me-2" onclick="goDetail(${ml.no})"><i data-feather="edit"></i></a>
                                                <a class="btn btn-datatable btn-icon btn-transparent-dark" onclick="deleteMember(${ml.no},'${ml.name}')"><i data-feather="trash-2"></i></a>
                                            </td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
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
<script type="text/javascript">
	calDuration(8)
	function goInsert(){
		if("${login.auth}"== 'admin'|| "${login.auth}"=='PM'){
			location.href="${path}/insertMemberForm.do";
		}else{
			alert("admin과 PM만 신입 사원 등록을 할 수 있습니다.")
		}
	}
	function goDetail(no){
		if("${login.auth}"== 'admin'|| "${login.auth}"=='PM'){
			location.href="${path}/memberDetail.do?no="+no;
		}else{
			alert("admin과 PM만 수정할 수 있습니다.")
		}

	}
	function deleteMember(no,name){
		if("${login.auth}"== 'admin'|| "${login.auth}"=='PM'){
			if(confirm("삭제하시겠습니까?")){ 
				location.href="${path}/deleteMember.do?no="+no+"&name="+name;
				}
		}else{
			alert("admin과 PM만 삭제할 수 있습니다.")
		}

	}
	var proc="${proc}"
		if(proc=="del"){
				alert("삭제성공! 사원리스트로 이동!");
				location.href="${path}/memberlist.do";
		}

</script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${path }/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${path }/a01_com_lib/sb-admin-pro_no-source/dist/js/datatables/datatables-simple-demo.js"></script>
    </body>
</html>
