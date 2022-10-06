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
    
    <%-- bootstrap --%>
<link rel="stylesheet"
	href="${path}/a01_com_lib/sb-admin-pro_no-source/dist/css/styles.css">
<script
	src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.17.1/components/prism-core.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/prism/1.17.1/plugins/autoloader/prism-autoloader.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

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
                                            <div class="page-header-icon"><i data-feather="globe"></i></div>
                                            회사 관리자
                                        </h1>
                                    </div>
                                    <div class="col-12 col-xl-auto mb-3">
                                        <a class="btn btn-sm btn-light text-primary" href="${path }/memberlist.do">
                                            <i class="me-1" data-feather="user"></i>
                                            사원 리스트로 이동
                                        </a>
                                        <a class="btn btn-sm btn-light text-primary" href="${path }/groupList.do">
                                            <i class="me-1" data-feather="users"></i>
                                           부서 리스트로 이동
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-fluid px-4">
                        <div class="card bg-gradient-primary-to-secondary mb-4">
                            <div class="card-body">
                                <div class="d-flex align-items-center justify-content-between">
                                    <div class="me-3">
                                        <div class="small text-white-50">Organization Name:</div>
                                        <div class="h1 text-white">프로젝트 멤버</div>
                                    </div>
                                    <div class="text-white">총인원 : ${orgGrouplist[0].countGroup }Member(s)</div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <div class="small text-muted mb-2">admin:</div>
                                <div class="row">
                                <c:forEach var = "gl" items="${orgGrouplist }">
                                    <div class="col-lg-4">
                                        <div class="d-flex align-items-center">
                                            <div class="avatar avatar-lg"><img class="avatar-img img-fluid" src="${gl.memberimg }" /></div>
                                            <div class="ms-3">
                                                <div class="fs-4 text-dark fw-500">${gl.name }(${gl.companyName })</div>
                                                <div class="small text-muted">${gl.auth }</div>
                                            </div>
                                        </div>
                                    </div>
                                    </c:forEach>
                                </div>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
<script type="text/javascript">
    calDuration(10)
</script>
</html>
