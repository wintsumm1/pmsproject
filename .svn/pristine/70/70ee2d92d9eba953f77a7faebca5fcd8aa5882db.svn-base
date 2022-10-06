<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
  	<%@include file="side_bar.jsp" %>
            <div id="layoutSidenav_content">
                <main>
                    <header class="page-header page-header-dark bg-gradient-primary-to-secondary mb-4">
                        <div class="container-xl px-4">
                            <div class="page-header-content pt-4">
                                <div class="row align-items-center justify-content-between">
                                    <div class="col-auto mt-4">
                                        <h1 class="page-header-title">
                                            <div class="page-header-icon"><i data-feather="life-buoy"></i></div>
                                            Notice
                                        </h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <!-- Main page content-->
                    <div class="container-xl px-4">
                        <!-- Knowledge base article-->
                        <div class="card mb-4">
                            <div class="card-header d-flex align-items-center">
                                <a class="btn btn-transparent-dark btn-icon" id="back_menu" href="${path}/notice.do"><i data-feather="arrow-left"></i></a>
                                <div class="ms-3"><h2 class="my-3">${notice.title}</h2></div>
                            </div>
                            <div class="card-body">
                            	<p class="lead">${notice.preview}</p>
                            	<br>
                                <h4>내용</h4>
                                <p class="lead mb-4">${notice.contents}</p>
                                <p class="lead mb-5" style="text-align:right; font-size:15px;">작성자: ${notice.name}</p>
                                <div class="alert alert-primary alert-icon mb-0" role="alert">
                                    <div class="alert-icon-aside"><i data-feather="alert-triangle"></i></div>
                                    <div class="alert-icon-content">
                                        <h5 class="alert-heading">Alert</h5>
                                        공지사항을 충분히 숙지해주시길 바랍니다.
                                    </div>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${path}/a01_com_lib/sb-admin-pro_no-source/dist/js/datatables/datatables-simple-demo.js"></script>
        <script>
        if("${login.auth}" == 'PM' || "${login.auth}" == 'admin'){
        	console.log("${login.auth} 관리자 로그인");
        	$("#back_menu").attr('href','${path}/noticeAdmin.do');
        }
        </script>
    </body>
</html>
